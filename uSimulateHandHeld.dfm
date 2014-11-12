object fSimulateHandHeld: TfSimulateHandHeld
  Left = 0
  Top = 0
  Caption = 'Handdator buffert'
  ClientHeight = 527
  ClientWidth = 1135
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1135
    Height = 73
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1135
      73)
    object cxButton1: TcxButton
      Left = 1006
      Top = 13
      Width = 114
      Height = 49
      Action = acClose
      Anchors = [akRight]
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 14
      Top = 13
      Width = 114
      Height = 49
      Action = acDeleteRow
      Anchors = [akRight]
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 486
    Width = 1135
    Height = 41
    Align = alBottom
    TabOrder = 1
  end
  object grdSimulateHandHeld: TcxGrid
    Left = 0
    Top = 73
    Width = 1135
    Height = 413
    Align = alClient
    TabOrder = 2
    object grdSimulateHandHeldDBTableView1: TcxGridDBTableView
      DataController.DataSource = dmInvCtrl.ds_SimulateHandHeld
      DataController.KeyFieldNames = 'Id'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#########'
          Kind = skSum
          FieldName = 'Quantity'
          Column = grdSimulateHandHeldDBTableView1Quantity
        end
        item
          Format = '########'
          Kind = skCount
          FieldName = 'PackageNo'
          Column = grdSimulateHandHeldDBTableView1PackageNo
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object grdSimulateHandHeldDBTableView1Id: TcxGridDBColumn
        DataBinding.FieldName = 'Id'
        PropertiesClassName = 'TcxLabelProperties'
      end
      object grdSimulateHandHeldDBTableView1Produkt: TcxGridDBColumn
        DataBinding.FieldName = 'Produkt'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 416
      end
      object grdSimulateHandHeldDBTableView1LengthDesc: TcxGridDBColumn
        Caption = 'L'#228'ngd'
        DataBinding.FieldName = 'LengthDesc'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 164
      end
      object grdSimulateHandHeldDBTableView1PackageNo: TcxGridDBColumn
        DataBinding.FieldName = 'PackageNo'
        PropertiesClassName = 'TcxTextEditProperties'
      end
      object grdSimulateHandHeldDBTableView1Prefix: TcxGridDBColumn
        DataBinding.FieldName = 'Prefix'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 48
      end
      object grdSimulateHandHeldDBTableView1Status: TcxGridDBColumn
        DataBinding.FieldName = 'Status'
      end
      object grdSimulateHandHeldDBTableView1Quantity: TcxGridDBColumn
        DataBinding.FieldName = 'Quantity'
      end
      object grdSimulateHandHeldDBTableView1IC_grpno: TcxGridDBColumn
        DataBinding.FieldName = 'IC_grpno'
        PropertiesClassName = 'TcxLabelProperties'
      end
      object grdSimulateHandHeldDBTableView1PdaId: TcxGridDBColumn
        DataBinding.FieldName = 'PdaId'
        PropertiesClassName = 'TcxLabelProperties'
      end
      object grdSimulateHandHeldDBTableView1Iuser: TcxGridDBColumn
        DataBinding.FieldName = 'Iuser'
        PropertiesClassName = 'TcxLabelProperties'
      end
      object grdSimulateHandHeldDBTableView1Idate: TcxGridDBColumn
        DataBinding.FieldName = 'Idate'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 127
      end
      object grdSimulateHandHeldDBTableView1LengthSpecNo: TcxGridDBColumn
        DataBinding.FieldName = 'LengthSpecNo'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 109
      end
      object grdSimulateHandHeldDBTableView1AvgLength: TcxGridDBColumn
        DataBinding.FieldName = 'AvgLength'
        PropertiesClassName = 'TcxLabelProperties'
      end
    end
    object grdSimulateHandHeldLevel1: TcxGridLevel
      GridView = grdSimulateHandHeldDBTableView1
    end
  end
  object ActionList1: TActionList
    Left = 216
    Top = 208
    object acClose: TAction
      Caption = 'St'#228'ng'
      OnExecute = acCloseExecute
    end
    object acDeleteRow: TAction
      Caption = 'Ta bort rad'
      OnExecute = acDeleteRowExecute
      OnUpdate = acDeleteRowUpdate
    end
  end
end
