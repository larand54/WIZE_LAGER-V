object fSelectLoadPlan: TfSelectLoadPlan
  Left = 241
  Top = 105
  Caption = 'V'#228'lj Lastplan'
  ClientHeight = 462
  ClientWidth = 972
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object grdLoadHdr: TcxGrid
    Left = 0
    Top = 0
    Width = 972
    Height = 420
    Align = alClient
    TabOrder = 0
    object grdLoadHdrDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmLoadPlan.ds_LoadPlanHdrList
      DataController.KeyFieldNames = 'LoadingNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdLoadHdrDBTableView1LoadingNo: TcxGridDBColumn
        DataBinding.FieldName = 'LoadingNo'
        SortIndex = 0
        SortOrder = soDescending
        Width = 99
      end
      object grdLoadHdrDBTableView1Status: TcxGridDBColumn
        DataBinding.FieldName = 'Status'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = images1616
        Properties.Items = <
          item
            Description = 'NY'
            ImageIndex = 0
            Value = 0
          end
          item
            Description = 'AKTIV'
            ImageIndex = 1
            Value = 1
          end
          item
            Description = 'AVSLUTAD'
            ImageIndex = 2
            Value = 2
          end>
        Width = 86
      end
      object grdLoadHdrDBTableView1ETD: TcxGridDBColumn
        DataBinding.FieldName = 'ETD'
        Width = 106
      end
      object grdLoadHdrDBTableView1DateCreated: TcxGridDBColumn
        Caption = 'Skapad'
        DataBinding.FieldName = 'DateCreated'
        Width = 232
      end
      object grdLoadHdrDBTableView1PrintDate: TcxGridDBColumn
        DataBinding.FieldName = 'PrintDate'
        Visible = False
        Width = 163
      end
      object grdLoadHdrDBTableView1Note: TcxGridDBColumn
        DataBinding.FieldName = 'Note'
        Width = 271
      end
      object grdLoadHdrDBTableView1BT: TcxGridDBColumn
        DataBinding.FieldName = 'CarrierName'
        Width = 102
      end
    end
    object grdLoadHdrLevel1: TcxGridLevel
      GridView = grdLoadHdrDBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 420
    Width = 972
    Height = 42
    Align = alBottom
    TabOrder = 1
    object bbOK: TBitBtn
      Left = 352
      Top = 8
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object bbCancel: TBitBtn
      Left = 440
      Top = 8
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object images1616: TImageList
    Left = 392
    Top = 176
    Bitmap = {
      494C010103000500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400000000000000000000000000000000000000
      000000000000000000001094CE001094CE001094CE001094CE001094CE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400000000000000000000000000C6A59C00FFEF
      D600F7E7C600F7DEBD00F7DEB500EFD6AD00F7D6A500EFCE9C00EFCE9400EFCE
      9400EFCE9400F7D69C00B5848400000000000000000000000000000000000000
      000042ADBD0042ADBD0042CEEF005ADEFF005ADEFF005ADEFF0042CEEF001094
      CE001094CE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B5848400000000000000000000000000C6A59C00FFEF
      D600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600EFCE9C00B58484000000000000000000000000000000000042AD
      BD0042CEEF009CE7FF009CE7FF009CE7FF00000000005ADEFF005ADEFF005ADE
      FF0042CEEF001094CE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B5848400000000000000000000000000C6ADA500FFEF
      E700F7E7D600F7E7CE00F7DEC600F7DEBD00EFD6AD00EFCE9C00EFCE9C00EFCE
      9C00EFCE9400EFCE9C00B584840000000000000000000000000042ADBD0042CE
      EF009CE7FF009CE7FF009CE7FF009CE7FF00000000009CE7FF009CE7FF005ADE
      FF005ADEFF0042CEEF001094CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B5848400000000000000000000000000C6ADA500FFF7
      E700F7E7D600F7E7CE00F7E7C600F7DEC600F7DEB5005A524200EFCE9C00EFCE
      9C00EFCE9C00EFCE9400B584840000000000000000000000000042ADBD00ADF7
      FF009CE7FF009CE7FF009CE7FF009CE7FF00000000009CE7FF009CE7FF009CE7
      FF005ADEFF005ADEFF001094CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B5848400000000000000000000000000CEB5AD00FFFF
      F700C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6004A4A4A0000000000C6C6
      C600C6C6C600EFCE9C00B584840000000000000000000000000042ADBD00ADF7
      FF00ADF7FF009CE7FF009CE7FF000000000000000000000000009CE7FF009CE7
      FF009CE7FF005ADEFF001094CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B5848400000000000000000000000000D6B5AD00FFFF
      FF00FFF7EF00FFEFE700F7E7D600F7E7CE00F7E7C6005A524A00000000000000
      0000D6C6BD00EFD6AD00B584840000000000000000000000000042ADBD00ADF7
      FF00ADF7FF00ADF7FF009CE7FF008484840000000000848484009CE7FF009CE7
      FF009CE7FF005ADEFF001094CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B5848400000000000000000000000000D6BDB500FFFF
      FF00FFF7F700FFF7EF00FFEFDE00F7E7D600F7E7CE005A524A0000FFFF0000C6
      C60000000000D6C6BD00B584840000000000000000000000000042ADBD0042CE
      EF00ADF7FF00ADF7FF00ADF7FF00ADF7FF009CE7FF009CE7FF009CE7FF009CE7
      FF009CE7FF0042CEEF001094CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B5848400000000000000000000000000D6BDB500FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6007373730018F7F70000C6
      C60000000000D6C6BD00BD9494000000000000000000000000000000000042AD
      BD0042ADBD0042ADBD0042ADBD0042ADBD0042ADBD0042ADBD0042ADBD0042AD
      BD0042ADBD0042ADBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003184FF003184
      FF003184FF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700B5848400000000000000000000000000DEBDB500FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFEFE700FFEFDE00F7E7D6005A52520000FF
      FF0000C6C60000000000C6ADAD00000000000000000000000000000000000000
      000042ADBD009CE7FF001094CE0000000000000000000000000042ADBD009CE7
      FF001094CE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003184FF0042B5
      F7003184FF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00B5848400000000000000000000000000DEC6B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFEFE700FFEFDE009C94840021FF
      FF0000C6C60000000000C6B5B500000000000000000000000000000000000000
      000042ADBD009CE7FF001094CE0000000000000000000000000042ADBD009CE7
      FF001094CE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003184FF003184FF003184FF0042B5
      F7003184FF003184FF003184FF00E7E7E700E7E7E700E7E7E700E7E7E700B584
      7300B5948C00B58C8400B5848400000000000000000000000000E7C6B500FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600F7E7D6004A39
      390000FFFF0000C6C60000000000000000000000000000000000000000000000
      000042ADBD0042CEEF0042CEEF001094CE001094CE001094CE0042CEEF0042CE
      EF001094CE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003184FF008CD6F700B5DEF700B5DE
      F700B5DEF7008CD6F7003184FF00DEDEDE00DEDEDE00DEDEDE00C6C6C600B584
      7300FFFFFF00FFFFFF00B5848400000000000000000000000000E7C6B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700E7CECE007352
      4A0021F7EF0000C6C60000000000000000000000000000000000000000000000
      00000000000042ADBD0042CEEF009CE7FF009CE7FF009CE7FF0042CEEF001094
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003184FF003184FF003184FF00B5DE
      F7003184FF003184FF003184FF00D6D6D600D6D6D600D6D6D600C6C6C600B584
      7300FFFFFF00B584840000000000000000000000000000000000EFCEBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00C694
      7B005A4A29000000000000840000000000000000000000000000000000000000
      0000000000000000000042ADBD0042ADBD0042ADBD0042ADBD001094CE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003184FF00B5DE
      F7003184FF00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600B584
      7300B58484000000000000000000000000000000000000000000E7C6B500FFF7
      F700FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00E7CECE00C694
      7B0073524A000084000000840000210021000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003184FF003184
      FF003184FF00EFD6C600EFD6C600EFD6C600EFD6C600EFD6C600D6BDB500B584
      7300000000000000000000000000000000000000000000000000E7C6B500EFCE
      B500EFCEB500EFCEB500EFCEB500E7C6B500E7C6B500EFCEB500D6BDB500BD84
      7B00000000006300630063006300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFC001FC1F0000E001C001F0070000
      E001C001E0030000E001C001C0010000E001C001C0010000E001C001C0010000
      E001C001C0010000E001C001C0010000E001C001E0030000C001C001F1C70000
      C001C001F1C700000001C001F00700000001C001F80F00000003C000FC1F0000
      C007C000FFFF0000C00FC009FFFF000000000000000000000000000000000000
      000000000000}
  end
  object siLangLinked_fSelectLoadPlan: TsiLangLinked
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
    Left = 480
    Top = 240
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
