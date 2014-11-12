object frmLogClassStat: TfrmLogClassStat
  Left = 161
  Top = 101
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Timmerstatistik'
  ClientHeight = 600
  ClientWidth = 933
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 133
    Width = 933
    Height = 4
    Cursor = crVSplit
    Align = alTop
    Color = clMaroon
    ParentColor = False
  end
  object PanelFilterMain: TPanel
    Left = 0
    Top = 0
    Width = 933
    Height = 133
    Align = alTop
    BevelOuter = bvNone
    Constraints.MinHeight = 31
    TabOrder = 0
    object PanelProdFilter: TPanel
      Left = 0
      Top = 88
      Width = 933
      Height = 45
      Align = alClient
      TabOrder = 0
      DesignSize = (
        933
        45)
      object grdSpecies: TdxDBGrid
        Left = 423
        Top = 3
        Width = 154
        Height = 37
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        SummaryGroups = <>
        SummarySeparator = ', '
        PopupMenu = pmSpecies
        TabOrder = 3
        DataSource = ds_Species
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        Anchors = [akLeft, akTop, akBottom]
        object grdSpeciesSpeciesName: TdxDBGridLookupColumn
          Caption = 'TR'#196'SLAG'
          Width = 132
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SpeciesName'
        end
        object grdSpeciesSpeciesNo: TdxDBGridMaskColumn
          Visible = False
          Width = 149
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SpeciesNo'
        end
      end
      object grdInmatningsKV: TdxDBGrid
        Left = 587
        Top = 3
        Width = 151
        Height = 37
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        SummaryGroups = <>
        SummarySeparator = ', '
        PopupMenu = pmInmatningsKV
        TabOrder = 4
        DataSource = ds_InmatningsKV
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        Anchors = [akLeft, akTop, akBottom]
        object grdInmatningsKVGradeName: TdxDBGridLookupColumn
          Width = 129
          BandIndex = 0
          RowIndex = 0
          FieldName = 'GradeName'
        end
        object grdInmatningsKVInmatningsKVNo: TdxDBGridMaskColumn
          Visible = False
          Width = 85
          BandIndex = 0
          RowIndex = 0
          FieldName = 'InmatningsKVNo'
        end
      end
      object grdSorteringsKV: TdxDBGrid
        Left = 741
        Top = 3
        Width = 151
        Height = 37
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        SummaryGroups = <>
        SummarySeparator = ', '
        PopupMenu = pmSorteringsKV
        TabOrder = 5
        DataSource = ds_SorteringsKV
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        Anchors = [akLeft, akTop, akBottom]
        object grdSorteringsKVSorteringsKVNamn: TdxDBGridLookupColumn
          Width = 131
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SorteringsKVNamn'
        end
      end
      object grdLogClass: TdxDBGrid
        Left = 146
        Top = 3
        Width = 111
        Height = 37
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        SummaryGroups = <>
        SummarySeparator = ', '
        PopupMenu = pmLogClass
        TabOrder = 1
        DataSource = dsLogClass
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        Anchors = [akLeft, akTop, akBottom]
        object grdLogClassTIMMERKLASS: TdxDBGridLookupColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TIMMERKLASS'
        end
        object grdLogClassLogClassNo: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LogClassNo'
        end
      end
      object grdLogSupplier: TdxDBGrid
        Left = 8
        Top = 3
        Width = 136
        Height = 37
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        SummaryGroups = <>
        SummarySeparator = ', '
        PopupMenu = pmLogSupplier
        TabOrder = 0
        DataSource = dsLogSupplier
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        Anchors = [akLeft, akTop, akBottom]
        object grdLogSupplierLEVERANTR: TdxDBGridLookupColumn
          Width = 113
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LEVERANT'#214'R'
        end
      end
      object grdDiaClass: TdxDBGrid
        Left = 258
        Top = 3
        Width = 154
        Height = 37
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        SummaryGroups = <>
        SummarySeparator = ', '
        PopupMenu = pmDiaClass
        TabOrder = 2
        DataSource = dsmtDiaClass
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        Anchors = [akLeft, akTop, akBottom]
        object grdDiaClassDIAMETERKLASS: TdxDBGridLookupColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DIAMETERKLASS'
        end
        object grdDiaClassDiaClassNo: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DiaClassNo'
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 933
      Height = 88
      Align = alTop
      TabOrder = 1
      DesignSize = (
        933
        88)
      object Label3: TLabel
        Left = 124
        Top = 36
        Width = 39
        Height = 13
        Caption = 'M'#229'n/'#197'r:'
      end
      object Label1: TLabel
        Left = 169
        Top = 15
        Width = 44
        Height = 13
        Caption = 'PERIOD:'
      end
      object Label2: TLabel
        Left = 298
        Top = 15
        Width = 24
        Height = 13
        Caption = 'TOM'
      end
      object Label5: TLabel
        Left = 124
        Top = 57
        Width = 34
        Height = 13
        Caption = 'Datum:'
      end
      object cbMonthStart: TcxComboBox
        Left = 171
        Top = 30
        Properties.Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12')
        Properties.OnChange = cbMonthStartPropertiesChange
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 0
        Text = '10'
        Width = 57
      end
      object cbYearStart: TcxComboBox
        Left = 235
        Top = 30
        Properties.Items.Strings = (
          '2005'
          '2006')
        Properties.OnChange = cbYearStartPropertiesChange
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 1
        Text = '2005'
        Width = 57
      end
      object cbMonthEnd: TcxComboBox
        Left = 298
        Top = 30
        Properties.Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12')
        Properties.OnChange = cbMonthEndPropertiesChange
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 2
        Text = '10'
        Width = 57
      end
      object cbYearEnd: TcxComboBox
        Left = 362
        Top = 30
        Properties.Items.Strings = (
          '2005'
          '2006')
        Properties.OnChange = cbYearEndPropertiesChange
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 3
        Text = '2005'
        Width = 57
      end
      object EndDate: TcxDateEdit
        Left = 298
        Top = 51
        Properties.ImmediatePost = True
        Properties.Kind = ckDateTime
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 4
        Width = 121
      end
      object StartDate: TcxDateEdit
        Left = 171
        Top = 51
        Properties.DateButtons = [btnClear]
        Properties.ImmediatePost = True
        Properties.Kind = ckDateTime
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 5
        Width = 121
      end
      object bbCurrentMonth: TBitBtn
        Left = 8
        Top = 11
        Width = 110
        Height = 30
        Caption = 'Aktuell m'#229'nad'
        TabOrder = 6
        OnClick = bbCurrentMonthClick
      end
      object bbPreviousMonth: TBitBtn
        Left = 8
        Top = 40
        Width = 55
        Height = 30
        Caption = 'F'#246'reg.'
        TabOrder = 7
        OnClick = bbPreviousMonthClick
      end
      object BitBtn1: TBitBtn
        Left = 432
        Top = 8
        Width = 105
        Height = 65
        Action = acRefresh
        Caption = 'Uppdatera'
        TabOrder = 8
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000FF00FF00FF00
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
          FF0000C7D70000C7D70000419500FF00FF00FF00FF0000C7D70000C7D7000035
          7D00FF00FF00FF00FF0000C7D70000C7D70000398800FF00FF00FF00FF0000C7
          D70000C7D70000204A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000C7
          D70000C7D70000C7D70000C7D7000041950000C7D70000C7D70000C7D70000C7
          D70000357D0000C7D70000C7D70000C7D70000C7D7000039880000C7D70000C7
          D70000C7D70000C7D70000204A00FF00FF00FF00FF00FF00FF00FF00FF000047
          A80000C7D70000C7D700004195000041950000357D0000C7D70000C7D7000035
          7D00000000000039880000C7D70000C7D7000039880000398800002E6A0000C7
          D70000C7D70000275B000024550000204A00FF00FF00FF00FF00FF00FF00FF00
          FF000047A80000449F00003A8A00003A8A000000000000357D0000357D000032
          750000327500000000000039880000398800003680000036800000000000002E
          6A00002E6A00002E6A0000275B000024550000204A00FF00FF00FF00FF00FF00
          FF00FF00FF00003A8A0000C7D70000C7D70000357D00000000000032750000C7
          D70000C7D700002E6A00000000000036800000C7D70000C7D700003C8C000000
          0000002E6A00002E6A00002E6A0000275B000024550000204A00FF00FF00FF00
          FF00FF00FF0000C7D70000C7D70000C7D70000C7D70000357D0000C7D70000C7
          D70000C7D70000C7D700002E6A0000C7D70000C7D70000C7D70000C7D700003C
          8C0000000000002E6A00002E6A00002E6A0000275B0000245500FF00FF00FF00
          FF00FF00FF0000357D0000C7D70000C7D70000357D0000000000002E6A0000C7
          D70000C7D700002E6A00002E6A00003C8C0000C7D70000C7D700003C8C00003C
          8C00003C8C0000000000002E6A00002E6A00002E6A0000275B00FF00FF00FF00
          FF00FF00FF00FF00FF0000357D0000357D00003071000030710000000000002E
          6A00002E6A00002E6A000029620000000000003C8C00003C8C00003C8C00003C
          8C00003C8C00003C8C0000000000002E6A00002E6A00002E6A00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000030710000C7D70000C7D700003988000000
          0000002E6A000029620000C7D70000C7D70000000000003C8C00003C8C00003C
          8C00003C8C00003C8C00003C8C0000000000002E6A00002E6A00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000C7D70000C7D70000C7D70000C7D7000039
          880000357D0000C7D70000C7D70000C7D70000C7D70000000000003C8C00003C
          8C00003C8C00003C8C00003C8C00003C8C0000000000002E6A00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000047A80000C7D70000C7D700003988000039
          88000039880000357D0000C7D70000C7D70000357D0000357D0000000000003C
          8C00003C8C00003C8C00003C8C00003C8C00003C8C0000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000047A80000449F00003988000039
          8800003988000000000000357D0000357D0000357D0000357D0000357D000000
          0000003C8C00003C8C00003C8C00003C8C00003C8C00003C8C00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000047A80000449F0000C7
          D70000C7D700004195000000000000357D0000357D0000357D0000357D000035
          7D0000000000003C8C00003C8C00003C8C00003C8C00003C8C00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000C7D70000C7
          D70000C7D70000C7D700004195000000000000357D0000357D0000357D000035
          7D0000357D0000000000003C8C00003C8C00003C8C00003C8C00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000047A80000C7
          D70000C7D7000041950000419500004195000000000000357D0000357D000035
          7D0000357D0000357D0000000000003C8C00003C8C00003C8C00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000047
          A80000449F00004195000041950000419500004195000000000000357D000035
          7D0000357D0000357D0000357D0000000000003C8C00003C8C00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000047A80000449F0000419500004195000041950000419500000000000035
          7D0000357D0000357D0000357D0000357D0000000000003C8C00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000047A80000449F00004195000041950000419500004195000000
          000000357D0000357D0000357D0000357D0000357D0000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000047A80000449F000041950000419500004195000041
          95000000000000357D0000357D0000357D0000357D0000357D00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000047A80000449F0000419500004195000041
          9500004195000000000000357D0000357D0000357D0000357D00}
      end
      object BitBtn2: TBitBtn
        Left = 807
        Top = 8
        Width = 105
        Height = 65
        Action = acClose
        Anchors = [akTop, akRight]
        Caption = 'St'#228'ng'
        TabOrder = 9
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008C6363004242
          420042424200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF008C6363004242420042424200B55A0000B55A
          0000424242008C6363008C6363008C6363008C6363008C6363008C6363008C63
          63008C6363008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF008C63630042424200B55A0000B55A0000A5520800B55A0000C65A
          00004242420010AD840010AD840010AD840010AD840010AD840010AD840010AD
          840010AD84008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF008C636300B55A0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A
          00004242420010AD840010AD840010AD840010AD840010AD840018A57B0018A5
          7B0018A57B008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF008C636300C65A0000C65A0000C65A0000C65A0000C65A0000CE630000CE63
          00004242420010AD840018A57B0018A57B0018A57B00189C7B00189C73002194
          7300398C6B008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF008C636300C65A0000CE630000CE630000CE630000CE630000CE630000CE63
          0000424242002984630021947300219473002194730021946B00218C6B00298C
          6B0042846B008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF008C636300CE630000CE630000CE630000CE6B0000CE6B0000CE6B0000CE63
          00004242420029735A00218C6B00298C6B00298C6300298C6B00298463002984
          6300298C6B008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF008C636300CE630000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673
          000042424200298C6B002984630029845A00317B5A00317B5200317B5A003984
          5A00427B63008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF008C636300CE6B0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673
          000042424200316B4A00397B5200397B520031734A00397B52004A7B5A005A6B
          52005A6B52008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF008C636300D6730000D6730000D6730000D6730000FFD6A500FFE7C600FFBD
          6B00424242005A6B52005A6B520031734A00637B5200637B520094946B00B59C
          7300F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF008C636300D6730000D6730000D6730000D6730000D6730000FFD6A500D673
          000042424200F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B5
          8400F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF008C636300D6730000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
          000042424200F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B5
          8400F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF008C636300DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
          000042424200F7B58400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B5
          8400F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF008C636300DE7B0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B
          000042424200EFCEBD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7
          DE00F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF008C636300FF840000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B
          000042424200F7B58400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6
          A500F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF008C636300D6730000FF840000FF840000F7840000F77B0000EF7B0000EF7B
          000042424200F7B58400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B5
          8400F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00AD6B6300AD6B6300D6730000FF840000EF7B0000F7840000FF84
          000042424200F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B5
          8400F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00AD6B6300AD6B6300D6730000FF840000FF84
          0000424242008484840084848400848484008484840084848400848484008484
          84008484840084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AD6B6300AD6B6300AD6B
          6300AD6B6300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
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
      end
      object bbNextMonth: TBitBtn
        Left = 63
        Top = 40
        Width = 55
        Height = 30
        Caption = 'N'#228'sta'
        TabOrder = 10
        OnClick = bbNextMonthClick
      end
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 137
    Width = 933
    Height = 463
    ActivePage = tsTable
    Align = alClient
    Images = ImageList1
    Rotate = True
    Style = 8
    TabOrder = 1
    TabPosition = tpRight
    ClientRectBottom = 463
    ClientRectRight = 784
    ClientRectTop = 0
    object tsTable: TcxTabSheet
      Caption = 'Tabell inm'#228'tt per TK'
      ImageIndex = 6
      object grdLogStat: TcxGrid
        Left = 0
        Top = 33
        Width = 784
        Height = 430
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        object grdLogStatDBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_LCStat
          DataController.KeyFieldNames = 'LogClassNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,###,###.00'
              Kind = skSum
              FieldName = 'LogValue'
              Column = grdLogStatDBBandedTableView1LogValue
            end
            item
              Format = '#,###,###.00'
              Kind = skSum
              FieldName = 'LogValueWithProd'
              Column = grdLogStatDBBandedTableView1LogValueWithProd
            end
            item
              Format = '#,###,###,###.000'
              Kind = skSum
              FieldName = 'M3TO'
              Column = grdLogStatDBBandedTableView1M3TO
            end
            item
              Format = '#########'
              Kind = skSum
              FieldName = 'STOCK'
              Column = grdLogStatDBBandedTableView1STOCK
            end
            item
              Format = '#,###,###,###.000'
              Kind = skSum
              FieldName = 'M3TOPris'
              Column = grdLogStatDBBandedTableView1M3TOPris
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          Bands = <
            item
              Caption = 'TK'
              Width = 122
            end
            item
              Caption = 'TK DIAMETER'
              Width = 110
            end
            item
              Caption = 'KVANTITET'
              Width = 158
            end
            item
              Caption = 'V'#196'RDE'
              Width = 153
            end
            item
              Caption = 'MEDELPRIS/m3to (pris volym)'
              Width = 173
            end
            item
              Caption = 'MEDEL (pris baserat)'
              Width = 165
            end>
          object grdLogStatDBBandedTableView1LogClassNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LogClassNo'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdLogStatDBBandedTableView1TS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TS'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdLogStatDBBandedTableView1TK: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TK'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdLogStatDBBandedTableView1STOCK: TcxGridDBBandedColumn
            DataBinding.FieldName = 'STOCK'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdLogStatDBBandedTableView1M3TO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'M3TO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdLogStatDBBandedTableView1M3TOPris: TcxGridDBBandedColumn
            DataBinding.FieldName = 'M3TOPris'
            PropertiesClassName = 'TcxCalcEditProperties'
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdLogStatDBBandedTableView1DiameterStart: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DiameterStart'
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdLogStatDBBandedTableView1DiameterEnd: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DiameterEnd'
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdLogStatDBBandedTableView1LogValue: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LogValue'
            Options.Filtering = False
            Width = 59
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdLogStatDBBandedTableView1LogValueWithProd: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LogValueWithProd'
            Options.Filtering = False
            Width = 98
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdLogStatDBBandedTableView1Column1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UtanProdKost'
            Options.Filtering = False
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdLogStatDBBandedTableView1Column2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MedProdKost'
            Options.Filtering = False
            Position.BandIndex = 4
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdLogStatDBBandedTableView1Column3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MEDELL'#196'NGD'
            Options.Filtering = False
            Position.BandIndex = 5
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdLogStatDBBandedTableView1Column4: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MEDELDIA'
            Options.Filtering = False
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
        end
        object grdLogStatLevel1: TcxGridLevel
          GridView = grdLogStatDBBandedTableView1
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 784
        Height = 33
        Align = alTop
        TabOrder = 1
        object BitBtn3: TBitBtn
          Left = 8
          Top = 2
          Width = 109
          Height = 29
          Action = acPrintTabellPerTK
          Caption = 'Skriv ut'
          TabOrder = 0
          Glyph.Data = {
            36090000424D3609000000000000360000002800000018000000180000000100
            2000000000000009000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00ADADAD00CEC6
            CE00ADADAD009C9C9C00FF00FF00FF00FF00ADADAD00D6D6D600DED6D600BDBD
            BD00ADADAD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00ADADAD00C6C6C600F7F7F700F7F7
            F700BDBDBD00ADADAD005A5A5A006363630084848400ADADAD00CEC6C600E7DE
            DE00E7E7E700D6D6D600B5B5B500FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00ADADAD00BDB5B500E7E7E700FFFFFF00FFFFFF00EFEF
            EF00BDB5B500B5ADAD004A4A4A00212121003131310042424200636363008484
            8400ADADAD00CECECE00E7E7E700DEDEDE00ADA5A500FF00FF00FF00FF00FF00
            FF00FF00FF00ADADAD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEF
            EF00B5B5B500B5B5B5009C949C006B6B6B004A4A4A0031313100292929003131
            310042424200636363008C8C8C00A5A5A500FF00FF00FF00FF00FF00FF00A5A5
            A500CECECE00F7F7F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADAD
            AD009C9C9C00A5A5A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A
            5A00393939002929290042424200A59C9C00FF00FF00FF00FF00FF00FF00A5A5
            A500EFEFEF00F7F7F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6
            D600B5B5B500A5A5A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5
            B500A5A5A500848484006B6B6B00A59C9C00FF00FF00FF00FF00FF00FF00A5A5
            A500E7E7E700DED6D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7
            E700E7E7E700D6D6D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C
            9C00A5A5A500ADADAD00B5B5B500A5A5A500FF00FF00FF00FF00FF00FF00A5A5
            A500B5ADAD00A5A5A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7
            E700F7F7F700F7F7F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5
            B500ADA5A500A5A5A500A59C9C009C9C9C00FF00FF00FF00FF00FF00FF00A5A5
            A500BDBDBD00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7
            F700C6C6C600C6BDC600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6
            D600CECECE00C6C6C600BDBDBD00A5A5A500FF00FF00FF00FF00FF00FF00A5A5
            A500D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBD
            BD00ADB5AD0084C68400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6
            D600DEDEDE00DEDEDE00D6D6D600ADADAD00FF00FF00FF00FF00FF00FF00FF00
            FF00BDBDBD00DEDEDE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBD
            BD00EFEFEF00D6F7D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5
            A500ADADAD00BDBDBD00BDBDBD00B5B5B500FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00B5B5B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7
            F700F7F7F700F7F7F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6
            D600CECECE00ADA5A500A5A5A500FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00A59C9C00BDBDBD00DEDEDE00CECECE00ADAD
            AD00C6C6C600DEDEDE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDE
            DE00C6C6C600BDB5B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00ADADAD00F7F7F700F7F7F700DEDEDE00BDBD
            BD00BDBDBD00C6C6C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADAD
            AD00BDB5B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00EFDEDE00FFE7DE00FFE7D600FFDE
            D600F7DED600F7DED600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C600FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00E7C6BD00FFE7DE00FFDED600FFDE
            CE00FFD6C600FFCEBD00FFC6B500FFC6B500FFC6AD00EFCECE00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00E7C6BD00FFE7DE00FFDED600FFDE
            CE00FFD6C600FFCEBD00FFC6B500FFC6AD00F7B5A500FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00E7CEC600FFE7DE00FFDED600FFDE
            CE00FFD6C600FFCEBD00FFC6B500FFC6AD00F7B5A500FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00E7CEC600FFE7DE00FFDED600FFDE
            CE00FFD6C600FFCEBD00FFC6B500FFC6AD00F7BDB500FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00E7CEC600FFE7DE00FFDED600FFDE
            CE00FFD6C600FFCEBD00FFC6B500F7BDB500F7BDB500FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00E7C6C600FFEFE700FFE7DE00FFDED600FFDE
            CE00FFD6C600FFCEBD00FFCEB500F7BDB500FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00E7CEC600FFF7EF00FFE7DE00FFE7D600FFDE
            CE00FFD6C600FFD6C600F7BDB500F7BDB500FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00DEB5B500E7CEC600E7C6C600E7C6BD00E7C6BD00E7BD
            B500E7BDB500E7B5AD00F7BDB500FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
      end
    end
    object tsTabellPerDK: TcxTabSheet
      Caption = 'Tabell inm'#228'tt per DK'
      ImageIndex = 6
      object grdDKStat: TcxGrid
        Left = 0
        Top = 33
        Width = 784
        Height = 430
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        object grdDKStatDBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_DKStat
          DataController.KeyFieldNames = 'DiaClassNo;INM'#196'TNINGSKV'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,###,###,###.000'
              Kind = skSum
              FieldName = 'M3TO'
              Column = grdDKStatDBBandedTableView1M3TO
            end
            item
              Format = '########'
              Kind = skSum
              FieldName = 'STOCK'
              Column = grdDKStatDBBandedTableView1STOCK
            end
            item
              Format = '#,###,###,###.00'
              Kind = skSum
              FieldName = 'TIMMER'
              Column = grdDKStatDBBandedTableView1TIMMER
            end
            item
              Format = '#,###,###,###.00'
              Kind = skSum
              FieldName = 'TIMMERPLUSPRODUKTION'
              Column = grdDKStatDBBandedTableView1TIMMERPLUSPRODUKTION
            end
            item
              Format = '#,###,###,###.000'
              Kind = skSum
              FieldName = 'M3TOPris'
              Column = grdDKStatDBBandedTableView1M3TOPris
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          Bands = <
            item
              Caption = 'DIAMETERKLASS'
              Width = 130
            end
            item
              Caption = 'SORT'
              Width = 143
            end
            item
              Caption = 'KVANTITET'
              Width = 123
            end
            item
              Caption = 'V'#196'RDE'
              Width = 163
            end
            item
              Caption = 'MEDELPRIS/m3to (pris volym)'
              Width = 149
            end
            item
              Caption = 'MEDEL (pris baserat)'
              Width = 173
            end>
          object grdDKStatDBBandedTableView1FOM: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FOM'
            PropertiesClassName = 'TcxLabelProperties'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdDKStatDBBandedTableView1TOM: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TOM'
            PropertiesClassName = 'TcxLabelProperties'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdDKStatDBBandedTableView1INMTNINGSKV: TcxGridDBBandedColumn
            DataBinding.FieldName = 'INM'#196'TNINGSKV'
            PropertiesClassName = 'TcxLabelProperties'
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdDKStatDBBandedTableView1M3TO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'M3TO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdDKStatDBBandedTableView1STOCK: TcxGridDBBandedColumn
            DataBinding.FieldName = 'STOCK'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdDKStatDBBandedTableView1TIMMER: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TIMMER'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdDKStatDBBandedTableView1TIMMERPLUSPRODUKTION: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TIMMERPLUSPRODUKTION'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdDKStatDBBandedTableView1DiaClassNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DiaClassNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdDKStatDBBandedTableView1TS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TS'
            PropertiesClassName = 'TcxLabelProperties'
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdDKStatDBBandedTableView1MEDELDIA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MEDELDIA'
            PropertiesClassName = 'TcxCalcEditProperties'
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdDKStatDBBandedTableView1MEDELLNGD: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MEDELL'#196'NGD'
            PropertiesClassName = 'TcxCalcEditProperties'
            Position.BandIndex = 5
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdDKStatDBBandedTableView1MedProdKost: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MedProdKost'
            PropertiesClassName = 'TcxCalcEditProperties'
            Position.BandIndex = 4
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdDKStatDBBandedTableView1UtanProdKost: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UtanProdKost'
            PropertiesClassName = 'TcxCalcEditProperties'
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdDKStatDBBandedTableView1M3TOPris: TcxGridDBBandedColumn
            DataBinding.FieldName = 'M3TOPris'
            PropertiesClassName = 'TcxCalcEditProperties'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = grdDKStatDBBandedTableView1
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 784
        Height = 33
        Align = alTop
        TabOrder = 1
        object BitBtn4: TBitBtn
          Left = 8
          Top = 2
          Width = 109
          Height = 29
          Action = acPrintTabellPerDK
          Caption = 'Skriv ut'
          TabOrder = 0
          Glyph.Data = {
            36090000424D3609000000000000360000002800000018000000180000000100
            2000000000000009000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00ADADAD00CEC6
            CE00ADADAD009C9C9C00FF00FF00FF00FF00ADADAD00D6D6D600DED6D600BDBD
            BD00ADADAD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00ADADAD00C6C6C600F7F7F700F7F7
            F700BDBDBD00ADADAD005A5A5A006363630084848400ADADAD00CEC6C600E7DE
            DE00E7E7E700D6D6D600B5B5B500FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00ADADAD00BDB5B500E7E7E700FFFFFF00FFFFFF00EFEF
            EF00BDB5B500B5ADAD004A4A4A00212121003131310042424200636363008484
            8400ADADAD00CECECE00E7E7E700DEDEDE00ADA5A500FF00FF00FF00FF00FF00
            FF00FF00FF00ADADAD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEF
            EF00B5B5B500B5B5B5009C949C006B6B6B004A4A4A0031313100292929003131
            310042424200636363008C8C8C00A5A5A500FF00FF00FF00FF00FF00FF00A5A5
            A500CECECE00F7F7F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADAD
            AD009C9C9C00A5A5A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A
            5A00393939002929290042424200A59C9C00FF00FF00FF00FF00FF00FF00A5A5
            A500EFEFEF00F7F7F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6
            D600B5B5B500A5A5A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5
            B500A5A5A500848484006B6B6B00A59C9C00FF00FF00FF00FF00FF00FF00A5A5
            A500E7E7E700DED6D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7
            E700E7E7E700D6D6D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C
            9C00A5A5A500ADADAD00B5B5B500A5A5A500FF00FF00FF00FF00FF00FF00A5A5
            A500B5ADAD00A5A5A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7
            E700F7F7F700F7F7F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5
            B500ADA5A500A5A5A500A59C9C009C9C9C00FF00FF00FF00FF00FF00FF00A5A5
            A500BDBDBD00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7
            F700C6C6C600C6BDC600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6
            D600CECECE00C6C6C600BDBDBD00A5A5A500FF00FF00FF00FF00FF00FF00A5A5
            A500D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBD
            BD00ADB5AD0084C68400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6
            D600DEDEDE00DEDEDE00D6D6D600ADADAD00FF00FF00FF00FF00FF00FF00FF00
            FF00BDBDBD00DEDEDE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBD
            BD00EFEFEF00D6F7D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5
            A500ADADAD00BDBDBD00BDBDBD00B5B5B500FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00B5B5B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7
            F700F7F7F700F7F7F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6
            D600CECECE00ADA5A500A5A5A500FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00A59C9C00BDBDBD00DEDEDE00CECECE00ADAD
            AD00C6C6C600DEDEDE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDE
            DE00C6C6C600BDB5B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00ADADAD00F7F7F700F7F7F700DEDEDE00BDBD
            BD00BDBDBD00C6C6C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADAD
            AD00BDB5B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00EFDEDE00FFE7DE00FFE7D600FFDE
            D600F7DED600F7DED600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C600FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00E7C6BD00FFE7DE00FFDED600FFDE
            CE00FFD6C600FFCEBD00FFC6B500FFC6B500FFC6AD00EFCECE00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00E7C6BD00FFE7DE00FFDED600FFDE
            CE00FFD6C600FFCEBD00FFC6B500FFC6AD00F7B5A500FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00E7CEC600FFE7DE00FFDED600FFDE
            CE00FFD6C600FFCEBD00FFC6B500FFC6AD00F7B5A500FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00E7CEC600FFE7DE00FFDED600FFDE
            CE00FFD6C600FFCEBD00FFC6B500FFC6AD00F7BDB500FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00E7CEC600FFE7DE00FFDED600FFDE
            CE00FFD6C600FFCEBD00FFC6B500F7BDB500F7BDB500FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00E7C6C600FFEFE700FFE7DE00FFDED600FFDE
            CE00FFD6C600FFCEBD00FFCEB500F7BDB500FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00E7CEC600FFF7EF00FFE7DE00FFE7D600FFDE
            CE00FFD6C600FFD6C600F7BDB500F7BDB500FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00DEB5B500E7CEC600E7C6C600E7C6BD00E7C6BD00E7BD
            B500E7BDB500E7B5AD00F7BDB500FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
      end
    end
    object tsDiagram: TcxTabSheet
      Caption = 'Diagram inm'#228'tt per TK'
      ImageIndex = 6
      object DBChart1: TDBChart
        Left = 0
        Top = 33
        Width = 784
        Height = 430
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        BackWall.Gradient.EndColor = 11118482
        BackWall.Pen.Visible = False
        BottomWall.Gradient.EndColor = 16580349
        BottomWall.Gradient.StartColor = 3114493
        BottomWall.Pen.Visible = False
        BottomWall.Size = 4
        LeftWall.Gradient.EndColor = 2413052
        LeftWall.Gradient.StartColor = 900220
        LeftWall.Pen.Visible = False
        LeftWall.Size = 4
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Style = [fsBold]
        Title.Frame.Color = clGray
        Title.Frame.Visible = False
        Title.Gradient.Balance = 40
        Title.Gradient.Direction = gdRightLeft
        Title.Gradient.EndColor = clBlack
        Title.Gradient.MidColor = 8388672
        Title.Gradient.StartColor = clGray
        Title.Shadow.HorizSize = 0
        Title.Shadow.Transparency = 70
        Title.Shadow.VertSize = 0
        Title.Text.Strings = (
          'Inm'#228'tt per timmerklass')
        Title.Transparent = False
        BottomAxis.Axis.Color = 4210752
        BottomAxis.Grid.Color = 13421772
        BottomAxis.Grid.Visible = False
        BottomAxis.LabelsAngle = 90
        BottomAxis.MinorGrid.Color = 15066597
        BottomAxis.MinorTicks.Color = clBlack
        BottomAxis.TicksInner.Color = clBlack
        BottomAxis.Title.Caption = 'Timmerklass'
        DepthAxis.MinorTicks.Color = clBlack
        DepthAxis.TicksInner.Color = clBlack
        DepthTopAxis.MinorTicks.Color = clBlack
        DepthTopAxis.TicksInner.Color = clBlack
        Frame.Visible = False
        LeftAxis.Axis.Color = 4210752
        LeftAxis.Grid.Visible = False
        LeftAxis.MinorTicks.Color = clBlack
        LeftAxis.TicksInner.Color = clBlack
        LeftAxis.Title.Caption = 'STOCK'
        Legend.Alignment = laBottom
        Legend.Color = clInfoBk
        Legend.DividingLines.Color = clSilver
        Legend.Font.Color = 6553600
        Legend.Frame.Color = clGray
        Legend.Frame.Visible = False
        Legend.Gradient.Direction = gdTopBottom
        Legend.Gradient.EndColor = clYellow
        Legend.Gradient.StartColor = clWhite
        Legend.Shadow.Color = 13421772
        Legend.Symbol.Pen.Visible = False
        Legend.Symbol.Squared = True
        RightAxis.MinorTicks.Color = clBlack
        RightAxis.TicksInner.Color = clBlack
        RightAxis.Title.Caption = 'M3TO'
        Shadow.Color = clBlack
        TopAxis.MinorTicks.Color = clBlack
        TopAxis.TicksInner.Color = clBlack
        View3D = False
        Align = alClient
        Color = clWhite
        TabOrder = 0
        PrintMargins = (
          15
          30
          15
          30)
        ColorPaletteIndex = 9
        object Series2: TBarSeries
          BarPen.Visible = False
          Marks.Callout.Brush.Color = clBlack
          Marks.Frame.Color = clGray
          Marks.Shadow.Color = 13421772
          Marks.Shadow.HorizSize = 2
          Marks.Shadow.VertSize = 2
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = cds_LCStat
          Title = 'STOCK'
          XLabelsSource = 'TK'
          Gradient.Direction = gdTopBottom
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'STOCK'
        end
        object Series1: TBarSeries
          BarPen.Visible = False
          Marks.Callout.Brush.Color = clBlack
          Marks.Frame.Color = clGray
          Marks.Shadow.Color = 13421772
          Marks.Shadow.HorizSize = 2
          Marks.Shadow.VertSize = 2
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = cds_LCStat
          Title = 'M3TO'
          VertAxis = aRightAxis
          XLabelsSource = 'TK'
          BarWidthPercent = 65
          Gradient.Direction = gdTopBottom
          OffsetPercent = 15
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'M3TO'
        end
        object GridBandTool1: TGridBandTool
          Band1.Color = 15329769
          Band2.Color = clWhite
          AxisID = 3
        end
        object GridBandTool2: TGridBandTool
          Band1.Color = 15329769
          Band2.Color = clWhite
          AxisID = 3
        end
        object GridBandTool3: TGridBandTool
          Band1.Color = 15329769
          Band2.Color = clWhite
          AxisID = 3
        end
        object GridBandTool4: TGridBandTool
          Band1.Color = 15329769
          Band2.Color = clWhite
          AxisID = 3
        end
      end
      object TeeCommander2: TTeeCommander
        Left = 0
        Top = 0
        Width = 784
        Height = 33
        Panel = DBChart1
        Align = alTop
        ParentShowHint = False
        TabOrder = 1
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'Diagram inm'#228'tt per DK'
      ImageIndex = 6
      object DBChart2: TDBChart
        Left = 0
        Top = 33
        Width = 784
        Height = 430
        BackWall.Pen.Visible = False
        BottomWall.Pen.Visible = False
        BottomWall.Size = 4
        LeftWall.Pen.Visible = False
        LeftWall.Size = 4
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Style = [fsBold]
        Title.Frame.Color = clGray
        Title.Frame.Visible = False
        Title.Shadow.HorizSize = 0
        Title.Shadow.VertSize = 0
        Title.Text.Strings = (
          'Inm'#228'tt per diameterklass')
        Title.Transparent = False
        BottomAxis.Axis.Color = 4210752
        BottomAxis.Grid.Color = 13421772
        BottomAxis.Grid.Visible = False
        BottomAxis.LabelsAngle = 90
        BottomAxis.Title.Caption = 'Diameterklass'
        Frame.Visible = False
        LeftAxis.Axis.Color = 4210752
        LeftAxis.Grid.Visible = False
        LeftAxis.Title.Caption = 'STOCK'
        Legend.Alignment = laBottom
        Legend.Color = clInfoBk
        Legend.Frame.Color = clGray
        Legend.Frame.Visible = False
        Legend.Shadow.Color = 13421772
        RightAxis.Title.Caption = 'M3TO'
        View3D = False
        Align = alClient
        Color = clWhite
        TabOrder = 0
        ColorPaletteIndex = 9
        object Series4: TBarSeries
          BarPen.Visible = False
          Depth = 0
          Marks.Callout.Brush.Color = clBlack
          Marks.Frame.Color = clGray
          Marks.Shadow.Color = 13421772
          Marks.Shadow.HorizSize = 2
          Marks.Shadow.VertSize = 2
          Marks.Visible = False
          DataSource = cds_DiaStat
          Title = 'STOCK'
          XLabelsSource = 'TK'
          Gradient.Direction = gdTopBottom
          OffsetPercent = -15
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'STOCK'
        end
        object Series3: TBarSeries
          BarPen.Visible = False
          Depth = 0
          Marks.Callout.Brush.Color = clBlack
          Marks.Frame.Color = clGray
          Marks.Shadow.Color = 13421772
          Marks.Shadow.HorizSize = 2
          Marks.Shadow.VertSize = 2
          Marks.Visible = False
          DataSource = cds_DiaStat
          Title = 'M3TO'
          VertAxis = aRightAxis
          XLabelsSource = 'TK'
          Gradient.Direction = gdTopBottom
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'M3TO'
        end
        object GridBandTool5: TGridBandTool
          Band1.Color = 15329769
          Band2.Color = clWhite
          AxisID = 2
        end
      end
      object TeeCommander3: TTeeCommander
        Left = 0
        Top = 0
        Width = 784
        Height = 33
        Panel = DBChart2
        Align = alTop
        ParentShowHint = False
        TabOrder = 1
      end
    end
    object tsDiaTotPerLev: TcxTabSheet
      Caption = 'Totalt per leverant'#246'r'
      ImageIndex = 6
      object DBChart3: TDBChart
        Left = 0
        Top = 33
        Width = 784
        Height = 300
        BackWall.Gradient.EndColor = 11118482
        BackWall.Pen.Visible = False
        BottomWall.Gradient.EndColor = 16580349
        BottomWall.Gradient.StartColor = 3114493
        BottomWall.Pen.Visible = False
        BottomWall.Size = 4
        LeftWall.Gradient.EndColor = 2413052
        LeftWall.Gradient.StartColor = 900220
        LeftWall.Pen.Visible = False
        LeftWall.Size = 4
        Title.Alignment = taLeftJustify
        Title.Color = clInfoBk
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Style = [fsBold]
        Title.Frame.Color = clGray
        Title.Gradient.Balance = 40
        Title.Gradient.Direction = gdRightLeft
        Title.Gradient.EndColor = clBlack
        Title.Gradient.MidColor = 8388672
        Title.Gradient.StartColor = clGray
        Title.Shadow.HorizSize = 0
        Title.Shadow.Transparency = 70
        Title.Shadow.VertSize = 0
        Title.Text.Strings = (
          'Levererat (m3to ) / leverant'#246'r')
        Title.Transparent = False
        BottomAxis.Axis.Color = 4210752
        BottomAxis.Grid.Color = 13421772
        BottomAxis.Grid.Visible = False
        BottomAxis.MinorGrid.Color = 15066597
        BottomAxis.MinorTicks.Color = clBlack
        BottomAxis.TicksInner.Color = clBlack
        DepthAxis.MinorTicks.Color = clBlack
        DepthAxis.TicksInner.Color = clBlack
        DepthTopAxis.MinorTicks.Color = clBlack
        DepthTopAxis.TicksInner.Color = clBlack
        Frame.Visible = False
        LeftAxis.Axis.Color = 4210752
        LeftAxis.Grid.Visible = False
        LeftAxis.MinorTicks.Color = clBlack
        LeftAxis.TicksInner.Color = clBlack
        Legend.Color = clInfoBk
        Legend.DividingLines.Color = clSilver
        Legend.Font.Color = 6553600
        Legend.Frame.Color = clGray
        Legend.Frame.Visible = False
        Legend.Gradient.Direction = gdTopBottom
        Legend.Gradient.EndColor = clYellow
        Legend.Gradient.StartColor = clWhite
        Legend.Shadow.Color = 13421772
        Legend.Symbol.Pen.Visible = False
        Legend.Symbol.Squared = True
        RightAxis.MinorTicks.Color = clBlack
        RightAxis.TicksInner.Color = clBlack
        Shadow.Color = clBlack
        TopAxis.MinorTicks.Color = clBlack
        TopAxis.TicksInner.Color = clBlack
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        Align = alClient
        Color = clWhite
        TabOrder = 0
        ColorPaletteIndex = 9
        object Series5: TPieSeries
          Marks.Callout.Brush.Color = clBlack
          Marks.Frame.Color = clGray
          Marks.Shadow.Color = 13421772
          Marks.Shadow.HorizSize = 2
          Marks.Shadow.VertSize = 2
          Marks.Style = smsLabelPercent
          Marks.Visible = True
          DataSource = cds_TotLev
          ValueFormat = '#,##0.00'
          XLabelsSource = 'LEV'
          Circled = True
          Gradient.Direction = gdRadial
          OtherSlice.Legend.Visible = False
          PiePen.Visible = False
          PieValues.Name = 'Pie'
          PieValues.Order = loDescending
          PieValues.ValueSource = 'M3TO'
        end
        object GridBandTool6: TGridBandTool
          Band1.Color = 15329769
          Band2.Color = clWhite
          AxisID = 2
        end
        object GridBandTool7: TGridBandTool
          Band1.Color = 15329769
          Band2.Color = clWhite
          AxisID = 2
        end
        object GridBandTool8: TGridBandTool
          Band1.Color = 15329769
          Band2.Color = clWhite
          AxisID = 2
        end
        object GridBandTool9: TGridBandTool
          Band1.Color = 15329769
          Band2.Color = clWhite
          AxisID = 2
        end
        object GridBandTool10: TGridBandTool
          Band1.Color = 15329769
          Band2.Color = clWhite
          AxisID = 2
        end
      end
      object TeeCommander1: TTeeCommander
        Left = 0
        Top = 0
        Width = 784
        Height = 33
        Panel = DBChart3
        Align = alTop
        ParentShowHint = False
        TabOrder = 1
        object cbGroupBySortiment: TcxCheckBox
          Left = 392
          Top = 4
          Caption = 'Gruppera/sortiment'
          TabOrder = 0
          Width = 121
        end
      end
      object grdTotLev: TcxGrid
        Left = 0
        Top = 341
        Width = 784
        Height = 122
        Align = alBottom
        TabOrder = 2
        LookAndFeel.Kind = lfFlat
        object grdTotLevDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_TotLev
          DataController.KeyFieldNames = 'LEV'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,###,###,###.00'
              Kind = skSum
              FieldName = 'M3TO'
              Column = grdTotLevDBTableView1M3TO
            end
            item
              Format = '###,###,###,###'
              Kind = skSum
              FieldName = 'STOCK'
              Column = grdTotLevDBTableView1STOCK
            end
            item
              Format = '#,###,###,###.00'
              Kind = skSum
              FieldName = 'LogValue'
              Column = grdTotLevDBTableView1LogValue
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object grdTotLevDBTableView1LEV: TcxGridDBColumn
            DataBinding.FieldName = 'LEV'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Filtering = False
            Width = 70
          end
          object grdTotLevDBTableView1STOCK: TcxGridDBColumn
            DataBinding.FieldName = 'STOCK'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
            Width = 56
          end
          object grdTotLevDBTableView1M3TO: TcxGridDBColumn
            DataBinding.FieldName = 'M3TO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
            Width = 58
          end
          object grdTotLevDBTableView1RealM3TO: TcxGridDBColumn
            DataBinding.FieldName = 'RealM3TO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
            Width = 62
          end
          object grdTotLevDBTableView1avgdia: TcxGridDBColumn
            DataBinding.FieldName = 'avgdia'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
            Width = 73
          end
          object grdTotLevDBTableView1avgrealdia: TcxGridDBColumn
            DataBinding.FieldName = 'avgrealdia'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
            Width = 82
          end
          object grdTotLevDBTableView1avglength: TcxGridDBColumn
            DataBinding.FieldName = 'avglength'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
            Width = 84
          end
          object grdTotLevDBTableView1Realavglength: TcxGridDBColumn
            DataBinding.FieldName = 'Realavglength'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
            Width = 107
          end
          object grdTotLevDBTableView1avgprice: TcxGridDBColumn
            DataBinding.FieldName = 'avgprice'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
            Width = 67
          end
          object grdTotLevDBTableView1LogValue: TcxGridDBColumn
            DataBinding.FieldName = 'LogValue'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
            Width = 65
          end
          object grdTotLevDBTableView1Sortiment: TcxGridDBColumn
            DataBinding.FieldName = 'Sortiment'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 58
          end
        end
        object grdTotLevLevel1: TcxGridLevel
          GridView = grdTotLevDBTableView1
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 0
        Top = 333
        Width = 784
        Height = 8
        HotZoneClassName = 'TcxMediaPlayer8Style'
        AlignSplitter = salBottom
        Control = grdTotLev
        Color = clGreen
        ParentColor = False
      end
    end
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 728
    Top = 384
    Bitmap = {
      494C010108000900040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
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
      AD005A5A5A006363630084848400ADADAD00CEC6C600E7DEDE00E7E7E700D6D6
      D600B5B5B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADADAD00BDB5B500E7E7E700FFFFFF00FFFFFF00EFEFEF00BDB5B500B5AD
      AD004A4A4A002121210031313100424242006363630084848400ADADAD00CECE
      CE00E7E7E700DEDEDE00ADA5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFF7E700FFF7E700FFEF
      D600FFEFD600FFE7C600FFE7C600FFE7C600FFDEB500FFDEB500FFDEB500FFD6
      AD00FFD6AD00FFD6AD00CE63000000000000000000000000000000C7D70000C7
      D70000419500000000000000000000C7D70000C7D70000357D00000000000000
      000000C7D70000C7D70000398800000000000000000000C7D70000C7D7000020
      4A0000000000000000000000000000000000000000000000000000000000ADAD
      AD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEFEF00B5B5B500B5B5
      B5009C949C006B6B6B004A4A4A00313131002929290031313100424242006363
      63008C8C8C00A5A5A5000000000000000000000000000000000042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      000042E7E7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFF7E700FFF7
      E700FFEFD600FFEFD600FFE7C600FFDEB500FFDEB500FFDEB500FFD6AD00FFD6
      AD00FFD6AD00FFD6AD00CE630000000000000000000000C7D70000C7D70000C7
      D70000C7D7000041950000C7D70000C7D70000C7D70000C7D70000357D0000C7
      D70000C7D70000C7D70000C7D7000039880000C7D70000C7D70000C7D70000C7
      D70000204A0000000000000000000000000000000000A5A5A500CECECE00F7F7
      F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADADAD009C9C9C00A5A5
      A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A5A00393939002929
      290042424200A59C9C000000000000000000000000000000000042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      000042E7E70042E7E70042E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700FFF7E700FFEFD600FFE7C600FFE7
      C600FFD6AD00FFDEB500CE63000000000000000000000047A80000C7D70000C7
      D700004195000041950000357D0000C7D70000C7D70000357D00000000000039
      880000C7D70000C7D7000039880000398800002E6A0000C7D70000C7D7000027
      5B000024550000204A00000000000000000000000000A5A5A500EFEFEF00F7F7
      F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6D600B5B5B500A5A5
      A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5B500A5A5A5008484
      84006B6B6B00A59C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042E7E70042E7E70042E7E70042E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7E700FFEFD600FFE7C600FFE7
      C600FFD6AD00FFDEB500CE6300000000000000000000000000000047A8000044
      9F00003A8A00003A8A000000000000357D0000357D0000327500003275000000
      00000039880000398800003680000036800000000000002E6A00002E6A00002E
      6A0000275B000024550000204A000000000000000000A5A5A500E7E7E700DED6
      D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7E700E7E7E700D6D6
      D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C9C00A5A5A500ADAD
      AD00B5B5B500A5A5A50000000000000000000000000000000000000000000000
      000042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7
      E700000000000000000042E7E70042E7E70042E7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7E700FFEFD600FFEF
      D600FFE7C600FFE7C600CE63000000000000000000000000000000000000003A
      8A0000C7D70000C7D70000357D00000000000032750000C7D70000C7D700002E
      6A00000000000036800000C7D70000C7D700003C8C0000000000002E6A00002E
      6A00002E6A0000275B000024550000204A0000000000A5A5A500B5ADAD00A5A5
      A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7E700F7F7F700F7F7
      F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5B500ADA5A500A5A5
      A500A59C9C009C9C9C0000000000000000000000000000000000000000000000
      0000000000000000000042E7E70042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E70042E7E700000000000000000042E7E70042E7E70042E7E7000000
      0000000000000000000000000000000000000000000000000000DEBD9400DEBD
      9400DEBD9400DEBD9400DEBD9400DEBD9400CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700FFEFD600FFE7C600CE6300000000000000000000000000000000000000C7
      D70000C7D70000C7D70000C7D70000357D0000C7D70000C7D70000C7D70000C7
      D700002E6A0000C7D70000C7D70000C7D70000C7D700003C8C0000000000002E
      6A00002E6A00002E6A0000275B000024550000000000A5A5A500BDBDBD00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7F700C6C6C600C6BD
      C600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00C6C6
      C600BDBDBD00A5A5A50000000000000000000000000000000000000000000000
      000000000000000000000000000042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E7000000000042E7E70042E7E70042E7
      E700000000000000000000000000000000000000000000000000FFD6AD00FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E700CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      E700FFEFD600FFEFD600CE630000000000000000000000000000000000000035
      7D0000C7D70000C7D70000357D0000000000002E6A0000C7D70000C7D700002E
      6A00002E6A00003C8C0000C7D70000C7D700003C8C00003C8C00003C8C000000
      0000002E6A00002E6A00002E6A0000275B0000000000A5A5A500D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBDBD00ADB5AD0084C6
      8400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6D600DEDEDE00DEDE
      DE00D6D6D600ADADAD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042E7E7000000000000000000000000000000000000000000FFD6AD00FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E700CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7E700FFEFD600CE630000000000000000000000000000000000000000
      000000357D0000357D00003071000030710000000000002E6A00002E6A00002E
      6A000029620000000000003C8C00003C8C00003C8C00003C8C00003C8C00003C
      8C0000000000002E6A00002E6A00002E6A000000000000000000BDBDBD00DEDE
      DE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBDBD00EFEFEF00D6F7
      D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5A500ADADAD00BDBD
      BD00BDBDBD00B5B5B50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000000042E7
      E700000000000000000000000000000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFEFD600CE630000000000000000000000000000000000000000
      0000000000000030710000C7D70000C7D7000039880000000000002E6A000029
      620000C7D70000C7D70000000000003C8C00003C8C00003C8C00003C8C00003C
      8C00003C8C0000000000002E6A00002E6A00000000000000000000000000B5B5
      B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7F700F7F7F700F7F7
      F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00ADA5
      A500A5A5A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000000042E7
      E70042E7E70042E7E70000000000000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DE7B0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CE630000000000000000000000000000000000000000
      00000000000000C7D70000C7D70000C7D70000C7D7000039880000357D0000C7
      D70000C7D70000C7D70000C7D70000000000003C8C00003C8C00003C8C00003C
      8C00003C8C00003C8C0000000000002E6A000000000000000000000000000000
      000000000000A59C9C00BDBDBD00DEDEDE00CECECE00ADADAD00C6C6C600DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00C6C6C600BDB5
      B500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000042E7
      E70042E7E70042E7E70042E7E700000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000CE630000000000000000000000000000000000000000
      0000000000000047A80000C7D70000C7D7000039880000398800003988000035
      7D0000C7D70000C7D70000357D0000357D0000000000003C8C00003C8C00003C
      8C00003C8C00003C8C00003C8C00000000000000000000000000000000000000
      000000000000ADADAD00F7F7F700F7F7F700DEDEDE00BDBDBD00BDBDBD00C6C6
      C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADADAD00BDB5B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      00000000000042E7E70042E7E70042E7E7000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      000000000000000000000047A80000449F000039880000398800003988000000
      000000357D0000357D0000357D0000357D0000357D0000000000003C8C00003C
      8C00003C8C00003C8C00003C8C00003C8C000000000000000000000000000000
      00000000000000000000EFDEDE00FFE7DE00FFE7D600FFDED600F7DED600F7DE
      D600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E700000000000000000042E7E7000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D673100000000000000000000000000000000000000000000000
      00000000000000000000000000000047A80000449F0000C7D70000C7D7000041
      95000000000000357D0000357D0000357D0000357D0000357D0000000000003C
      8C00003C8C00003C8C00003C8C00003C8C000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6B500FFC6AD00EFCECE000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      000042E7E700000000000000000042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E700000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEBD940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000C7D70000C7D70000C7D70000C7
      D700004195000000000000357D0000357D0000357D0000357D0000357D000000
      0000003C8C00003C8C00003C8C00003C8C000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      000042E7E70042E7E70042E7E700000000000000000042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E7000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEBD940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000047A80000C7D70000C7D7000041
      950000419500004195000000000000357D0000357D0000357D0000357D000035
      7D0000000000003C8C00003C8C00003C8C000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042E7E70042E7E70042E7E70042E7E700000000000000000042E7
      E70042E7E70042E7E70042E7E70042E7E7000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEBD940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000047A80000449F000041
      95000041950000419500004195000000000000357D0000357D0000357D000035
      7D0000357D0000000000003C8C00003C8C000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000042E7E70042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E700000000000000000042E7E70042E7E70042E7E70042E7E7000000
      00000000000042E7E70042E7E70042E7E7000000000000000000FFD6AD00FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00DEBD940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000047A8000044
      9F00004195000041950000419500004195000000000000357D0000357D000035
      7D0000357D0000357D0000000000003C8C000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500F7BDB500F7BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042E7E70042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E700000000000000000042E7E70042E7E70042E7
      E70042E7E700000000000000000042E7E7000000000000000000FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000047
      A80000449F00004195000041950000419500004195000000000000357D000035
      7D0000357D0000357D0000357D00000000000000000000000000000000000000
      000000000000E7C6C600FFEFE700FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFCEB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E700000000000000000042E7
      E70042E7E70042E7E70042E7E70000000000000000000000000000000000FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000047A80000449F0000419500004195000041950000419500000000000035
      7D0000357D0000357D0000357D0000357D000000000000000000000000000000
      000000000000E7CEC600FFF7EF00FFE7DE00FFE7D600FFDECE00FFD6C600FFD6
      C600F7BDB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      00000000000042E7E70042E7E70042E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000047A80000449F00004195000041950000419500004195000000
      000000357D0000357D0000357D0000357D000000000000000000000000000000
      0000DEB5B500E7CEC600E7C6C600E7C6BD00E7C6BD00E7BDB500E7BDB500E7B5
      AD00F7BDB5000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEC600F7DEBD00BDCE8C00E7D6A500E7D6A500EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C63630042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7DECE00F7E7CE00F7DEC600F7DEC600CED69C00009C0000E7D6A5006BB5
      4A0039A5290039A529006BB54A00C6C67B00E7CE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000000000
      0000000000008C6363004242420042424200B55A0000B55A0000424242008C63
      63008C6363008C6363008C6363008C6363008C6363008C6363008C6363008C63
      6300000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFE7CE00F7E7D600F7E7CE00F7DEC600EFDEB500009C0000109C1000009C
      0000009C0000009C0000009C0000009C000094BD5A00E7CE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      63000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6631800CE630000CE630000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B6B6B008484
      840000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7E7D600F7EFDE00F7E7D600F7E7CE00EFDEBD00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000C6C67B00EFCE9400EFCE
      9400EFCE9400B58C7B00000000000000000000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      6300000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE63000000000000C6631800000000000000000084848400525252008484
      84006B6B6B006B6B6B004A4A4A00A5A5A500737373006B6B6B00000000004A4A
      4A0000000000000000000000000000000000000000000000000000000000AD84
      7B00F7E7DE00F7EFDE00F7E7D600F7E7CE00E7DEC600009C0000009C0000009C
      000039AD3100C6CE8C00C6CE8C006BB54A00009C000039A52900EFCE9400EFCE
      9400EFCE9400B58C7B00000000000000000000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      63000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE630000C66318000000000000000000848484006B6B6B000000
      00007B7B7B007B7B7B006B6B6B00848484004A4A4A007B7B7B006B6B6B008484
      840000000000000000000000000000000000000000000000000000000000AD84
      7B00F7EFE700F7EFE700F7EFDE00F7E7D600EFE7C600009C0000009C0000009C
      000031A52100E7D6AD00E7D6A500E7D6A500A5C67300109C0800EFCE9C00EFCE
      9400EFCE9400B58C7B00000000000000000000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      6300000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700000000000000000000000000000000000000000000000000000000000000
      000000000000DE7B000000000000000000000000000000000000848484000000
      0000000000000000000000000000848484000000000000000000848484000000
      000000000000000000000000000000000000000000000000000000000000B58C
      7B00F7EFE700FFF7EF00F7EFE700F7EFDE00EFE7CE00009C0000009C0000009C
      0000009C0000009C0000E7D6AD00EFD6AD00EFD6AD00EFCEA5007BCE7B00EFCE
      9C00EFCE9400B58C7B00000000000000000000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      63000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E7000000000000000000000000000000000000000000000000000000
      0000CE630000CE630000C6631800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B58C
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700EFE7CE00EFE7CE00E7DEC600E7DE
      C600EFDEBD00EFDEB500E7D6AD00F7D6B500EFD6AD00EFD6AD007BCE7B00EFCE
      9C00EFCE9400B58C7B00000000000000000000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      6300000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD8C
      8400FFF7F700FFFFF700FFF7EF007BCE7B00F7EFE700F7EFDE00F7E7D600EFE7
      C600E7DEC600EFDEBD00EFDEB500E7D6AD00E7D6AD00E7D6A500EFD6AD00EFCE
      A500EFCE9C00B58C7B00000000000000000000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      63000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      0000CE630000C6631800C6631800000000000000000094949400A5A5A5009494
      9C00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD94
      8400FFF7F700FFFFFF00FFF7F7007BCE7B00F7EFE700F7EFE700F7EFDE00EFE7
      CE00009C0000009C0000009C0000009C0000009C0000E7D6AD00EFD6AD00EFD6
      AD00EFCEA500B58C7B00000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      6300000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000CE6300000000000000000000000000000000000000000000313131008C8C
      8C006B6B6B000000000084848400848484005A5A5A0052525200000000006363
      630063636300636363000000000000000000000000000000000000000000C694
      8400FFF7F700FFFFFF00FFFFFF00FFF7F700109C1000ADD6A500EFEFD600EFE7
      CE00EFE7CE0031AD2900009C0000009C0000009C0000E7D6AD00F7D6B500EFD6
      AD00EFCEA500B58C7B00000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      63000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000000000000000
      000000000000CE630000000000000000000000000000A5A5A500737373006363
      63005A5A5A006363630063636300A5A5A500636363004A4A4A006B6B6B006363
      6300737373005A5A5A000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF0039AD3900009C000073C66B00CEDE
      B500CEDEB50039AD3900009C0000009C0000009C0000EFDEB500F7DEBD00F7D6
      B500EFD6AD00B58C7B00000000000000000000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      0000CE63000000000000C66318000000000000000000000000008C8C8C000000
      0000A5A5A500949494000000000084848400525252008C8C8C00000000000000
      00007B7B7B00000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF00CEEFCE00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000EFDEBD00F7DEBD00EFDE
      BD00DEC6A5009C847B00000000000000000000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700C6C6C60000E7
      E70000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      0000CE630000C6631800C6631800000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00F7FFF7009CDE9C00009C0000009C
      0000009C0000009C0000009C0000109C1000009C0000E7DEC600EFDEBD00CEBD
      AD00B5AD94009C847B00000000000000000000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      630000000000000000000000000000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CEA5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFF700CEEFCE0073C6
      6B0039AD390039AD390073C66300EFE7CE00009C0000C6D6AD00CEBDAD00BDB5
      A500B5AD9C009C847B00000000000000000000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      63000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000000000000000
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6A5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFF7E700E7DEC600AD84730084845A00AD7B7300AD7B
      7300AD7B7300AD847300000000000000000000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      000000000000CE6300000000000000000000000000007B7B7B00000000004A4A
      4A00313131004A4A4A0042424200424242004242420000000000424242000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B58484000000000000000000000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      000000000000CE63000000000000000000000000000073737300737373005A5A
      5A00313131006363630000000000525252004242420042424200525252000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B58484000000000000000000000000000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000CE630000CE6300000000000000000000000000007B7B7B005A5A5A000000
      000000000000636363006363630063636300000000006B6B6B00636363000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      000000000000CE63000000000000000000000000000000000000000000000000
      0000000000006363630000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400B5847300B5848400000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0C1FFFFFFFFFFFFFFFFFFFFC0007FFFFFFFF0001FFFFFFF00001
      8007FFFF0001C6318FE000038001FFFF00018000078000038000FFFF00018000
      0380000380007FFF0001C00001800003C0001FFF0001E00000800003F0000FC0
      0001E00000800003FC0007C00001E00000800003FE0003C00001F00000C00003
      FF0001C00001F80000E00007FF0000C00001F80000F8000FFF0000C00001F800
      00F8001FFF8000C00001FC0000FC007FC00000C00003FE0000FC00FFC00000C0
      007FFF0000FC01FFC00000C0007FFF0000FC01FFC00000C0007FFF8000FC01FF
      F00000C0007FFFC000FC01FFFC0000C0007FFFE000F803FFFF0000E000FFFFF0
      00F803FFFFC000FFFFFFFFF800F007FFE00003FFFFFFFFFFFFFFFFFFE00003FF
      FFFFFFFFFFFFFFFFE00003FF1FFFFFFFFFFFFFFFE00003F8000F8000FFFFFFFF
      E00003E0000F80007FF1FFCFE00003C0000F80003FF5802FE00003C0000F8000
      1FF9900FE00003C0000F80000FFBDEDFE00003C0000F800007F1FFFFE00003C0
      000F800003FFFFFFE00003C0000F800001F18FFFE00003C0000F800001F7C423
      E00003C0000F800001FB8003E00003C0000F800001F5D237E00003C0000F8000
      01F1FF7FE00003C0000FC00001FFFFFFE00003C0000FE00001F1FFFFE00003C0
      000FF00001FBA05FE00003E0000FF80001FB821FE00007F8000FFC0001F3989F
      E0000FFE1FFFFE0001FBFBFFE0001FFFFFFFFF0001FFFFFFE0003FFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object pmSpecies: TPopupMenu
    Left = 480
    Top = 136
    object AddSpecies: TMenuItem
      Caption = 'L'#228'gg till'
      OnClick = AddSpeciesClick
    end
    object RemoveSpecies: TMenuItem
      Caption = 'Ta bort'
      OnClick = RemoveSpeciesClick
    end
    object ClearSpecies: TMenuItem
      Caption = 'Rensa'
      OnClick = ClearSpeciesClick
    end
  end
  object pmSorteringsKV: TPopupMenu
    Left = 800
    Top = 128
    object AddGrade: TMenuItem
      Caption = 'L'#228'gg till'
      OnClick = AddGradeClick
    end
    object RemoveGrade: TMenuItem
      Caption = 'Ta bort'
      OnClick = RemoveGradeClick
    end
    object ClearGrade: TMenuItem
      Caption = 'Rensa'
      OnClick = ClearGradeClick
    end
  end
  object pmLogSupplier: TPopupMenu
    Left = 208
    Top = 136
    object AddThick: TMenuItem
      Caption = 'L'#228'gg till'
      OnClick = AddThickClick
    end
    object RemoveThick: TMenuItem
      Caption = 'Ta bort'
      OnClick = RemoveThickClick
    end
    object ClearThicks: TMenuItem
      Caption = 'Rensa'
      OnClick = ClearThicksClick
    end
  end
  object pmLogClass: TPopupMenu
    Left = 168
    Top = 136
    object AddWidth: TMenuItem
      Caption = 'L'#228'gg till'
      OnClick = AddWidthClick
    end
    object RemoveWidth: TMenuItem
      Caption = 'Ta bort'
      OnClick = RemoveWidthClick
    end
    object ClearWidths: TMenuItem
      Caption = 'Rensa'
      OnClick = ClearWidthsClick
    end
  end
  object pmDiaClass: TPopupMenu
    Left = 304
    Top = 136
    object AddLength: TMenuItem
      Caption = 'L'#228'gg till'
      OnClick = AddLengthClick
    end
    object RemoveLength: TMenuItem
      Caption = 'Ta bort'
      OnClick = RemoveLengthClick
    end
    object ClearLengths: TMenuItem
      Caption = 'Rensa'
      OnClick = ClearLengthsClick
    end
  end
  object pmInmatningsKV: TPopupMenu
    Left = 640
    Top = 128
    object AddSurfacing: TMenuItem
      Caption = 'L'#228'gg till'
      OnClick = AddSurfacingClick
    end
    object RemoveSurfacing: TMenuItem
      Caption = 'Ta bort'
      OnClick = RemoveSurfacingClick
    end
    object ClearSurfacing: TMenuItem
      Caption = 'Rensa'
      OnClick = ClearSurfacingClick
    end
  end
  object sq_LCStat: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '  Select DiameterStart, DiameterEnd,'
      
        'RTRIM(LC.LogClassID)+'#39', '#39'+LTRIM(Str(DiameterStart))+'#39'-'#39'+LTRIM(St' +
        'r(DiameterEnd)) AS TK,'
      
        '  LCS.LogClassNo, CONVERT(Float, SUM(LCS.Pricem3to)) as M3TOPris' +
        ','
      '  CONVERT(Float, SUM(LCS.Realm3to)) as M3TO,'
      '  SUM(LCS.NoOfLogs) AS STOCK,'
      
        '  SUM(LCS.PriceM3TO * LCS.Price) AS LogValue, SUM(LCS.PriceM3TO ' +
        '* (LCS.Price+LCS.ProductionCostPerPricem3To)) AS LogValueWithPro' +
        'd,'
      '  S.SpeciesName AS TS,'
      
        '  SUM(LCS.PriceM3TO * LCS.Price)/SUM(LCS.PriceM3TO) AS UtanProdK' +
        'ost,'
      
        '  SUM(LCS.PriceM3TO * (LCS.Price+LCS.ProductionCostPerPricem3To)' +
        ')/SUM(LCS.PriceM3TO) AS MedProdKost,'
      '  SUM(LCS.PriceLength)/SUM(LCS.NoOfLogs) AS MEDELL'#196'NGD,'
      '  SUM(LCS.PriceDiameter)/SUM(LCS.NoOfLogs) AS MEDELDIA'
      '  FROM dbo.LogClassStatistics LCS'
      '  Inner Join dbo.LogClass LC ON LC.LogClassNo = LCS.LogClassNo'
      '  Inner Join dbo.Species S ON S.LogSpeciesCode = LCS.SpeciesNo'
      '   '#9#9#9'AND S.LanguageCode = 1'
      ''
      
        'GROUP BY DiameterStart, DiameterEnd, LC.LogClassID, LCS.LogClass' +
        'No, S.SpeciesName'
      ' ')
    SQLConnection = dmsConnector.SQLConnection
    Left = 168
    Top = 232
  end
  object dsp_LCStat: TDataSetProvider
    DataSet = sq_LCStat
    Left = 168
    Top = 264
  end
  object cds_LCStat: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DiameterStart'
        DataType = ftFMTBcd
        Precision = 18
        Size = 1
      end
      item
        Name = 'DiameterEnd'
        DataType = ftFMTBcd
        Precision = 18
        Size = 1
      end
      item
        Name = 'TK'
        DataType = ftString
        Size = 28
      end
      item
        Name = 'LogClassNo'
        DataType = ftInteger
      end
      item
        Name = 'M3TOPris'
        DataType = ftFloat
      end
      item
        Name = 'M3TO'
        DataType = ftFloat
      end
      item
        Name = 'STOCK'
        DataType = ftInteger
      end
      item
        Name = 'LogValue'
        DataType = ftFloat
      end
      item
        Name = 'LogValueWithProd'
        DataType = ftFloat
      end
      item
        Name = 'TS'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UtanProdKost'
        DataType = ftFloat
      end
      item
        Name = 'MedProdKost'
        DataType = ftFloat
      end
      item
        Name = 'MEDELL'#196'NGD'
        DataType = ftFMTBcd
        Precision = 32
        Size = 6
      end
      item
        Name = 'MEDELDIA'
        DataType = ftFMTBcd
        Precision = 32
        Size = 6
      end>
    IndexDefs = <
      item
        Name = 'cds_LCStatIndex1'
        Fields = 'DiameterStart'
      end>
    IndexFieldNames = 'DiameterStart'
    Params = <>
    ProviderName = 'dsp_LCStat'
    StoreDefs = True
    Left = 168
    Top = 296
    object cds_LCStatLogClassNo: TIntegerField
      FieldName = 'LogClassNo'
    end
    object cds_LCStatSTOCK: TIntegerField
      DisplayLabel = 'Stock'
      FieldName = 'STOCK'
      DisplayFormat = '##########'
    end
    object cds_LCStatM3TO: TFloatField
      DisplayLabel = 'm3to (verk)'
      FieldName = 'M3TO'
      DisplayFormat = '#,###,###.000'
    end
    object cds_LCStatTK: TStringField
      FieldName = 'TK'
      Size = 28
    end
    object cds_LCStatDiameterStart: TFMTBCDField
      DisplayLabel = 'Fom'
      FieldName = 'DiameterStart'
      Precision = 18
      Size = 1
    end
    object cds_LCStatDiameterEnd: TFMTBCDField
      DisplayLabel = 'Tom'
      FieldName = 'DiameterEnd'
      Precision = 18
      Size = 1
    end
    object cds_LCStatTS: TStringField
      DisplayLabel = 'Tr'#228'slag'
      FieldName = 'TS'
      Size = 30
    end
    object cds_LCStatLogValue: TFloatField
      DisplayLabel = 'Timmer'
      FieldName = 'LogValue'
      DisplayFormat = '#,###,###.00'
    end
    object cds_LCStatLogValueWithProd: TFloatField
      DisplayLabel = 'Timmer + prod.kost'
      FieldName = 'LogValueWithProd'
      DisplayFormat = '#,###,###.00'
    end
    object cds_LCStatUtanProdKost: TFloatField
      DisplayLabel = 'Timmer'
      FieldName = 'UtanProdKost'
      DisplayFormat = '#,###,###.0'
    end
    object cds_LCStatMedProdKost: TFloatField
      DisplayLabel = 'Timmer + prod.kost'
      FieldName = 'MedProdKost'
      DisplayFormat = '#,###,###.0'
    end
    object cds_LCStatMEDELLNGD: TFMTBCDField
      DisplayLabel = 'L'#228'ngd'
      FieldName = 'MEDELL'#196'NGD'
      DisplayFormat = '#,###,###.000'
      Precision = 32
      Size = 6
    end
    object cds_LCStatMEDELDIA: TFMTBCDField
      DisplayLabel = 'Diameter'
      FieldName = 'MEDELDIA'
      DisplayFormat = '#,###,###.00'
      Precision = 32
      Size = 6
    end
    object cds_LCStatM3TOPris: TFloatField
      DisplayLabel = 'm3to (pris)'
      FieldName = 'M3TOPris'
      DisplayFormat = '#,###,###.000'
    end
  end
  object ds_LCStat: TDataSource
    DataSet = cds_LCStat
    Left = 168
    Top = 328
  end
  object mtLogSupplier: TkbmMemTable
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
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 232
    Top = 264
    object mtLogSupplierClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object mtLogSupplierLEVERANTR: TStringField
      FieldKind = fkLookup
      FieldName = 'LEVERANT'#214'R'
      LookupDataSet = dmsContact.cds_SchNameByRole
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'SearchName'
      KeyFields = 'ClientNo'
      Size = 80
      Lookup = True
    end
  end
  object dsLogSupplier: TDataSource
    DataSet = mtLogSupplier
    Left = 232
    Top = 304
  end
  object mtLogClass: TkbmMemTable
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
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 272
    Top = 264
    object mtLogClassLogClassNo: TIntegerField
      FieldName = 'LogClassNo'
    end
    object mtLogClassTIMMERKLASS: TStringField
      FieldKind = fkLookup
      FieldName = 'TIMMERKLASS'
      LookupDataSet = dmSawOrder.cds_LogClass
      LookupKeyFields = 'LogClassNo'
      LookupResultField = 'LogClassID'
      KeyFields = 'LogClassNo'
      Size = 5
      Lookup = True
    end
  end
  object dsLogClass: TDataSource
    DataSet = mtLogClass
    Left = 272
    Top = 304
  end
  object mtSpecies: TkbmMemTable
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
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 360
    Top = 264
    object mtSpeciesSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
    end
    object mtSpeciesSpeciesName: TStringField
      FieldKind = fkLookup
      FieldName = 'SpeciesName'
      LookupDataSet = dmsProduct.cdsSpecies
      LookupKeyFields = 'LogSpeciesCode'
      LookupResultField = 'SpeciesName'
      KeyFields = 'SpeciesNo'
      Size = 30
      Lookup = True
    end
  end
  object ds_Species: TDataSource
    DataSet = mtSpecies
    Left = 360
    Top = 304
  end
  object mtInmatningsKV: TkbmMemTable
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
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 400
    Top = 264
    object mtInmatningsKVGradeName: TStringField
      DisplayLabel = 'INM'#196'TNINGSKVALITET'
      FieldKind = fkLookup
      FieldName = 'GradeName'
      LookupDataSet = dmLogPrice.cds_InmatningsKV
      LookupKeyFields = 'InmatningsKvalitetNo'
      LookupResultField = 'KVNamn'
      KeyFields = 'InmatningsKVNo'
      Size = 30
      Lookup = True
    end
    object mtInmatningsKVInmatningsKVNo: TIntegerField
      FieldName = 'InmatningsKVNo'
    end
  end
  object ds_InmatningsKV: TDataSource
    DataSet = mtInmatningsKV
    Left = 400
    Top = 304
  end
  object mtSorteringsKV: TkbmMemTable
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
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 448
    Top = 264
    object mtSorteringsKVSorteringsKVNamn: TStringField
      DisplayLabel = 'SORTERINGSKVALITET'
      FieldKind = fkLookup
      FieldName = 'SorteringsKVNamn'
      LookupDataSet = dmSawOrder.cds_SorteringsKV
      LookupKeyFields = 'SorteringsKvalitetNo'
      LookupResultField = 'KVNamn'
      KeyFields = 'SorteringsKVNo'
      Size = 30
      Lookup = True
    end
    object mtSorteringsKVSorteringsKVNo: TIntegerField
      FieldName = 'SorteringsKVNo'
    end
  end
  object ds_SorteringsKV: TDataSource
    DataSet = mtSorteringsKV
    Left = 448
    Top = 304
  end
  object sq_DiaClass: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select LTRIM(Str(MinDia))+'#39'-'#39'+LTRIM(Str(MaxDia)) AS DIA,'
      'DiaClassNo FROM DiaClass')
    SQLConnection = dmsConnector.SQLConnection
    Left = 80
    Top = 236
  end
  object dsp_DiaClass: TDataSetProvider
    DataSet = sq_DiaClass
    Left = 80
    Top = 268
  end
  object cds_DiaClass: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_DiaClass'
    Left = 80
    Top = 304
    object cds_DiaClassDIA: TStringField
      FieldName = 'DIA'
      Size = 21
    end
    object cds_DiaClassDiaClassNo: TIntegerField
      FieldName = 'DiaClassNo'
    end
  end
  object ds_DiaClass: TDataSource
    DataSet = cds_DiaClass
    Left = 80
    Top = 332
  end
  object mtDiaClass: TkbmMemTable
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
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 320
    Top = 264
    object mtDiaClassDiaClassNo: TIntegerField
      FieldName = 'DiaClassNo'
    end
    object mtDiaClassDIAMETERKLASS: TStringField
      FieldKind = fkLookup
      FieldName = 'DIAMETERKLASS'
      LookupDataSet = cds_DiaClass
      LookupKeyFields = 'DiaClassNo'
      LookupResultField = 'DIA'
      KeyFields = 'DiaClassNo'
      Size = 21
      Lookup = True
    end
  end
  object dsmtDiaClass: TDataSource
    DataSet = mtDiaClass
    Left = 320
    Top = 304
  end
  object sq_DiaStat: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDateTime
        Name = 'ProdDateStart'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'ProdDateEnd'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select MinDia, RTRIM(LC.MinDia)+'#39'-'#39'+LTRIM(Str(MaxDia)) AS TK, '
      'CONVERT(Float, SUM(LCS.Realm3to)) as M3TO,'
      'SUM(LCS.NoOfLogs) AS STOCK'
      'from dbo.LogClassStatistics LCS'
      'Inner Join dbo.DiaClass LC ON LC.DiaClassNo = LCS.DiaClassNo'
      'WHERE LCS.ProdDate >= :ProdDateStart'
      'AND LCS.ProdDate <= :ProdDateEnd'
      ''
      'GROUP BY MinDia, MaxDia Order By MinDia')
    SQLConnection = dmsConnector.SQLConnection
    Left = 512
    Top = 248
  end
  object dsp_DiaStat: TDataSetProvider
    DataSet = sq_DiaStat
    Left = 512
    Top = 280
  end
  object cds_DiaStat: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'MinDia'
        DataType = ftFMTBcd
        Precision = 18
      end
      item
        Name = 'TK'
        DataType = ftString
        Size = 51
      end
      item
        Name = 'M3TO'
        DataType = ftFloat
      end
      item
        Name = 'STOCK'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'cds_LCStatIndex1'
        Fields = 'MinDia'
      end>
    IndexFieldNames = 'MinDia'
    Params = <>
    ProviderName = 'dsp_DiaStat'
    StoreDefs = True
    Left = 512
    Top = 328
    object cds_DiaStatSTOCK: TIntegerField
      FieldName = 'STOCK'
    end
    object cds_DiaStatM3TO: TFloatField
      FieldName = 'M3TO'
    end
    object cds_DiaStatTK: TStringField
      FieldName = 'TK'
      Size = 28
    end
    object cds_DiaStatMinDia: TFMTBCDField
      FieldName = 'MinDia'
      Precision = 18
      Size = 0
    end
  end
  object ds_DiaStat: TDataSource
    DataSet = cds_DiaStat
    Left = 512
    Top = 376
  end
  object sq_TotLev: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select C.SearchName AS LEV,'
      'LCS.Sortiment,'
      'CONVERT(Float, SUM(LCS.Pricem3to)) as M3TO,'
      'CONVERT(Float, SUM(LCS.Realm3to)) as RealM3TO,'
      'SUM(LCS.NoOfLogs) AS STOCK,'
      'CONVERT(Float, SUM(LCS.Pricem3to * LCS.Price)) AS LogValue,'
      
        'CONVERT(Float, SUM(LCS.PriceDiameter * LCS.NoOfLogs) / SUM(LCS.N' +
        'oOfLogs)) as avgdia,'
      
        'CONVERT(Float, SUM(LCS.RealDiameter * LCS.NoOfLogs) / SUM(LCS.No' +
        'OfLogs)) as avgrealdia,'
      
        'CONVERT(Float, SUM(LCS.Pricem3to * LCS.Price) / SUM(LCS.Pricem3t' +
        'o)) as avgprice,'
      
        'CONVERT(Float, SUM(LCS.Realm3to * LCS.PriceLength) / SUM(LCS.Rea' +
        'lm3to)) as avglength,'
      
        'CONVERT(Float, SUM(LCS.Realm3to * LCS.RemaActualLength) / SUM(LC' +
        'S.Realm3to)) as Realavglength'
      'from dbo.LogClassStatistics LCS'
      'Inner Join dbo.Client C on C.ClientNo = LCS.ClientNo'
      'WHERE LogDataBufferNo = -1'
      ''
      'GROUP BY C.SearchName, LCS.Sortiment'
      '')
    SQLConnection = dmsConnector.SQLConnection
    Left = 584
    Top = 268
  end
  object dsp_TotLev: TDataSetProvider
    DataSet = sq_TotLev
    Left = 584
    Top = 308
  end
  object cds_TotLev: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_TotLev'
    Left = 584
    Top = 364
    object cds_TotLevLEV: TStringField
      DisplayLabel = 'Leverant'#246'r'
      FieldName = 'LEV'
      Size = 80
    end
    object cds_TotLevM3TO: TFloatField
      DisplayLabel = 'm3to (pris)'
      FieldName = 'M3TO'
      DisplayFormat = '#,###,###,###.00'
    end
    object cds_TotLevSTOCK: TIntegerField
      DisplayLabel = 'Stock'
      FieldName = 'STOCK'
    end
    object cds_TotLevLogValue: TFloatField
      DisplayLabel = 'V'#228'rde'
      FieldName = 'LogValue'
      DisplayFormat = '#,###,###,###.00'
    end
    object cds_TotLevavgdia: TFloatField
      DisplayLabel = 'Med.dia (pris)'
      FieldName = 'avgdia'
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_TotLevavgprice: TFloatField
      DisplayLabel = 'Med.pris'
      FieldName = 'avgprice'
      DisplayFormat = '#,###,###,###.00'
    end
    object cds_TotLevavglength: TFloatField
      DisplayLabel = 'Med.l'#228'ngd (pris)'
      FieldName = 'avglength'
      DisplayFormat = '#,###.00'
    end
    object cds_TotLevRealM3TO: TFloatField
      DisplayLabel = 'm3to (verk)'
      FieldName = 'RealM3TO'
      DisplayFormat = '#,###,###,###.00'
    end
    object cds_TotLevavgrealdia: TFloatField
      DisplayLabel = 'Med.dia (verk)'
      FieldName = 'avgrealdia'
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_TotLevRealavglength: TFloatField
      DisplayLabel = 'Med.l'#228'ngd (verk)'
      FieldName = 'Realavglength'
      DisplayFormat = '#,###.00'
    end
    object cds_TotLevSortiment: TStringField
      FieldName = 'Sortiment'
      Size = 2
    end
  end
  object ds_TotLev: TDataSource
    DataSet = cds_TotLev
    Left = 584
    Top = 420
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 688
    Top = 386
    object acRefresh: TAction
      Caption = 'Uppdatera'
      ImageIndex = 6
      OnExecute = acRefreshExecute
    end
    object acClose: TAction
      Caption = 'St'#228'ng'
      ImageIndex = 1
      OnExecute = acCloseExecute
    end
    object acHideFilter: TAction
      Caption = 'G'#246'm filter'
      OnExecute = acHideFilterExecute
    end
    object acPrintTabellPerTK: TAction
      Caption = 'Skriv ut'
      ImageIndex = 7
      OnExecute = acPrintTabellPerTKExecute
    end
    object acPrintTabellPerDK: TAction
      Caption = 'Skriv ut'
      ImageIndex = 7
      OnExecute = acPrintTabellPerDKExecute
    end
  end
  object sq_DKStat: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDateTime
        Name = 'ProdDateStart'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'ProdDateEnd'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select DK.MinDia AS FOM, DK.MaxDia AS TOM,'
      'IK.KVNamn AS INM'#196'TNINGSKV, LCS.DiaClassNo,'
      'CONVERT(Float, SUM(LCS.Realm3to)) as M3TO,'
      'CONVERT(Float, SUM(LCS.PriceM3TO)) as M3TOPris,'
      ''
      'SUM(LCS.PriceM3TO * LCS.Price) AS TIMMER,'
      
        'SUM(LCS.PriceM3TO * (LCS.Price + LCS.ProductionCostPerPricem3To)' +
        ') AS TIMMERPLUSPRODUKTION,'
      'SUM(LCS.NoOfLogs) AS STOCK,'
      'S.SpeciesName AS TS,'
      ''
      
        'SUM(LCS.PriceM3TO * LCS.Price)/SUM(LCS.PriceM3TO) AS UtanProdKos' +
        't,'
      
        'SUM(LCS.PriceM3TO * (LCS.Price+LCS.ProductionCostPerPricem3To))/' +
        'SUM(LCS.PriceM3TO) AS MedProdKost,'
      'SUM(LCS.PriceLength)/SUM(LCS.NoOfLogs) AS MEDELL'#196'NGD,'
      'SUM(LCS.PriceDiameter)/SUM(LCS.NoOfLogs) AS MEDELDIA'
      ''
      'from dbo.LogClassStatistics LCS'
      'Inner Join dbo.DiaClass DK ON DK.DiaClassNo = LCS.DiaClassNo'
      'Inner Join dbo.Species S ON S.LogSpeciesCode = LCS.SpeciesNo'
      
        'Inner Join dbo.InmatningsKvalitet IK on IK.InmatningsKvalitetNo ' +
        '= LCS.InmatningsKV'
      'WHERE LCS.ProdDate >= :ProdDateStart'
      'AND LCS.ProdDate <= :ProdDateEnd'
      ''
      
        'GROUP BY LCS.DiaClassNo, DK.MinDia, DK.MaxDia, IK.KVNamn, S.Spec' +
        'iesName')
    SQLConnection = dmsConnector.SQLConnection
    Left = 128
    Top = 233
  end
  object dsp_DKStat: TDataSetProvider
    DataSet = sq_DKStat
    Left = 128
    Top = 265
  end
  object cds_DKStat: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_DKStat'
    Left = 128
    Top = 297
    object cds_DKStatFOM: TFMTBCDField
      DisplayLabel = 'fom'
      FieldName = 'FOM'
      Precision = 18
      Size = 0
    end
    object cds_DKStatTOM: TFMTBCDField
      DisplayLabel = 'tom'
      FieldName = 'TOM'
      Precision = 18
      Size = 0
    end
    object cds_DKStatINMTNINGSKV: TStringField
      DisplayLabel = 'KV'
      FieldName = 'INM'#196'TNINGSKV'
      Size = 30
    end
    object cds_DKStatM3TO: TFloatField
      DisplayLabel = 'm3to (verk)'
      FieldName = 'M3TO'
      DisplayFormat = '#,###,###,###.000'
    end
    object cds_DKStatSTOCK: TIntegerField
      DisplayLabel = 'Stock'
      FieldName = 'STOCK'
      DisplayFormat = '##########'
    end
    object cds_DKStatDiaClassNo: TIntegerField
      FieldName = 'DiaClassNo'
    end
    object cds_DKStatTS: TStringField
      FieldName = 'TS'
      Size = 30
    end
    object cds_DKStatTIMMER: TFloatField
      DisplayLabel = 'Timmer'
      FieldName = 'TIMMER'
      DisplayFormat = '#,###,###,###.00'
    end
    object cds_DKStatTIMMERPLUSPRODUKTION: TFloatField
      DisplayLabel = 'Timmer (+ produktion)'
      FieldName = 'TIMMERPLUSPRODUKTION'
      DisplayFormat = '#,###,###,###.00'
    end
    object cds_DKStatM3TOPris: TFloatField
      DisplayLabel = 'm3to (pris)'
      FieldName = 'M3TOPris'
      DisplayFormat = '#,###,###.000'
    end
    object cds_DKStatUtanProdKost: TFloatField
      DisplayLabel = 'Timmer'
      FieldName = 'UtanProdKost'
      DisplayFormat = '#,###,###.0'
    end
    object cds_DKStatMedProdKost: TFloatField
      DisplayLabel = 'Timmer (+ prod)'
      FieldName = 'MedProdKost'
      DisplayFormat = '#,###,###.0'
    end
    object cds_DKStatMEDELLNGD: TFMTBCDField
      DisplayLabel = 'L'#228'ngd'
      FieldName = 'MEDELL'#196'NGD'
      DisplayFormat = '#,###,###.000'
      Precision = 32
      Size = 6
    end
    object cds_DKStatMEDELDIA: TFMTBCDField
      DisplayLabel = 'Diameter'
      FieldName = 'MEDELDIA'
      DisplayFormat = '#,###,###.00'
      Precision = 32
      Size = 6
    end
  end
  object ds_DKStat: TDataSource
    DataSet = cds_DKStat
    Left = 128
    Top = 329
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 232
    Top = 353
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = grdLogStat
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 215900
      PrinterPage.PageSize.Y = 279400
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link2: TdxGridReportLink
      Component = grdDKStat
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 215900
      PrinterPage.PageSize.Y = 279400
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
end
