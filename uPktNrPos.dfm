object fPktNrPos: TfPktNrPos
  Left = 177
  Top = 136
  Caption = 'Leverant'#246'rspaketnrkoder '
  ClientHeight = 427
  ClientWidth = 905
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 905
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object bbApplyChanges: TBitBtn
      Left = 16
      Top = 16
      Width = 91
      Height = 25
      Caption = 'Spara '#228'ndringar'
      TabOrder = 0
      OnClick = bbApplyChangesClick
    end
    object bbCancelChanges: TBitBtn
      Left = 120
      Top = 16
      Width = 89
      Height = 25
      Caption = #197'ngra '#228'ndringar'
      TabOrder = 1
      OnClick = bbCancelChangesClick
    end
  end
  object grdLevPaketkoder: TcxGrid
    Left = 0
    Top = 57
    Width = 905
    Height = 370
    Align = alClient
    TabOrder = 1
    object grdLevPaketkoderDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_Verk
      DataController.KeyFieldNames = 'ClientNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdLevPaketkoderDBTableView1ClientNo: TcxGridDBColumn
        DataBinding.FieldName = 'ClientNo'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 61
      end
      object grdLevPaketkoderDBTableView1ROLL: TcxGridDBColumn
        DataBinding.FieldName = 'ROLL'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 117
      end
      object grdLevPaketkoderDBTableView1ClientName: TcxGridDBColumn
        DataBinding.FieldName = 'ClientName'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 124
      end
      object grdLevPaketkoderDBTableView1PktNrLevKod: TcxGridDBColumn
        DataBinding.FieldName = 'PktNrLevKod'
        Width = 73
      end
      object grdLevPaketkoderDBTableView1PaketNoPos: TcxGridDBColumn
        DataBinding.FieldName = 'PaketNoPos'
        Width = 133
      end
      object grdLevPaketkoderDBTableView1PaketNoLength: TcxGridDBColumn
        DataBinding.FieldName = 'PaketNoLength'
        Width = 135
      end
      object grdLevPaketkoderDBTableView1SupplierCodePos: TcxGridDBColumn
        DataBinding.FieldName = 'SupplierCodePos'
        Width = 133
      end
      object grdLevPaketkoderDBTableView1SupplierCodeLength: TcxGridDBColumn
        DataBinding.FieldName = 'SupplierCodeLength'
        Width = 135
      end
    end
    object grdLevPaketkoderLevel1: TcxGridLevel
      GridView = grdLevPaketkoderDBTableView1
    end
  end
  object ds_Verk: TDataSource
    DataSet = cds_Verk
    Left = 328
    Top = 216
  end
  object cds_Verk: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'select C.ClientNo, C.ClientName, C.PktNrLevKod,'
      
        'C.PaketNoPos, C.PaketNoLength, C.SupplierCodePos, C.SupplierCode' +
        'Length,'
      'RT.RoleDescription AS ROLL'
      ''
      'FROM   dbo.Client        C'
      '       INNER JOIN dbo.ClientRole    R ON R.ClientNo = C.ClientNo'
      '       INNER JOIN dbo.RoleType    RT ON RT.RoleType = R.RoleType'
      ''
      'WHERE RT.RoleType = 9       '
      ''
      'Order by C.clientName'
      '')
    Left = 328
    Top = 112
    object cds_VerkClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_VerkClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      ProviderFlags = []
      Size = 80
    end
    object cds_VerkPktNrLevKod: TStringField
      FieldName = 'PktNrLevKod'
      Origin = 'PktNrLevKod'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_VerkPaketNoPos: TIntegerField
      FieldName = 'PaketNoPos'
      Origin = 'PaketNoPos'
      ProviderFlags = [pfInUpdate]
    end
    object cds_VerkPaketNoLength: TIntegerField
      FieldName = 'PaketNoLength'
      Origin = 'PaketNoLength'
      ProviderFlags = [pfInUpdate]
    end
    object cds_VerkSupplierCodePos: TIntegerField
      FieldName = 'SupplierCodePos'
      Origin = 'SupplierCodePos'
      ProviderFlags = [pfInUpdate]
    end
    object cds_VerkSupplierCodeLength: TIntegerField
      FieldName = 'SupplierCodeLength'
      Origin = 'SupplierCodeLength'
      ProviderFlags = [pfInUpdate]
    end
    object cds_VerkROLL: TStringField
      FieldName = 'ROLL'
      Origin = 'ROLL'
      ProviderFlags = []
      FixedChar = True
    end
  end
  object siLangLinked_fPktNrPos: TsiLangLinked
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
    Left = 448
    Top = 216
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
