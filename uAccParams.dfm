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
    ClientRectBottom = 476
    ClientRectRight = 951
    ClientRectTop = 24
    object tsAccParams: TcxTabSheet
      Caption = 'Ing'#229'ende lager'
      ImageIndex = 0
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 951
        Height = 41
        Align = alTop
        TabOrder = 0
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
        Width = 951
        Height = 411
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
end
