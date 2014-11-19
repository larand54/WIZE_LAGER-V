object fAccParams: TfAccParams
  Left = 229
  Top = 107
  Caption = 'Parametrar'
  ClientHeight = 517
  ClientWidth = 951
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
    Width = 951
    Height = 41
    Align = alTop
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Action = acSave
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Action = acCancelChanges
      TabOrder = 1
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 41
    Width = 951
    Height = 476
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tsAccInv
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 472
    ClientRectLeft = 4
    ClientRectRight = 947
    ClientRectTop = 24
    object tsAccParams: TcxTabSheet
      Caption = 'Ing'#229'ende lager'
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitWidth = 951
      ExplicitHeight = 452
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 943
        Height = 41
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 951
        object seYearNo: TcxDBSpinEdit
          Left = 144
          Top = 12
          DataBinding.DataField = 'YearNo'
          DataBinding.DataSource = dmsSystem.ds_AccStart
          Properties.ImmediatePost = True
          TabOrder = 0
          Width = 121
        end
        object seWeekNo: TcxDBSpinEdit
          Left = 352
          Top = 12
          DataBinding.DataField = 'WeekNo'
          DataBinding.DataSource = dmsSystem.ds_AccStart
          Properties.ImmediatePost = True
          TabOrder = 1
          Width = 121
        end
        object cxLabel1: TcxLabel
          Left = 288
          Top = 16
          Caption = 'Start vecka:'
        end
        object cxLabel2: TcxLabel
          Left = 88
          Top = 16
          Caption = 'Start '#197'r:'
        end
      end
      object grdAccParams: TcxGrid
        Left = 0
        Top = 41
        Width = 943
        Height = 407
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 951
        ExplicitHeight = 411
        object grdAccParamsDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dmsSystem.ds_AccInvParam
          DataController.KeyFieldNames = 'ClientNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object grdAccParamsDBTableView1ClientName: TcxGridDBColumn
            DataBinding.FieldName = 'ClientName'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 330
          end
          object grdAccParamsDBTableView1IngoingInv: TcxGridDBColumn
            DataBinding.FieldName = 'IngoingInv'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 314
          end
          object grdAccParamsDBTableView1TrimFactor: TcxGridDBColumn
            DataBinding.FieldName = 'TrimFactor'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 313
          end
        end
        object grdAccParamsLevel1: TcxGridLevel
          GridView = grdAccParamsDBTableView1
        end
      end
    end
    object tsAccInv: TcxTabSheet
      Caption = 'Borgstena'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 943
        Height = 41
        Align = alTop
        TabOrder = 0
        object cxButton3: TcxButton
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Action = acAddBorgstena
          TabOrder = 0
          Visible = False
        end
        object cxButton4: TcxButton
          Left = 88
          Top = 8
          Width = 75
          Height = 25
          Action = acRemoveBorgstena
          TabOrder = 1
          Visible = False
        end
      end
      object grdAccInv: TcxGrid
        Left = 0
        Top = 41
        Width = 943
        Height = 407
        Align = alClient
        TabOrder = 1
        object grdAccInvDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnEditKeyDown = grdAccInvDBTableView1EditKeyDown
          DataController.DataSource = dmsSystem.ds_AccInv
          DataController.KeyFieldNames = 'ClientNo;YearNo;WeekNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object grdAccInvDBTableView1ClientNo: TcxGridDBColumn
            DataBinding.FieldName = 'ClientNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Width = 47
          end
          object grdAccInvDBTableView1ClientName: TcxGridDBColumn
            DataBinding.FieldName = 'ClientName'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Width = 157
          end
          object grdAccInvDBTableView1YearNo: TcxGridDBColumn
            DataBinding.FieldName = 'YearNo'
            PropertiesClassName = 'TcxLabelProperties'
            SortIndex = 0
            SortOrder = soAscending
            Width = 62
          end
          object grdAccInvDBTableView1WeekNo: TcxGridDBColumn
            DataBinding.FieldName = 'WeekNo'
            PropertiesClassName = 'TcxLabelProperties'
            SortIndex = 1
            SortOrder = soAscending
            Width = 64
          end
          object grdAccInvDBTableView1SawProd: TcxGridDBColumn
            DataBinding.FieldName = 'SawProd'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 62
          end
          object grdAccInvDBTableView1IntInDel: TcxGridDBColumn
            DataBinding.FieldName = 'IntInDel'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 63
          end
          object grdAccInvDBTableView1ExtInDel: TcxGridDBColumn
            DataBinding.FieldName = 'ExtInDel'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 62
          end
          object grdAccInvDBTableView1ExtUtlev: TcxGridDBColumn
            DataBinding.FieldName = 'ExtUtlev'
            Width = 64
          end
          object grdAccInvDBTableView1InvoicedCust: TcxGridDBColumn
            DataBinding.FieldName = 'InvoicedCust'
            Width = 62
          end
          object grdAccInvDBTableView1InvChange: TcxGridDBColumn
            DataBinding.FieldName = 'InvChange'
            Visible = False
            Width = 63
          end
          object grdAccInvDBTableView1TotalInv: TcxGridDBColumn
            DataBinding.FieldName = 'TotalInv'
            Visible = False
            Width = 62
          end
          object grdAccInvDBTableView1TotalInvChangeMill: TcxGridDBColumn
            DataBinding.FieldName = 'TotalInvChangeMill'
            Visible = False
            Width = 64
          end
          object grdAccInvDBTableView1TotalInvMill: TcxGridDBColumn
            DataBinding.FieldName = 'TotalInvMill'
            Visible = False
            Width = 62
          end
          object grdAccInvDBTableView1VW: TcxGridDBColumn
            DataBinding.FieldName = 'VW'
            Visible = False
            Width = 63
          end
        end
        object grdAccInvLevel1: TcxGridLevel
          GridView = grdAccInvDBTableView1
        end
      end
    end
  end
  object ActionList1: TActionList
    Left = 648
    Top = 137
    object acSave: TAction
      Caption = 'Spara'
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
    object acCancelChanges: TAction
      Caption = #197'ngra'
      OnExecute = acCancelChangesExecute
      OnUpdate = acCancelChangesUpdate
    end
    object acAddBorgstena: TAction
      Caption = 'L'#228'gg till'
      OnExecute = acAddBorgstenaExecute
    end
    object acRemoveBorgstena: TAction
      Caption = 'Ta bort'
      OnExecute = acRemoveBorgstenaExecute
    end
  end
  object siLangLinked_fAccParams: TsiLangLinked
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
    Left = 472
    Top = 264
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660041006300630050006100720061006D0073000100
      50006100720061006D0065007400720061007200010001000D000A0074007300
      41006300630050006100720061006D007300010049006E006700E50065006E00
      6400650020006C006100670065007200010001000D000A00630078004C006100
      620065006C00310001005300740061007200740020007600650063006B006100
      3A00010001000D000A00630078004C006100620065006C003200010053007400
      6100720074002000C50072003A00010001000D000A0067007200640041006300
      630050006100720061006D007300440042005400610062006C00650056006900
      65007700310043006C00690065006E0074004E0061006D006500010056006500
      72006B00010001000D000A006700720064004100630063005000610072006100
      6D007300440042005400610062006C0065005600690065007700310049006E00
      67006F0069006E00670049006E007600010049006E0067006F0069006E006700
      49006E007600010001000D000A00670072006400410063006300500061007200
      61006D007300440042005400610062006C006500560069006500770031005400
      720069006D0046006100630074006F00720001005400720069006D0046006100
      630074006F007200010001000D000A007400730041006300630049006E007600
      010042006F00720067007300740065006E006100010001000D000A0067007200
      640041006300630049006E007600440042005400610062006C00650056006900
      65007700310043006C00690065006E0074004E006F00010043006C0069006500
      6E0074004E006F00010001000D000A0067007200640041006300630049006E00
      7600440042005400610062006C0065005600690065007700310043006C006900
      65006E0074004E0061006D006500010043006C00690065006E0074004E006100
      6D006500010001000D000A0067007200640041006300630049006E0076004400
      42005400610062006C0065005600690065007700310059006500610072004E00
      6F00010059006500610072004E006F00010001000D000A006700720064004100
      6300630049006E007600440042005400610062006C0065005600690065007700
      31005700650065006B004E006F0001005700650065006B004E006F0001000100
      0D000A0067007200640041006300630049006E00760044004200540061006200
      6C00650056006900650077003100530061007700500072006F00640001005300
      61007700500072006F006400010001000D000A00670072006400410063006300
      49006E007600440042005400610062006C006500560069006500770031004900
      6E00740049006E00440065006C00010049006E00740049006E00440065006C00
      010001000D000A0067007200640041006300630049006E007600440042005400
      610062006C0065005600690065007700310045007800740049006E0044006500
      6C00010045007800740049006E00440065006C00010001000D000A0067007200
      640041006300630049006E007600440042005400610062006C00650056006900
      650077003100450078007400550074006C006500760001004500780074005500
      74006C0065007600010001000D000A0067007200640041006300630049006E00
      7600440042005400610062006C0065005600690065007700310049006E007600
      6F0069006300650064004300750073007400010049006E0076006F0069006300
      650064004300750073007400010001000D000A00670072006400410063006300
      49006E007600440042005400610062006C006500560069006500770031004900
      6E0076004300680061006E0067006500010049006E0076004300680061006E00
      67006500010001000D000A0067007200640041006300630049006E0076004400
      42005400610062006C0065005600690065007700310054006F00740061006C00
      49006E007600010054006F00740061006C0049006E007600010001000D000A00
      67007200640041006300630049006E007600440042005400610062006C006500
      5600690065007700310054006F00740061006C0049006E007600430068006100
      6E00670065004D0069006C006C00010054006F00740061006C0049006E007600
      4300680061006E00670065004D0069006C006C00010001000D000A0067007200
      640041006300630049006E007600440042005400610062006C00650056006900
      65007700310054006F00740061006C0049006E0076004D0069006C006C000100
      54006F00740061006C0049006E0076004D0069006C006C00010001000D000A00
      67007200640041006300630049006E007600440042005400610062006C006500
      5600690065007700310056005700010056005700010001000D000A0061006300
      5300610076006500010053007000610072006100010001000D000A0061006300
      430061006E00630065006C004300680061006E006700650073000100C5006E00
      670072006100010001000D000A006100630041006400640042006F0072006700
      7300740065006E00610001004C00E400670067002000740069006C006C000100
      01000D000A0061006300520065006D006F007600650042006F00720067007300
      740065006E006100010054006100200062006F0072007400010001000D000A00
      73007400480069006E00740073005F0055006E00690063006F00640065000D00
      0A007300740044006900730070006C00610079004C006100620065006C007300
      5F0055006E00690063006F00640065000D000A007300740046006F006E007400
      73005F0055006E00690063006F00640065000D000A0054006600410063006300
      50006100720061006D00730001004D0053002000530061006E00730020005300
      6500720069006600010001000D000A00730074004D0075006C00740069004C00
      69006E00650073005F0055006E00690063006F00640065000D000A0073007400
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A00730074004F00740068006500720053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A006700720064004100630063005000
      6100720061006D007300440042005400610062006C0065005600690065007700
      310043006C00690065006E0074004E0061006D0065002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      65007300010001000D000A006700720064004100630063005000610072006100
      6D007300440042005400610062006C0065005600690065007700310049006E00
      67006F0069006E00670049006E0076002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      430061006C0063004500640069007400500072006F0070006500720074006900
      65007300010001000D000A006700720064004100630063005000610072006100
      6D007300440042005400610062006C0065005600690065007700310054007200
      69006D0046006100630074006F0072002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      430061006C0063004500640069007400500072006F0070006500720074006900
      65007300010001000D000A0067007200640041006300630049006E0076004400
      42005400610062006C0065005600690065007700310043006C00690065006E00
      74004E006F002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F007000650072007400690065007300010001000D000A0067007200
      640041006300630049006E007600440042005400610062006C00650056006900
      65007700310043006C00690065006E0074004E0061006D0065002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      7400690065007300010001000D000A0067007200640041006300630049006E00
      7600440042005400610062006C00650056006900650077003100590065006100
      72004E006F002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F007000650072007400690065007300010001000D000A0067007200
      640041006300630049006E007600440042005400610062006C00650056006900
      6500770031005700650065006B004E006F002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      010001000D000A0067007200640041006300630049006E007600440042005400
      610062006C00650056006900650077003100530061007700500072006F006400
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D0065000100540063007800430061006C0063004500640069007400
      500072006F007000650072007400690065007300010001000D000A0067007200
      640041006300630049006E007600440042005400610062006C00650056006900
      65007700310049006E00740049006E00440065006C002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      540063007800430061006C0063004500640069007400500072006F0070006500
      72007400690065007300010001000D000A006700720064004100630063004900
      6E007600440042005400610062006C0065005600690065007700310045007800
      740049006E00440065006C002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D006500010054006300780043006100
      6C0063004500640069007400500072006F007000650072007400690065007300
      010001000D000A007300740043006F006C006C0065006300740069006F006E00
      73005F0055006E00690063006F00640065000D000A0073007400430068006100
      720053006500740073005F0055006E00690063006F00640065000D000A005400
      660041006300630050006100720061006D007300010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A00}
  end
end
