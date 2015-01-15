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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 951
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
        Width = 951
        Height = 411
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
    Left = 472
    Top = 264
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
