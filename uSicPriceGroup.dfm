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
    Left = 384
    Top = 264
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A004900440053005F003000010056006900
      6C006C00200064007500200073007000610072006100200069006E006E006100
      6E00200064007500200073007400E4006E006700650072003F00200001000100
      0D000A004900440053005F003100010050007200690073006700720075007000
      7000650072002E0020004C00610067006500720069006E00760065006E007400
      6500720069006E00670020006E0072002000010001000D000A00730074004F00
      740068006500720053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A007300740043006F006C006C0065006300740069006F00
      6E0073005F0055006E00690063006F00640065000D000A007300740043006800
      6100720053006500740073005F0055006E00690063006F00640065000D000A00}
  end
end
