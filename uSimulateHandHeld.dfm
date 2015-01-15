object fSimulateHandHeld: TfSimulateHandHeld
  Left = 0
  Top = 0
  Caption = 'Handdator buffert'
  ClientHeight = 395
  ClientWidth = 851
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 851
    Height = 55
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alTop
    TabOrder = 0
    DesignSize = (
      851
      55)
    object cxButton1: TcxButton
      Left = 755
      Top = 10
      Width = 85
      Height = 37
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Action = acClose
      Anchors = [akRight]
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 11
      Top = 10
      Width = 85
      Height = 37
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Action = acDeleteRow
      Anchors = [akRight]
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 365
    Width = 851
    Height = 30
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    TabOrder = 1
  end
  object grdSimulateHandHeld: TcxGrid
    Left = 0
    Top = 55
    Width = 851
    Height = 310
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alClient
    TabOrder = 2
    object grdSimulateHandHeldDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
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
  object siLangLinked_fSimulateHandHeld: TsiLangLinked
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
    Left = 416
    Top = 200
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
