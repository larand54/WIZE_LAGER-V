object fSicPriceGroup: TfSicPriceGroup
  Left = 229
  Top = 107
  Caption = 'Prisgrupper'
  ClientHeight = 521
  ClientWidth = 777
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
    Width = 777
    Height = 41
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 480
    Width = 777
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 344
      Top = 5
      Width = 86
      Height = 28
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 777
    Height = 439
    Align = alClient
    TabOrder = 2
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 328
      Height = 437
      Align = alLeft
      TabOrder = 0
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 326
        Height = 59
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object cxButton1: TcxButton
          Left = 8
          Top = 2
          Width = 73
          Height = 53
          Action = acAddPriceGroup
          OptionsImage.Layout = blGlyphTop
          TabOrder = 0
        end
        object cxButton2: TcxButton
          Left = 169
          Top = 2
          Width = 73
          Height = 53
          Action = acCancelChanges
          OptionsImage.Layout = blGlyphTop
          TabOrder = 2
        end
        object cxButton3: TcxButton
          Left = 89
          Top = 2
          Width = 73
          Height = 53
          Action = acSave
          OptionsImage.Layout = blGlyphTop
          TabOrder = 1
        end
        object cxButton4: TcxButton
          Left = 249
          Top = 2
          Width = 73
          Height = 53
          Action = acRemovePriceGroup
          OptionsImage.Layout = blGlyphTop
          TabOrder = 3
        end
      end
      object grdPriceGroup: TcxGrid
        Left = 1
        Top = 60
        Width = 326
        Height = 376
        Align = alClient
        TabOrder = 1
        object grdPriceGroupDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dmInvCtrl.ds_PriceGroup
          DataController.KeyFieldNames = 'PriceGroupNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NewItemRow.Visible = True
          OptionsBehavior.ImmediateEditor = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object grdPriceGroupDBTableView1PriceGroupNo: TcxGridDBColumn
            DataBinding.FieldName = 'PriceGroupNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
          end
          object grdPriceGroupDBTableView1PriceGroupName: TcxGridDBColumn
            DataBinding.FieldName = 'PriceGroupName'
            PropertiesClassName = 'TcxTextEditProperties'
            SortIndex = 0
            SortOrder = soAscending
          end
          object grdPriceGroupDBTableView1OwnerNo: TcxGridDBColumn
            DataBinding.FieldName = 'OwnerNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
          end
          object grdPriceGroupDBTableView1DateCreated: TcxGridDBColumn
            DataBinding.FieldName = 'DateCreated'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
          end
          object grdPriceGroupDBTableView1CreatedUser: TcxGridDBColumn
            DataBinding.FieldName = 'CreatedUser'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
          end
        end
        object grdPriceGroupLevel1: TcxGridLevel
          GridView = grdPriceGroupDBTableView1
        end
      end
    end
    object Panel5: TPanel
      Left = 329
      Top = 1
      Width = 447
      Height = 437
      Align = alClient
      TabOrder = 1
      object Panel7: TPanel
        Left = 1
        Top = 1
        Width = 445
        Height = 59
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object cxButton5: TcxButton
          Left = 8
          Top = 2
          Width = 73
          Height = 53
          Action = acRefreshAndUpdateGroupPrice
          OptionsImage.Layout = blGlyphTop
          TabOrder = 0
        end
      end
      object grdGroupPrice: TcxGrid
        Left = 1
        Top = 60
        Width = 445
        Height = 376
        Align = alClient
        TabOrder = 1
        object grdGroupPriceDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dmInvCtrl.ds_GP
          DataController.KeyFieldNames = 'IC_GrpNo;PriceGroupNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object grdGroupPriceDBTableView1PriceGroupNo: TcxGridDBColumn
            DataBinding.FieldName = 'PriceGroupNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
          end
          object grdGroupPriceDBTableView1IC_GrpNo: TcxGridDBColumn
            DataBinding.FieldName = 'IC_GrpNo'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 86
          end
          object grdGroupPriceDBTableView1PricePerNM3: TcxGridDBColumn
            DataBinding.FieldName = 'PricePerNM3'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 96
          end
          object grdGroupPriceDBTableView1MaxDatum: TcxGridDBColumn
            DataBinding.FieldName = 'MaxDatum'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ReadOnly = True
            Width = 269
          end
        end
        object grdGroupPriceLevel1: TcxGridLevel
          GridView = grdGroupPriceDBTableView1
        end
      end
    end
  end
  object ActionList1: TActionList
    Images = dmsConnector.Images2424
    Left = 408
    Top = 176
    object acAddPriceGroup: TAction
      Caption = 'L'#228'gg till F2'
      ImageIndex = 1
      ShortCut = 113
      OnExecute = acAddPriceGroupExecute
    end
    object acRemovePriceGroup: TAction
      Caption = 'Ta bort F5'
      ImageIndex = 2
      OnExecute = acRemovePriceGroupExecute
      OnUpdate = acRemovePriceGroupUpdate
    end
    object acSave: TAction
      Caption = 'Spara F3'
      ImageIndex = 6
      ShortCut = 114
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
    object acCancelChanges: TAction
      Caption = #197'ngra F4'
      ImageIndex = 9
      ShortCut = 115
      OnExecute = acCancelChangesExecute
      OnUpdate = acCancelChangesUpdate
    end
    object acRefreshAndUpdateGroupPrice: TAction
      Caption = 'Uppdatera F6'
      ImageIndex = 0
      ShortCut = 117
      OnExecute = acRefreshAndUpdateGroupPriceExecute
    end
  end
  object siLangLinked_fSicPriceGroup: TsiLangLinked
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
    Left = 384
    Top = 264
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066005300690063005000720069006300650047007200
      6F00750070000100500072006900730067007200750070007000650072000100
      010001000D000A00420069007400420074006E00310001004F004B0001000100
      01000D000A0067007200640050007200690063006500470072006F0075007000
      440042005400610062006C006500560069006500770031005000720069006300
      6500470072006F00750070004E006F0001005000720069006300650047007200
      6F00750070004E006F000100010001000D000A00670072006400500072006900
      63006500470072006F0075007000440042005400610062006C00650056006900
      65007700310050007200690063006500470072006F00750070004E0061006D00
      6500010050007200690063006500470072006F00750070004E0061006D006500
      0100010001000D000A0067007200640050007200690063006500470072006F00
      75007000440042005400610062006C006500560069006500770031004F007700
      6E00650072004E006F0001004F0077006E00650072004E006F00010001000100
      0D000A0067007200640050007200690063006500470072006F00750070004400
      42005400610062006C0065005600690065007700310044006100740065004300
      7200650061007400650064000100440061007400650043007200650061007400
      650064000100010001000D000A00670072006400500072006900630065004700
      72006F0075007000440042005400610062006C00650056006900650077003100
      4300720065006100740065006400550073006500720001004300720065006100
      74006500640055007300650072000100010001000D000A006700720064004700
      72006F007500700050007200690063006500440042005400610062006C006500
      5600690065007700310050007200690063006500470072006F00750070004E00
      6F00010050007200690063006500470072006F00750070004E006F0001000100
      01000D000A00670072006400470072006F007500700050007200690063006500
      440042005400610062006C00650056006900650077003100490043005F004700
      720070004E006F000100490043005F004700720070004E006F00010001000100
      0D000A00670072006400470072006F0075007000500072006900630065004400
      42005400610062006C0065005600690065007700310050007200690063006500
      5000650072004E004D0033000100500072006900630065005000650072004E00
      4D0033000100010001000D000A00670072006400470072006F00750070005000
      7200690063006500440042005400610062006C00650056006900650077003100
      4D006100780044006100740075006D0001004D00610078004400610074007500
      6D000100010001000D000A006100630041006400640050007200690063006500
      470072006F007500700001004C00E400670067002000740069006C006C002000
      460032000100010001000D000A0061006300520065006D006F00760065005000
      7200690063006500470072006F0075007000010054006100200062006F007200
      74002000460035000100010001000D000A006100630053006100760065000100
      530070006100720061002000460033000100010001000D000A00610063004300
      61006E00630065006C004300680061006E006700650073000100C5006E006700
      720061002000460034000100010001000D000A00610063005200650066007200
      65007300680041006E006400550070006400610074006500470072006F007500
      7000500072006900630065000100550070007000640061007400650072006100
      2000460036000100010001000D000A0073007400480069006E00740073005F00
      55006E00690063006F00640065000D000A007300740044006900730070006C00
      610079004C006100620065006C0073005F0055006E00690063006F0064006500
      0D000A007300740046006F006E00740073005F0055006E00690063006F006400
      65000D000A005400660053006900630050007200690063006500470072006F00
      7500700001004D0053002000530061006E007300200053006500720069006600
      01004D0053002000530061006E00730020005300650072006900660001005400
      610068006F006D0061000D000A00730074004D0075006C00740069004C006900
      6E00650073005F0055006E00690063006F00640065000D000A00730074005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      4900440053005F0030000100560069006C006C00200064007500200073007000
      610072006100200069006E006E0061006E00200064007500200073007400E400
      6E006700650072003F0020000100010001000D000A004900440053005F003100
      0100500072006900730067007200750070007000650072002E0020004C006100
      67006500720069006E00760065006E0074006500720069006E00670020006E00
      720020000100010001000D000A00730074004F00740068006500720053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A006700
      7200640050007200690063006500470072006F00750070004400420054006100
      62006C0065005600690065007700310050007200690063006500470072006F00
      750070004E006F002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      7200640050007200690063006500470072006F00750070004400420054006100
      62006C0065005600690065007700310050007200690063006500470072006F00
      750070004E0061006D0065002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D006500010054006300780054006500
      780074004500640069007400500072006F007000650072007400690065007300
      010001000D000A0067007200640050007200690063006500470072006F007500
      7000440042005400610062006C006500560069006500770031004F0077006E00
      650072004E006F002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      7200640050007200690063006500470072006F00750070004400420054006100
      62006C0065005600690065007700310044006100740065004300720065006100
      7400650064002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F007000650072007400690065007300010001000D000A0067007200
      640050007200690063006500470072006F007500700044004200540061006200
      6C00650056006900650077003100430072006500610074006500640055007300
      650072002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      470072006F007500700050007200690063006500440042005400610062006C00
      65005600690065007700310050007200690063006500470072006F0075007000
      4E006F002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      470072006F007500700050007200690063006500440042005400610062006C00
      650056006900650077003100490043005F004700720070004E006F002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      72007400690065007300010001000D000A00670072006400470072006F007500
      700050007200690063006500440042005400610062006C006500560069006500
      77003100500072006900630065005000650072004E004D0033002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      65000100540063007800430061006C0063004500640069007400500072006F00
      7000650072007400690065007300010001000D000A0067007200640047007200
      6F007500700050007200690063006500440042005400610062006C0065005600
      69006500770031004D006100780044006100740075006D002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      010054006300780044006100740065004500640069007400500072006F007000
      650072007400690065007300010001000D000A007300740043006F006C006C00
      65006300740069006F006E0073005F0055006E00690063006F00640065000D00
      0A0073007400430068006100720053006500740073005F0055006E0069006300
      6F00640065000D000A0054006600530069006300500072006900630065004700
      72006F00750070000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A00}
  end
end
