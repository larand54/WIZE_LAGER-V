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
    DefaultLanguage = 2
    NumOfLanguages = 3
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
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
      'ListField')
    Left = 176
    Top = 96
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004B0069006C006E00570069007A00610072006400
      01004E007900200054006F0072006B0073006100740073000100010001000D00
      0A00630078004C006100620065006C0032003000010054006F0072006B003A00
      0100010001000D000A00630078004C006100620065006C003100370001005300
      74006100720074007400690064003A000100010001000D000A00630078004C00
      6100620065006C0031003900010050006C0061006E002E007400690064002800
      740069006D0029003A000100010001000D000A00630078004C00610062006500
      6C003200320001005300740061007400750073003A000100010001000D000A00
      420069007400420074006E00310001004F004B000100010001000D000A004200
      69007400420074006E0032000100430061006E00630065006C00010001000100
      0D000A0073007400480069006E00740073005F0055006E00690063006F006400
      65000D000A007300740044006900730070006C00610079004C00610062006500
      6C0073005F0055006E00690063006F00640065000D000A007300740046006F00
      6E00740073005F0055006E00690063006F00640065000D000A00540066004B00
      69006C006E00570069007A0061007200640001004D0053002000530061006E00
      730020005300650072006900660001004D0053002000530061006E0073002000
      5300650072006900660001005400610068006F006D0061000D000A0073007400
      4D0075006C00740069004C0069006E00650073005F0055006E00690063006F00
      640065000D000A007300740053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A004900440053005F003000010054006F007200
      6B002000730061006B006E00610073000100010001000D000A00730074004F00
      740068006500720053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A007300740043006F006C006C0065006300740069006F00
      6E0073005F0055006E00690063006F00640065000D000A006900630053007400
      61007400750073002E00500072006F0070006500720074006900650073002E00
      4900740065006D0073005B0030005D002E004400650073006300720069007000
      740069006F006E00010041006B00740069007600010001000D000A0069006300
      5300740061007400750073002E00500072006F00700065007200740069006500
      73002E004900740065006D0073005B0031005D002E0044006500730063007200
      69007000740069006F006E0001004100760073006C0075007400610064000100
      01000D000A0073007400430068006100720053006500740073005F0055006E00
      690063006F00640065000D000A00540066004B0069006C006E00570069007A00
      6100720064000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A00}
  end
end
