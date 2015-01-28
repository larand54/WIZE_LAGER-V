object fKilnWizard: TfKilnWizard
  Left = 229
  Top = 107
  Caption = 'Ny Torksats'
  ClientHeight = 178
  ClientWidth = 356
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel20: TcxLabel
    Left = 53
    Top = 14
    Caption = 'Tork:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object deStartTime: TcxDBDateEdit
    Left = 129
    Top = 36
    DataBinding.DataField = 'StartTime'
    DataBinding.DataSource = dm_DryKiln.ds_KilnChargeHdr
    Properties.Kind = ckDateTime
    TabOrder = 1
    Width = 152
  end
  object cxLabel17: TcxLabel
    Left = 53
    Top = 40
    Caption = 'Starttid:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object cxLabel19: TcxLabel
    Left = 53
    Top = 64
    Caption = 'Plan.tid(tim):'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object mePlannedDuration: TcxDBMaskEdit
    Left = 129
    Top = 60
    DataBinding.DataField = 'PlannedDuration'
    DataBinding.DataSource = dm_DryKiln.ds_KilnChargeHdr
    TabOrder = 2
    Width = 152
  end
  object cxLabel22: TcxLabel
    Left = 53
    Top = 94
    Caption = 'Status:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object icStatus: TcxDBImageComboBox
    Left = 129
    Top = 90
    DataBinding.DataField = 'Status'
    DataBinding.DataSource = dm_DryKiln.ds_KilnChargeHdr
    Properties.Items = <
      item
        Description = 'Aktiv'
        ImageIndex = 0
        Value = 0
      end
      item
        Description = 'Avslutad'
        Value = 1
      end>
    TabOrder = 3
    Width = 152
  end
  object lcTork: TcxDBLookupComboBox
    Left = 129
    Top = 10
    DataBinding.DataField = 'Tork'
    DataBinding.DataSource = dm_DryKiln.ds_KilnChargeHdr
    Properties.ListColumns = <>
    Properties.ListOptions.ShowHeader = False
    TabOrder = 0
    Width = 152
  end
  object Panel1: TPanel
    Left = 0
    Top = 137
    Width = 356
    Height = 41
    Align = alBottom
    TabOrder = 7
    object BitBtn1: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 176
      Top = 8
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object siLangLinked_fKilnWizard: TsiLangLinked
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
    Left = 176
    Top = 96
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A004900440053005F003000010054006F00
      72006B002000730061006B006E0061007300010001000D000A00730074004F00
      740068006500720053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A007300740043006F006C006C0065006300740069006F00
      6E0073005F0055006E00690063006F00640065000D000A007300740043006800
      6100720053006500740073005F0055006E00690063006F00640065000D000A00}
  end
end
