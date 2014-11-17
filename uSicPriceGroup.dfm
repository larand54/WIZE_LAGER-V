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
    Left = 384
    Top = 264
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066005300690063005000720069006300650047007200
      6F00750070000100500072006900730067007200750070007000650072000100
      01000D000A00420069007400420074006E00310001004F004B00010001000D00
      0A0067007200640050007200690063006500470072006F007500700044004200
      5400610062006C00650056006900650077003100500072006900630065004700
      72006F00750070004E006F00010050007200690063006500470072006F007500
      70004E006F00010001000D000A00670072006400500072006900630065004700
      72006F0075007000440042005400610062006C00650056006900650077003100
      50007200690063006500470072006F00750070004E0061006D00650001005000
      7200690063006500470072006F00750070004E0061006D006500010001000D00
      0A0067007200640050007200690063006500470072006F007500700044004200
      5400610062006C006500560069006500770031004F0077006E00650072004E00
      6F0001004F0077006E00650072004E006F00010001000D000A00670072006400
      50007200690063006500470072006F0075007000440042005400610062006C00
      6500560069006500770031004400610074006500430072006500610074006500
      6400010044006100740065004300720065006100740065006400010001000D00
      0A0067007200640050007200690063006500470072006F007500700044004200
      5400610062006C00650056006900650077003100430072006500610074006500
      6400550073006500720001004300720065006100740065006400550073006500
      7200010001000D000A00670072006400470072006F0075007000500072006900
      63006500440042005400610062006C0065005600690065007700310050007200
      690063006500470072006F00750070004E006F00010050007200690063006500
      470072006F00750070004E006F00010001000D000A0067007200640047007200
      6F007500700050007200690063006500440042005400610062006C0065005600
      6900650077003100490043005F004700720070004E006F000100490043005F00
      4700720070004E006F00010001000D000A00670072006400470072006F007500
      700050007200690063006500440042005400610062006C006500560069006500
      77003100500072006900630065005000650072004E004D003300010050007200
      6900630065005000650072004E004D003300010001000D000A00670072006400
      470072006F007500700050007200690063006500440042005400610062006C00
      6500560069006500770031004D006100780044006100740075006D0001004D00
      6100780044006100740075006D00010001000D000A0061006300410064006400
      50007200690063006500470072006F007500700001004C00E400670067002000
      740069006C006C00200046003200010001000D000A0061006300520065006D00
      6F007600650050007200690063006500470072006F0075007000010054006100
      200062006F0072007400200046003500010001000D000A006100630053006100
      76006500010053007000610072006100200046003300010001000D000A006100
      6300430061006E00630065006C004300680061006E006700650073000100C500
      6E00670072006100200046003400010001000D000A0061006300520065006600
      720065007300680041006E006400550070006400610074006500470072006F00
      7500700050007200690063006500010055007000700064006100740065007200
      6100200046003600010001000D000A0073007400480069006E00740073005F00
      55006E00690063006F00640065000D000A007300740044006900730070006C00
      610079004C006100620065006C0073005F0055006E00690063006F0064006500
      0D000A007300740046006F006E00740073005F0055006E00690063006F006400
      65000D000A005400660053006900630050007200690063006500470072006F00
      7500700001004D0053002000530061006E007300200053006500720069006600
      010001000D000A00730074004D0075006C00740069004C0069006E0065007300
      5F0055006E00690063006F00640065000D000A00730074005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00730074004F00
      740068006500720053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A0067007200640050007200690063006500470072006F00
      75007000440042005400610062006C0065005600690065007700310050007200
      690063006500470072006F00750070004E006F002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      7300010001000D000A0067007200640050007200690063006500470072006F00
      75007000440042005400610062006C0065005600690065007700310050007200
      690063006500470072006F00750070004E0061006D0065002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      010054006300780054006500780074004500640069007400500072006F007000
      650072007400690065007300010001000D000A00670072006400500072006900
      63006500470072006F0075007000440042005400610062006C00650056006900
      6500770031004F0077006E00650072004E006F002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      7300010001000D000A0067007200640050007200690063006500470072006F00
      75007000440042005400610062006C0065005600690065007700310044006100
      7400650043007200650061007400650064002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      010001000D000A0067007200640050007200690063006500470072006F007500
      7000440042005400610062006C00650056006900650077003100430072006500
      610074006500640055007300650072002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      01000D000A00670072006400470072006F007500700050007200690063006500
      440042005400610062006C006500560069006500770031005000720069006300
      6500470072006F00750070004E006F002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      01000D000A00670072006400470072006F007500700050007200690063006500
      440042005400610062006C00650056006900650077003100490043005F004700
      720070004E006F002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      72006400470072006F0075007000500072006900630065004400420054006100
      62006C0065005600690065007700310050007200690063006500500065007200
      4E004D0033002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D0065000100540063007800430061006C0063004500
      640069007400500072006F007000650072007400690065007300010001000D00
      0A00670072006400470072006F00750070005000720069006300650044004200
      5400610062006C006500560069006500770031004D0061007800440061007400
      75006D002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D0065000100540063007800440061007400650045006400
      69007400500072006F007000650072007400690065007300010001000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A0054006600530069006300
      50007200690063006500470072006F0075007000010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A00}
  end
end
