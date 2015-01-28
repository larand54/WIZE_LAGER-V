object frmProductionUnit: TfrmProductionUnit
  Left = 198
  Top = 106
  Caption = 'M'#228'tpunkter verk'
  ClientHeight = 340
  ClientWidth = 921
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 921
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object bbInsert: TBitBtn
      Left = 24
      Top = 40
      Width = 75
      Height = 25
      Caption = 'L'#228'gg till rad'
      TabOrder = 0
      OnClick = bbInsertClick
    end
    object bbRemove: TBitBtn
      Left = 112
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Ta bort rad'
      TabOrder = 1
      OnClick = bbRemoveClick
    end
    object bbCancelRow: TBitBtn
      Left = 192
      Top = 40
      Width = 75
      Height = 25
      Caption = #197'ngra rad'
      TabOrder = 2
      OnClick = bbCancelRowClick
    end
    object bbApplyChanges: TBitBtn
      Left = 416
      Top = 40
      Width = 91
      Height = 25
      Caption = 'Spara '#228'ndringar'
      TabOrder = 3
      OnClick = bbApplyChangesClick
    end
    object bbCancelChanges: TBitBtn
      Left = 520
      Top = 40
      Width = 89
      Height = 25
      Caption = #197'ngra '#228'ndringar'
      TabOrder = 4
      OnClick = bbCancelChangesClick
    end
    object cmbClients: TcxComboBox
      Left = 24
      Top = 8
      TabOrder = 5
      Text = 'Select client'
      Width = 121
    end
  end
  object grdProductionUnits: TcxGrid
    Left = 0
    Top = 73
    Width = 921
    Height = 267
    Align = alClient
    TabOrder = 1
    object grdProductionUnitsDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmsContact.ds_ProductionUnit
      DataController.KeyFieldNames = 'ClientNo;RegPoint'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdProductionUnitsDBTableView1ProductionUnitNo: TcxGridDBColumn
        DataBinding.FieldName = 'ProductionUnitNo'
      end
      object grdProductionUnitsDBTableView1ProductionUnitName: TcxGridDBColumn
        DataBinding.FieldName = 'ProductionUnitName'
      end
      object grdProductionUnitsDBTableView1ClientNo: TcxGridDBColumn
        DataBinding.FieldName = 'ClientNo'
      end
      object grdProductionUnitsDBTableView1SequenceNo: TcxGridDBColumn
        DataBinding.FieldName = 'SequenceNo'
      end
      object grdProductionUnitsDBTableView1CreatedUser: TcxGridDBColumn
        DataBinding.FieldName = 'CreatedUser'
      end
      object grdProductionUnitsDBTableView1ModifiedUser: TcxGridDBColumn
        DataBinding.FieldName = 'ModifiedUser'
      end
      object grdProductionUnitsDBTableView1DateCreated: TcxGridDBColumn
        DataBinding.FieldName = 'DateCreated'
      end
      object grdProductionUnitsDBTableView1LogicalInventoryPointNo: TcxGridDBColumn
        DataBinding.FieldName = 'LogicalInventoryPointNo'
      end
      object grdProductionUnitsDBTableView1RegistrationPointNo: TcxGridDBColumn
        DataBinding.FieldName = 'RegistrationPointNo'
      end
      object grdProductionUnitsDBTableView1RegPoint: TcxGridDBColumn
        DataBinding.FieldName = 'RegPoint'
      end
      object grdProductionUnitsDBTableView1OnSticks: TcxGridDBColumn
        DataBinding.FieldName = 'OnSticks'
      end
      object grdProductionUnitsDBTableView1SurfacingNo: TcxGridDBColumn
        DataBinding.FieldName = 'SurfacingNo'
      end
      object grdProductionUnitsDBTableView1DIM_DIV: TcxGridDBColumn
        DataBinding.FieldName = 'DIM_DIV'
      end
    end
    object grdProductionUnitsLevel1: TcxGridLevel
      GridView = grdProductionUnitsDBTableView1
    end
  end
  object siLangLinked_frmProductionUnit: TsiLangLinked
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
    Left = 456
    Top = 176
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A004900440053005F00300001005600E400
      6C006A00200065007400740020007600650072006B00010001000D000A007300
      74004F00740068006500720053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A007300740043006F006C006C00650063007400
      69006F006E0073005F0055006E00690063006F00640065000D000A0073007400
      430068006100720053006500740073005F0055006E00690063006F0064006500
      0D000A00}
  end
end
