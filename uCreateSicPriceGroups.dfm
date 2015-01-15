object fCreateSicPriceGroups: TfCreateSicPriceGroups
  Left = 205
  Top = 120
  Caption = 'Tilldela produkter prisgrupper'
  ClientHeight = 557
  ClientWidth = 1277
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1277
    Height = 57
    Align = alTop
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 559
      Top = 10
      Width = 186
      Height = 41
      Action = acCopyKalkylPris
      TabOrder = 0
    end
    object cxButton3: TcxButton
      Left = 16
      Top = 10
      Width = 177
      Height = 41
      Action = acRefresh
      TabOrder = 1
    end
    object cxButton4: TcxButton
      Left = 199
      Top = 10
      Width = 170
      Height = 41
      Action = acSaveToStandardPriceGroup
      TabOrder = 2
    end
    object cxButton5: TcxButton
      Left = 375
      Top = 10
      Width = 178
      Height = 41
      Action = acPrintTable
      TabOrder = 3
    end
    object cxButton6: TcxButton
      Left = 751
      Top = 10
      Width = 194
      Height = 41
      Action = acShowPackageCost
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 516
    Width = 1277
    Height = 41
    Align = alBottom
    TabOrder = 1
  end
  object grdSixPriceGroup: TcxGrid
    Left = 0
    Top = 57
    Width = 1277
    Height = 459
    Align = alClient
    TabOrder = 2
    object grdSixPriceGroupDBTableView1: TcxGridDBTableView
      OnDblClick = grdSixPriceGroupDBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmInvCtrl.ds_SicPG
      DataController.KeyFieldNames = 'IC_grpNo;ProductNo;OwnerNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,###,###,###.000'
          Kind = skSum
          FieldName = 'AM3'
          Column = grdSixPriceGroupDBTableView1AM3
        end
        item
          Format = '#,###,###,###.000'
          Kind = skSum
          FieldName = 'NM3'
          Column = grdSixPriceGroupDBTableView1NM3
        end
        item
          Format = '#,###,###,###'
          Kind = skSum
          FieldName = 'STYCK'
          Column = grdSixPriceGroupDBTableView1STYCK
        end
        item
          Format = '#,###,###,###,###.00'
          Kind = skSum
          FieldName = 'RowValue'
          Column = grdSixPriceGroupDBTableView1RowValue
        end>
      DataController.Summary.SummaryGroups = <>
      DataController.Summary.Options = [soMultipleSelectedRecords]
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.PullFocusing = True
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object grdSixPriceGroupDBTableView1AT: TcxGridDBColumn
        DataBinding.FieldName = 'AT'
        Width = 37
      end
      object grdSixPriceGroupDBTableView1AB: TcxGridDBColumn
        DataBinding.FieldName = 'AB'
        Width = 44
      end
      object grdSixPriceGroupDBTableView1TS: TcxGridDBColumn
        DataBinding.FieldName = 'TS'
        Width = 106
      end
      object grdSixPriceGroupDBTableView1KV: TcxGridDBColumn
        DataBinding.FieldName = 'KV'
        Width = 106
      end
      object grdSixPriceGroupDBTableView1UT: TcxGridDBColumn
        DataBinding.FieldName = 'UT'
        Width = 107
      end
      object grdSixPriceGroupDBTableView1IMP: TcxGridDBColumn
        DataBinding.FieldName = 'IMP'
        Width = 71
      end
      object grdSixPriceGroupDBTableView1PRODUKT: TcxGridDBColumn
        DataBinding.FieldName = 'PRODUKT'
        Width = 267
      end
      object grdSixPriceGroupDBTableView1STYCK: TcxGridDBColumn
        DataBinding.FieldName = 'STYCK'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.ReadOnly = True
        Width = 61
      end
      object grdSixPriceGroupDBTableView1AM3: TcxGridDBColumn
        DataBinding.FieldName = 'AM3'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.ReadOnly = True
        Width = 57
      end
      object grdSixPriceGroupDBTableView1NM3: TcxGridDBColumn
        DataBinding.FieldName = 'NM3'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.ReadOnly = True
        Width = 50
      end
      object grdSixPriceGroupDBTableView1Prisgrupp: TcxGridDBColumn
        DataBinding.FieldName = 'Prisgrupp'
        Width = 80
      end
      object grdSixPriceGroupDBTableView1ProductNo: TcxGridDBColumn
        DataBinding.FieldName = 'ProductNo'
        Visible = False
        VisibleForCustomization = False
        Width = 20
      end
      object grdSixPriceGroupDBTableView1IC_grpNo: TcxGridDBColumn
        DataBinding.FieldName = 'IC_grpNo'
        Visible = False
        VisibleForCustomization = False
        Width = 20
      end
      object grdSixPriceGroupDBTableView1OwnerNo: TcxGridDBColumn
        DataBinding.FieldName = 'OwnerNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        VisibleForCustomization = False
        Width = 25
      end
      object grdSixPriceGroupDBTableView1PrisPerNM3: TcxGridDBColumn
        Caption = 'Pris/NM3'
        DataBinding.FieldName = 'PricePerNM3'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object grdSixPriceGroupDBTableView1RowValue: TcxGridDBColumn
        DataBinding.FieldName = 'RowValue'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ReadOnly = True
      end
      object grdSixPriceGroupDBTableView1KalkylPris: TcxGridDBColumn
        DataBinding.FieldName = 'KalkylPris'
        PropertiesClassName = 'TcxLabelProperties'
      end
    end
    object grdSixPriceGroupLevel1: TcxGridLevel
      GridView = grdSixPriceGroupDBTableView1
    end
  end
  object ActionList1: TActionList
    Images = dmsConnector.Images2424
    Left = 416
    Top = 152
    object acPriceGroups: TAction
      Caption = 'Administrera prisgrupper'
      ImageIndex = 4
      OnExecute = acPriceGroupsExecute
    end
    object acAddSelectedProductsToPriceGroup: TAction
      Caption = 'Tilldela markerade rader en prisgrupp'
      ImageIndex = 19
      OnExecute = acAddSelectedProductsToPriceGroupExecute
    end
    object acRefresh: TAction
      Caption = 'Uppdatera'
      ImageIndex = 0
      OnExecute = acRefreshExecute
    end
    object acSaveToStandardPriceGroup: TAction
      Caption = 'Kalylera medelpris'
      ImageIndex = 6
      OnExecute = acSaveToStandardPriceGroupExecute
    end
    object acPrintTable: TAction
      Caption = 'Skriv ut'
      ImageIndex = 8
      ShortCut = 119
      OnExecute = acPrintTableExecute
    end
    object acShowPackageCost: TAction
      Caption = 'Visa kostnader per paket'
      ImageIndex = 3
      OnExecute = acShowPackageCostExecute
    end
    object acCopyKalkylPris: TAction
      Caption = 'Kopiera kalkylpris'
      ImageIndex = 12
      OnExecute = acCopyKalkylPrisExecute
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdSixPriceGroup
    PopupMenus = <>
    Left = 416
    Top = 88
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 416
    Top = 216
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = grdSixPriceGroup
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
        '[Page # of Pages #]')
      PrinterPage.PageHeader.LeftTitle.Strings = (
        '[Machine Name][User Name][Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  object siLangLinked_fCreateSicPriceGroups: TsiLangLinked
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
    Left = 632
    Top = 280
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
