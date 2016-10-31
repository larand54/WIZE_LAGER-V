object fAccParams: TfAccParams
  Left = 229
  Top = 107
  Caption = 'Parametrar'
  ClientHeight = 636
  ClientWidth = 1170
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1170
    Height = 50
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 10
      Top = 10
      Width = 92
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acSave
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 108
      Top = 10
      Width = 93
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acCancelChanges
      TabOrder = 1
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 50
    Width = 1170
    Height = 586
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tsAccParams
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 586
    ClientRectRight = 1170
    ClientRectTop = 27
    object tsAccParams: TcxTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Ing'#229'ende lager'
      ImageIndex = 0
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1170
        Height = 50
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        TabOrder = 0
        object seYearNo: TcxDBSpinEdit
          Left = 177
          Top = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataBinding.DataField = 'YearNo'
          DataBinding.DataSource = dmsSystem.ds_AccStart
          Properties.ImmediatePost = True
          TabOrder = 0
          Width = 149
        end
        object seWeekNo: TcxDBSpinEdit
          Left = 433
          Top = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataBinding.DataField = 'WeekNo'
          DataBinding.DataSource = dmsSystem.ds_AccStart
          Properties.ImmediatePost = True
          TabOrder = 1
          Width = 149
        end
        object cxLabel1: TcxLabel
          Left = 354
          Top = 20
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Start vecka:'
        end
        object cxLabel2: TcxLabel
          Left = 108
          Top = 20
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Start '#197'r:'
        end
      end
      object grdAccParams: TcxGrid
        Left = 0
        Top = 50
        Width = 1170
        Height = 509
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 1
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
            Caption = 'ClientName'
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
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Borgstena'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1170
        Height = 50
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        TabOrder = 0
        object cxButton3: TcxButton
          Left = 10
          Top = 10
          Width = 92
          Height = 31
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Action = acAddBorgstena
          TabOrder = 0
          Visible = False
        end
        object cxButton4: TcxButton
          Left = 108
          Top = 10
          Width = 93
          Height = 31
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Action = acRemoveBorgstena
          TabOrder = 1
          Visible = False
        end
      end
      object grdAccInv: TcxGrid
        Left = 0
        Top = 50
        Width = 1170
        Height = 509
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
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
    UseDefaultLanguage = True
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
      'ListField'
      'AutoIncFields'
      'CaseInsFields'
      'CatalogName'
      'Categories'
      'ClassName'
      'CommandText'
      'ConnectionName'
      'ConstraintErrorMessage'
      'CustomConstraint'
      'DataTypeName'
      'DefaultExpression'
      'DescFields'
      'DetailFields'
      'DisplayChecked'
      'DisplayUnchecked'
      'EditFormat'
      'Expression'
      'FetchRowSQL'
      'Fields'
      'Filter'
      'FmtDisplayDate'
      'FmtDisplayDateTime'
      'FmtDisplayNumeric'
      'FmtDisplayTime'
      'FmtEditNumeric'
      'GeneratorName'
      'GraphicClassName'
      'HotZoneClassName'
      'ImportedConstraint'
      'IndexFieldNames'
      'IniFileName'
      'InsertSQL'
      'KeyFieldNames'
      'ListFieldNames'
      'LockSQL'
      'Origin'
      'PackageName'
      'Params'
      'PersistentFileName'
      'PictureFilter'
      'PictureGraphicClassName'
      'PopupMenuLinks'
      'PropertiesClassName'
      'RegistryPath'
      'SchemaName'
      'SkinName'
      'StorageName'
      'StoredProcName'
      'UpdateTableName'
      'Version'
      'DataSetName'
      'IniFile'
      'ProviderName'
      'ScriptLanguage'
      'ScriptText')
    Left = 472
    Top = 264
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660041006300630050006100720061006D0073000100
      50006100720061006D00650074007200610072000100010001000D000A007400
      730041006300630050006100720061006D007300010049006E006700E5006500
      6E006400650020006C0061006700650072000100010001000D000A0063007800
      4C006100620065006C0031000100530074006100720074002000760065006300
      6B0061003A000100010001000D000A00630078004C006100620065006C003200
      0100530074006100720074002000C50072003A000100010001000D000A006700
      7200640041006300630050006100720061006D00730044004200540061006200
      6C0065005600690065007700310043006C00690065006E0074004E0061006D00
      6500010043006C00690065006E0074004E0061006D0065000100010001000D00
      0A0067007200640041006300630050006100720061006D007300440042005400
      610062006C0065005600690065007700310049006E0067006F0069006E006700
      49006E007600010049006E0067006F0069006E00670049006E00760001000100
      01000D000A0067007200640041006300630050006100720061006D0073004400
      42005400610062006C006500560069006500770031005400720069006D004600
      6100630074006F00720001005400720069006D0046006100630074006F007200
      0100010001000D000A007400730041006300630049006E007600010042006F00
      720067007300740065006E0061000100010001000D000A006700720064004100
      6300630049006E007600440042005400610062006C0065005600690065007700
      310043006C00690065006E0074004E006F00010043006C00690065006E007400
      4E006F000100010001000D000A0067007200640041006300630049006E007600
      440042005400610062006C0065005600690065007700310043006C0069006500
      6E0074004E0061006D006500010043006C00690065006E0074004E0061006D00
      65000100010001000D000A0067007200640041006300630049006E0076004400
      42005400610062006C0065005600690065007700310059006500610072004E00
      6F00010059006500610072004E006F000100010001000D000A00670072006400
      41006300630049006E007600440042005400610062006C006500560069006500
      770031005700650065006B004E006F0001005700650065006B004E006F000100
      010001000D000A0067007200640041006300630049006E007600440042005400
      610062006C00650056006900650077003100530061007700500072006F006400
      0100530061007700500072006F0064000100010001000D000A00670072006400
      41006300630049006E007600440042005400610062006C006500560069006500
      7700310049006E00740049006E00440065006C00010049006E00740049006E00
      440065006C000100010001000D000A0067007200640041006300630049006E00
      7600440042005400610062006C00650056006900650077003100450078007400
      49006E00440065006C00010045007800740049006E00440065006C0001000100
      01000D000A0067007200640041006300630049006E0076004400420054006100
      62006C00650056006900650077003100450078007400550074006C0065007600
      0100450078007400550074006C00650076000100010001000D000A0067007200
      640041006300630049006E007600440042005400610062006C00650056006900
      65007700310049006E0076006F00690063006500640043007500730074000100
      49006E0076006F00690063006500640043007500730074000100010001000D00
      0A0067007200640041006300630049006E007600440042005400610062006C00
      65005600690065007700310049006E0076004300680061006E00670065000100
      49006E0076004300680061006E00670065000100010001000D000A0067007200
      640041006300630049006E007600440042005400610062006C00650056006900
      65007700310054006F00740061006C0049006E007600010054006F0074006100
      6C0049006E0076000100010001000D000A006700720064004100630063004900
      6E007600440042005400610062006C0065005600690065007700310054006F00
      740061006C0049006E0076004300680061006E00670065004D0069006C006C00
      010054006F00740061006C0049006E0076004300680061006E00670065004D00
      69006C006C000100010001000D000A0067007200640041006300630049006E00
      7600440042005400610062006C0065005600690065007700310054006F007400
      61006C0049006E0076004D0069006C006C00010054006F00740061006C004900
      6E0076004D0069006C006C000100010001000D000A0067007200640041006300
      630049006E007600440042005400610062006C00650056006900650077003100
      560057000100560057000100010001000D000A00610063005300610076006500
      0100530070006100720061000100010001000D000A0061006300430061006E00
      630065006C004300680061006E006700650073000100C5006E00670072006100
      0100010001000D000A006100630041006400640042006F007200670073007400
      65006E00610001004C00E400670067002000740069006C006C00010001000100
      0D000A0061006300520065006D006F007600650042006F007200670073007400
      65006E006100010054006100200062006F00720074000100010001000D000A00
      73007400480069006E00740073005F0055006E00690063006F00640065000D00
      0A007300740044006900730070006C00610079004C006100620065006C007300
      5F0055006E00690063006F00640065000D000A007300740046006F006E007400
      73005F0055006E00690063006F00640065000D000A0054006600410063006300
      50006100720061006D00730001004D0053002000530061006E00730020005300
      650072006900660001004D0053002000530061006E0073002000530065007200
      6900660001005400610068006F006D0061000D000A00730074004D0075006C00
      740069004C0069006E00650073005F0055006E00690063006F00640065000D00
      0A007300740053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A004900440053005F003000010044006100740061002000E400
      7200200069006E007400650020007300700061007200610074002C0020007600
      69006C006C00200064007500200073007400E4006E00670061003F0020000100
      010001000D000A00730074004F00740068006500720053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A007300740043006F00
      6C006C0065006300740069006F006E0073005F0055006E00690063006F006400
      65000D000A0073007400430068006100720053006500740073005F0055006E00
      690063006F00640065000D000A00540066004100630063005000610072006100
      6D0073000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000D000A00}
  end
end
