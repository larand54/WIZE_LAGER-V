object frmPackagePicker_III: TfrmPackagePicker_III
  Left = 218
  Top = 210
  ActiveControl = grdPkgDuplicates
  BorderIcons = [biHelp]
  Caption = 'V'#196'LJ ETT PAKET'
  ClientHeight = 245
  ClientWidth = 998
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object pnlButtons: TPanel
    Left = 0
    Top = 203
    Width = 998
    Height = 42
    Align = alBottom
    TabOrder = 0
    object btnOK: TBitBtn
      Left = 421
      Top = 7
      Width = 66
      Height = 27
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnCancel: TBitBtn
      Left = 499
      Top = 7
      Width = 66
      Height = 27
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object pnlGrid: TPanel
    Left = 0
    Top = 0
    Width = 998
    Height = 203
    Align = alClient
    TabOrder = 1
    object grdPkgDuplicates: TcxGrid
      Left = 1
      Top = 1
      Width = 996
      Height = 201
      Align = alClient
      TabOrder = 0
      object grdPkgDuplicatesDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object grdPkgDuplicatesDBTableView1PackageNo: TcxGridDBColumn
          Caption = 'Paketnr'
          DataBinding.FieldName = 'PackageNo'
          Width = 67
        end
        object grdPkgDuplicatesDBTableView1SupplierCode: TcxGridDBColumn
          Caption = 'Lev.kod'
          DataBinding.FieldName = 'SupplierCode'
          Width = 55
        end
        object grdPkgDuplicatesDBTableView1ProductDisplayName: TcxGridDBColumn
          Caption = 'Produkt'
          DataBinding.FieldName = 'ProductDisplayName'
          SortIndex = 0
          SortOrder = soAscending
          Width = 242
        end
        object grdPkgDuplicatesDBTableView1LengthDescription: TcxGridDBColumn
          Caption = 'L'#228'ngdbeskrivning'
          DataBinding.FieldName = 'LengthDescription'
          Width = 127
        end
        object grdPkgDuplicatesDBTableView1LogicalInventoryName: TcxGridDBColumn
          Caption = 'Lagergrupp'
          DataBinding.FieldName = 'LogicalInventoryName'
          Width = 127
        end
        object grdPkgDuplicatesDBTableView1ClientName: TcxGridDBColumn
          Caption = #196'gare'
          DataBinding.FieldName = 'ClientName'
          Width = 132
        end
        object grdPkgDuplicatesDBTableView1PackageTypeNo: TcxGridDBColumn
          DataBinding.FieldName = 'PackageTypeNo'
          Width = 126
        end
        object grdPkgDuplicatesDBTableView1LIP: TcxGridDBColumn
          Caption = 'L'
          DataBinding.FieldName = 'LIP'
          Width = 126
        end
      end
      object grdPkgDuplicatesLevel1: TcxGridLevel
        GridView = grdPkgDuplicatesDBTableView1
      end
    end
  end
  object siLangLinked_frmPackagePicker_III: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 2
    ActiveLanguage = 2
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Swedish'
      'English')
    Language = 'English'
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
    Left = 496
    Top = 128
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D005000610063006B006100670065005000
      690063006B00650072005F0049004900490001005600C4004C004A0020004500
      540054002000500041004B0045005400010001000D000A00620074006E004F00
      4B0001004F004B00010001000D000A00620074006E00430061006E0063006500
      6C000100430061006E00630065006C00010001000D000A006700720064005000
      6B0067004400750070006C006900630061007400650073004400420054006100
      62006C006500560069006500770031005000610063006B006100670065004E00
      6F000100500061006B00650074006E007200010001000D000A00670072006400
      50006B0067004400750070006C00690063006100740065007300440042005400
      610062006C0065005600690065007700310053007500700070006C0069006500
      720043006F006400650001004C00650076002E006B006F006400010001000D00
      0A0067007200640050006B0067004400750070006C0069006300610074006500
      7300440042005400610062006C00650056006900650077003100500072006F00
      640075006300740044006900730070006C00610079004E0061006D0065000100
      500072006F00640075006B007400010001000D000A0067007200640050006B00
      67004400750070006C0069006300610074006500730044004200540061006200
      6C006500560069006500770031004C0065006E00670074006800440065007300
      6300720069007000740069006F006E0001004C00E4006E006700640062006500
      73006B007200690076006E0069006E006700010001000D000A00670072006400
      50006B0067004400750070006C00690063006100740065007300440042005400
      610062006C006500560069006500770031004C006F0067006900630061006C00
      49006E00760065006E0074006F00720079004E0061006D00650001004C006100
      67006500720067007200750070007000010001000D000A006700720064005000
      6B0067004400750070006C006900630061007400650073004400420054006100
      62006C0065005600690065007700310043006C00690065006E0074004E006100
      6D0065000100C4006700610072006500010001000D000A006700720064005000
      6B0067004400750070006C006900630061007400650073004400420054006100
      62006C006500560069006500770031005000610063006B006100670065005400
      7900700065004E006F0001005000610063006B00610067006500540079007000
      65004E006F00010001000D000A0067007200640050006B006700440075007000
      6C00690063006100740065007300440042005400610062006C00650056006900
      6500770031004C004900500001004C00010001000D000A007300740048006900
      6E00740073005F0055006E00690063006F00640065000D000A00730074004400
      6900730070006C00610079004C006100620065006C0073005F0055006E006900
      63006F00640065000D000A007300740046006F006E00740073005F0055006E00
      690063006F00640065000D000A005400660072006D005000610063006B006100
      670065005000690063006B00650072005F0049004900490001004D0053002000
      530061006E007300200053006500720069006600010001000D000A0073007400
      4D0075006C00740069004C0069006E00650073005F0055006E00690063006F00
      640065000D000A007300740053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A00730074004F00740068006500720053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A007300
      740043006F006C006C0065006300740069006F006E0073005F0055006E006900
      63006F00640065000D000A007300740043006800610072005300650074007300
      5F0055006E00690063006F00640065000D000A005400660072006D0050006100
      63006B006100670065005000690063006B00650072005F004900490049000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A00}
  end
end
