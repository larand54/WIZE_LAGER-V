object fAOUser: TfAOUser
  Left = 295
  Top = 106
  Width = 633
  Height = 460
  Caption = 'Inst'#228'llningar'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 625
    Height = 392
    Align = alClient
    TabOrder = 0
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 623
      Height = 27
      Align = alTop
      Caption = 'Mina produktionsenheter'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object grdAOUserRP: TcxGrid
      Left = 1
      Top = 60
      Width = 623
      Height = 331
      Align = alClient
      TabOrder = 1
      object grdAOUserRPDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dmcOrder.ds_AOUserRP
        DataController.KeyFieldNames = 'ProducerNo;RegPointNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object grdAOUserRPDBTableView1Producent: TcxGridDBColumn
          DataBinding.FieldName = 'Producent'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ClientNo'
          Properties.ListColumns = <
            item
              FieldName = 'SearchName'
            end>
          Properties.ListOptions.ShowHeader = False
          Options.Filtering = False
          Width = 197
        end
        object grdAOUserRPDBTableView1Mtpunkt: TcxGridDBColumn
          DataBinding.FieldName = 'M'#228'tpunkt'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'RegPointNo'
          Properties.ListColumns = <
            item
              FieldName = 'RegPointName'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.OnCloseUp = grdAOUserRPDBTableView1MtpunktPropertiesCloseUp
          Properties.OnInitPopup = grdAOUserRPDBTableView1MtpunktPropertiesInitPopup
          Options.Filtering = False
        end
        object grdAOUserRPDBTableView1VoEnhet: TcxGridDBColumn
          DataBinding.FieldName = 'VoEnhet'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ListColumns = <>
          Properties.ListFieldIndex = -1
          Options.Filtering = False
        end
        object grdAOUserRPDBTableView1StandardRegPoint: TcxGridDBColumn
          DataBinding.FieldName = 'StandardRegPoint'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Options.Filtering = False
          Width = 97
        end
        object grdAOUserRPDBTableView1UserID: TcxGridDBColumn
          DataBinding.FieldName = 'UserID'
          Visible = False
        end
        object grdAOUserRPDBTableView1ProducerNo: TcxGridDBColumn
          DataBinding.FieldName = 'ProducerNo'
          Visible = False
        end
        object grdAOUserRPDBTableView1RegPointNo: TcxGridDBColumn
          DataBinding.FieldName = 'RegPointNo'
          Visible = False
        end
        object grdAOUserRPDBTableView1DateCreated: TcxGridDBColumn
          DataBinding.FieldName = 'DateCreated'
          Visible = False
        end
        object grdAOUserRPDBTableView1DateModified: TcxGridDBColumn
          DataBinding.FieldName = 'DateModified'
          Visible = False
        end
        object grdAOUserRPDBTableView1ModifiedUser: TcxGridDBColumn
          DataBinding.FieldName = 'ModifiedUser'
          Visible = False
        end
      end
      object grdAOUserRPLevel1: TcxGridLevel
        GridView = grdAOUserRPDBTableView1
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 28
      Width = 623
      Height = 32
      Align = alTop
      TabOrder = 2
      object BitBtn2: TBitBtn
        Left = 8
        Top = 4
        Width = 75
        Height = 25
        Action = acAdd
        Caption = 'L'#228'gg till'
        TabOrder = 0
      end
      object BitBtn3: TBitBtn
        Left = 82
        Top = 4
        Width = 75
        Height = 25
        Action = acDelete
        Caption = 'Ta bort'
        TabOrder = 1
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 392
    Width = 625
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 272
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkOK
    end
  end
  object ActionList1: TActionList
    Left = 192
    Top = 259
    object acAdd: TAction
      Caption = 'L'#228'gg till'
      OnExecute = acAddExecute
    end
    object acDelete: TAction
      Caption = 'Ta bort'
      OnExecute = acDeleteExecute
    end
  end
end
