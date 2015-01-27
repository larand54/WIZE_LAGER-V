object fAOUser: TfAOUser
  Left = 295
  Top = 106
  Caption = 'Inst'#228'llningar'
  ClientHeight = 422
  ClientWidth = 617
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
    Width = 617
    Height = 381
    Align = alClient
    TabOrder = 0
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 615
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
      Width = 615
      Height = 320
      Align = alClient
      TabOrder = 1
      object grdAOUserRPDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
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
          Properties.KeyFieldNames = 'VolumeUnit_No'
          Properties.ListColumns = <
            item
              FieldName = 'VolumeUnitName'
            end>
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
      Width = 615
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
    Top = 381
    Width = 617
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 272
      Top = 8
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtn1Click
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
  object siLangLinked_fAOUser: TsiLangLinked
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
    Left = 304
    Top = 216
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
