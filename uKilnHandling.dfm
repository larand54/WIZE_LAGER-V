object fkilnHandling: TfkilnHandling
  Left = 251
  Top = 172
  Align = alClient
  BorderStyle = bsNone
  Caption = 'LAGERRAPPORT'
  ClientHeight = 1012
  ClientWidth = 1541
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = pmFormShortcuts
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object pcInventory: TcxPageControl
    Left = 0
    Top = 84
    Width = 1541
    Height = 928
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tsTABELL
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    Properties.Style = 9
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.Kind = lfUltraFlat
    TabSlants.Kind = skCutCorner
    ClientRectBottom = 928
    ClientRectRight = 1541
    ClientRectTop = 0
    object tsTABELL: TcxTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'PAKETTABELLER'
      ImageIndex = 2
      object Memo1: TMemo
        Left = 79
        Top = 138
        Width = 188
        Height = 80
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Lines.Strings = (
          'Memo1')
        TabOrder = 0
        Visible = False
      end
      object pcPktNrAndTorkSats: TcxPageControl
        Left = 0
        Top = 866
        Width = 1541
        Height = 62
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alBottom
        TabOrder = 1
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 62
        ClientRectRight = 1541
        ClientRectTop = 0
      end
      object cxSplitter1: TcxSplitter
        Left = 0
        Top = 858
        Width = 1541
        Height = 8
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        HotZoneClassName = 'TcxMediaPlayer8Style'
        AlignSplitter = salBottom
        Control = pcPktNrAndTorkSats
        Color = clGreen
        ParentColor = False
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1541
        Height = 858
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 3
        object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
          OnMouseDown = cxGrid1DBBandedTableView1MouseDown
          Navigator.Buttons.CustomButtons = <>
          OnCellClick = cxGrid1DBBandedTableView1CellClick
          OnInitEdit = cxGrid1DBBandedTableView1InitEdit
          DataController.DataSource = dmInventory.ds_KilnVagnar
          DataController.KeyFieldNames = 'RowNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.Summary.Options = [soMultipleSelectedRecords]
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.FocusCellOnCycle = True
          OptionsBehavior.PullFocusing = True
          OptionsCustomize.ColumnSorting = False
          OptionsCustomize.DataRowSizing = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.DataRowHeight = 54
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Preview.LeftIndent = 300
          Preview.Visible = True
          Styles.Content = cxStyleContent
          Styles.ContentEven = cxStyleContent
          Styles.ContentOdd = cxStyleContent
          Styles.StyleSheet = GridBandedTableViewStyleSheetPumpkinlarge
          Styles.BandHeader = cxStyle8
          OnColumnHeaderClick = cxGrid1DBBandedTableView1ColumnHeaderClick
          Bands = <
            item
              FixedKind = fkLeft
              Options.HoldOwnColumnsOnly = True
              Options.Moving = False
              Width = 137
            end
            item
              Caption = 'VAGNL'#196'GE'
              Options.HoldOwnColumnsOnly = True
              Options.Moving = False
              Width = 1127
            end>
          object cxGrid1DBBandedTableView1Rad: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Rad'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            Width = 65
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1RowNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RowNo'
            SortIndex = 0
            SortOrder = soDescending
            Width = 38
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L1'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L2'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L3'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L4: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L4'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L5: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L5'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L6: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L6'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L7: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L7'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L8: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L8'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L9: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L9'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L10: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L10'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L11: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L11'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L12: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L12'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L13: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L13'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L14: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L14'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L15: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L15'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L16: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L16'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L17: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L17'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L18: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L18'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L19: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L19'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L20: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L20'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L21: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L21'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L22: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L22'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L23: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L23'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L24: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L24'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L25: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L25'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 24
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L26: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L26'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 25
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L27: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L27'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 26
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L28: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L28'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 27
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L29: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L29'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 28
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L30: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L30'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 29
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L31: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L31'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 30
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L32: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L32'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 31
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L33: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L33'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 32
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L34: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L34'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 33
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L35: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L35'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.WordWrap = True
            OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
            Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
            Position.BandIndex = 1
            Position.ColIndex = 34
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L36: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L36'
            Position.BandIndex = 1
            Position.ColIndex = 35
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L37: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L37'
            Position.BandIndex = 1
            Position.ColIndex = 36
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L38: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L38'
            Position.BandIndex = 1
            Position.ColIndex = 37
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L39: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L39'
            Position.BandIndex = 1
            Position.ColIndex = 38
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L40: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L40'
            Position.BandIndex = 1
            Position.ColIndex = 39
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L41: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L41'
            Position.BandIndex = 1
            Position.ColIndex = 40
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L42: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L42'
            Position.BandIndex = 1
            Position.ColIndex = 41
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L43: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L43'
            Position.BandIndex = 1
            Position.ColIndex = 42
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L44: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L44'
            Position.BandIndex = 1
            Position.ColIndex = 43
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L45: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L45'
            Position.BandIndex = 1
            Position.ColIndex = 44
            Position.RowIndex = 0
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBBandedTableView1
        end
      end
    end
  end
  object pgInventory: TcxPageControl
    Left = 0
    Top = 0
    Width = 1541
    Height = 84
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    TabOrder = 5
    Properties.ActivePage = tsLagret
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    ClientRectBottom = 84
    ClientRectRight = 1541
    ClientRectTop = 0
    object tsLagret: TcxTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Lager'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1541
        Height = 84
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          1541
          84)
        object cxLabel2: TcxLabel
          Left = 5
          Top = 16
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = #196'gare:'
          Style.StyleController = cxEditStyleController1
        end
        object cxLabelVagn: TcxLabel
          Left = 353
          Top = 9
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Markerad vagn:'
        end
        object lcProgressKiln: TcxDBLookupComboBox
          Left = 55
          Top = 43
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataBinding.DataField = 'ProgressKiln'
          DataBinding.DataSource = dsUserProp
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'KilnChargeNo'
          Properties.ListColumns = <
            item
              FieldName = 'KilnName'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.StyleController = cxEditStyleController3
          TabOrder = 2
          Width = 291
        end
        object cxButton3: TcxButton
          Left = 997
          Top = 15
          Width = 101
          Height = 61
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Action = acMoveFromKiln
          TabOrder = 4
          WordWrap = True
        end
        object cxButton1: TcxButton
          Left = 788
          Top = 15
          Width = 106
          Height = 61
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Action = acMoveVagnIntoKiln
          TabOrder = 5
          WordWrap = True
        end
        object cxButton6: TcxButton
          Left = 697
          Top = 15
          Width = 89
          Height = 61
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Action = acEditVagn
          TabOrder = 6
          WordWrap = True
        end
        object cxButton5: TcxButton
          Left = 596
          Top = 15
          Width = 99
          Height = 61
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Action = acAddVagn
          TabOrder = 7
          WordWrap = True
        end
        object cxButton2: TcxButton
          Left = 507
          Top = 15
          Width = 87
          Height = 61
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Action = acPkgTypeTable
          OptionsImage.Layout = blGlyphTop
          TabOrder = 8
        end
        object cxLabel1: TcxLabel
          Left = 5
          Top = 44
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Tork:'
          Style.StyleController = cxEditStyleController1
        end
        object cxButton4: TcxButton
          Left = 895
          Top = 15
          Width = 101
          Height = 61
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Action = acCancelMoveVagnIntoKiln
          LookAndFeel.SkinName = ''
          TabOrder = 10
          WordWrap = True
        end
        object cbColAutoWidth: TcxCheckBox
          Left = 350
          Top = 27
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Auto kolumnbredd'
          Properties.ImmediatePost = True
          Properties.OnChange = cbColAutoWidthPropertiesChange
          TabOrder = 11
          Width = 146
        end
        object cxButton7: TcxButton
          Left = 1100
          Top = 15
          Width = 102
          Height = 61
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Action = acCancelMoveFromKiln
          TabOrder = 12
          WordWrap = True
        end
        object lcOWNER: TcxDBLookupComboBox
          Left = 55
          Top = 14
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataBinding.DataField = 'OWNER'
          DataBinding.DataSource = dsUserProp
          Properties.DropDownListStyle = lsFixedList
          Properties.KeyFieldNames = 'ClientNo'
          Properties.ListColumns = <
            item
              FieldName = 'ClientName'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.MaxLength = 0
          Style.StyleController = cxEditStyleController3
          TabOrder = 13
          Width = 291
        end
        object lNoOfVagnarKiln: TcxDBLabel
          Left = 1302
          Top = 18
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataBinding.DataField = 'NoOfVagnar'
          Height = 26
          Width = 105
        end
        object lAntalVagnarBefore: TcxDBLabel
          Left = 1302
          Top = 49
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataBinding.DataField = 'NoOfVagnarBefore'
          Height = 26
          Width = 105
        end
        object cxButton9: TcxButton
          Left = 1456
          Top = 15
          Width = 70
          Height = 61
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Anchors = [akTop, akRight]
          Caption = 'St'#228'ng'
          TabOrder = 3
          OnClick = cxButton9Click
        end
        object seColWidth: TcxDBSpinEdit
          Left = 425
          Top = 53
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataBinding.DataField = 'CopyPcs'
          DataBinding.DataSource = dsUserProp
          TabOrder = 16
          Width = 77
        end
        object cxLabel3: TcxLabel
          Left = 353
          Top = 55
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Kolbredd:'
        end
        object cxButton8: TcxButton
          Left = 1204
          Top = 15
          Width = 85
          Height = 61
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Action = acSaveProps
          TabOrder = 18
          WordWrap = True
        end
      end
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'PkgTable'
      'PaketNr'
      'TorkSats'
      'PaketTabellMeny'
      'FilterComboBoxes')
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True
      True)
    LookAndFeel.Kind = lfFlat
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 312
    Top = 473
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsNone
      FloatLeft = 273
      FloatTop = 178
      FloatClientWidth = 100
      FloatClientHeight = 280
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbPkgNoReport'
        end
        item
          Visible = True
          ItemName = 'lbPcsPerLengthReport'
        end
        item
          Visible = True
          ItemName = 'lbPkgTypeReport'
        end
        item
          Visible = True
          ItemName = 'lbInventoryCount'
        end
        item
          Visible = True
          ItemName = 'bbSummaryReport'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'lbExit'
        end>
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = False
    end
    object dxBarManager1Bar3: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'TorkSats'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 313
      FloatTop = 626
      FloatClientWidth = 86
      FloatClientHeight = 110
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton15'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton16'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton17'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton18'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton19'
        end>
      OldName = 'TorkSats'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = False
      WholeRow = False
    end
    object dxBarManager1Bar5: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Torksats2'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 404
      FloatTop = 232
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbAddPkgsToKilnCharge'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton30'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton32'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton20'
        end>
      OldName = 'Torksats2'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = False
      WholeRow = False
    end
    object lbExit: TdxBarLargeButton
      Action = acClose
      Category = 0
    end
    object lbRefresh: TdxBarLargeButton
      Caption = '&Refresh'
      Category = 0
      Hint = 'Refresh'
      Visible = ivAlways
      LargeImageIndex = 0
    end
    object lbPkgNoReport: TdxBarLargeButton
      Caption = 'Paketnr F2'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 2
      ShortCut = 113
    end
    object lbPcsPerLengthReport: TdxBarLargeButton
      Caption = 'Ant/l'#228'ngd F3'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 5
      ShortCut = 114
    end
    object lbPkgTypeReport: TdxBarLargeButton
      Caption = 'Paketkod F4'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 4
      ShortCut = 115
    end
    object lbInventoryCount: TdxBarLargeButton
      Caption = 'PktNr lista F5'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 2
      ShortCut = 116
    end
    object lbHideFilterPanel: TdxBarLargeButton
      Caption = 'G'#246'm filter'
      Category = 0
      Hint = 'G'#246'm filter'
      Visible = ivAlways
      ButtonStyle = bsChecked
      LargeImageIndex = 6
    end
    object bbSummaryReport: TdxBarLargeButton
      Caption = 'Summering CR F6'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 7
      ShortCut = 117
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Tabell F8'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 8
      ShortCut = 119
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Summering F7'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 7
      ShortCut = 118
    end
    object dxBarButton33: TdxBarButton
      Caption = 'Summering'
      Category = 0
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
    end
    object dxBarButton40: TdxBarButton
      Caption = 'Spara layout'
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton41: TdxBarButton
      Caption = #214'ppna layout'
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton42: TdxBarButton
      Caption = 'Spara som excel'
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton1: TdxBarButton
      Action = acPkgInfo
      Category = 1
    end
    object dxBarButton2: TdxBarButton
      Caption = 'F'#228'lt v'#228'ljare'
      Category = 1
      Visible = ivAlways
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Expandera alla grupper'
      Category = 1
      Visible = ivAlways
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Kollapsa alla grupper'
      Category = 1
      Visible = ivAlways
    end
    object dxBarButton5: TdxBarButton
      Caption = #196'ndra paket'
      Category = 1
      Visible = ivAlways
    end
    object dxBarButton6: TdxBarButton
      Caption = 'Ta bort paket'
      Category = 1
      Enabled = False
      Visible = ivAlways
    end
    object dxBarButton7: TdxBarButton
      Caption = 'Paketlogg'
      Category = 1
      Visible = ivAlways
    end
    object dxBarButton35: TdxBarButton
      Caption = 'V'#229'rda lager'
      Category = 1
      Visible = ivAlways
    end
    object dxBarButton43: TdxBarButton
      Caption = #196'ndra pris p'#229' markerade paket'
      Category = 1
      Visible = ivAlways
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000005A00000084
        000000C6000042424200008484008484840084FF840000C6C600C6C6C600C6FF
        C600FF00FF0084FFFF00C6FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000A0A0A0A0A0A
        0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A05040404050A0A0A0A0A0A05040404
        05040C0B0B040A0A0A0A0A0A040C0B0B04050404040504050A0A0A0A05040404
        050A0A04080808040A0A0A0A0A0A0A0A0A0A0A04070707040A0A0A0000000000
        000000040808080400000A0001010202020202040707070401000A0001020606
        060303040D0B0B0401000A0002090906030808040404040602000A0002090909
        030C08080306060602000A0001020909090303030606060201000A0001010209
        090909060606020101000A0000000000000000000000000000000A0A0A0A0A0A
        0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A}
    end
    object dxBarButton8: TdxBarButton
      Caption = 'Registrera paket'
      Category = 2
      Visible = ivAlways
      ImageIndex = 3
    end
    object dxBarButton9: TdxBarButton
      Caption = #196'ndra paket'
      Category = 2
      Visible = ivAlways
      ImageIndex = 3
    end
    object dxBarButton10: TdxBarButton
      Caption = 'Avregistrera paket'
      Category = 2
      Visible = ivAlways
      ImageIndex = 3
    end
    object dxBarButton11: TdxBarButton
      Caption = 'Skriv ut'
      Category = 2
      Visible = ivAlways
      ImageIndex = 11
    end
    object dxBarButton12: TdxBarButton
      Caption = 'Emaila'
      Category = 2
      Visible = ivAlways
      ImageIndex = 6
    end
    object dxBarButton14: TdxBarButton
      Caption = 'F'#228'lt v'#228'ljare'
      Category = 2
      Visible = ivAlways
    end
    object dxBarButton13: TdxBarButton
      Caption = 'Paketinformation'
      Category = 2
      Visible = ivAlways
    end
    object dxBarButton28: TdxBarButton
      Caption = 'Flytta paket internt'
      Category = 2
      Visible = ivAlways
    end
    object dxBarButton34: TdxBarButton
      Caption = 'Avregistrera mot inventering'
      Category = 2
      Visible = ivAlways
    end
    object dxBarButton37: TdxBarButton
      Caption = 'Ta bort paket (lagerv'#229'rd)'
      Category = 2
      Visible = ivAlways
    end
    object dxBarButton38: TdxBarButton
      Caption = #196'ndra paket (lagerv'#229'rd)'
      Category = 2
      Visible = ivAlways
    end
    object dxBarButton15: TdxBarButton
      Caption = 'Ny torksats'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton16: TdxBarButton
      Caption = '  Spara  '
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton17: TdxBarButton
      Caption = #197'ngra'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton18: TdxBarButton
      Caption = 'Ta bort torksats'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton19: TdxBarButton
      Caption = #214'ppna'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton20: TdxBarButton
      Caption = 'Skriv ut'
      Category = 3
      Visible = ivAlways
    end
    object bbAddPkgsToKilnCharge: TdxBarButton
      Caption = 'L'#228'gg paket till torksats'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton30: TdxBarButton
      Caption = 'Ta bort paket'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton29: TdxBarButton
      Caption = 'Ta bort rad'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton31: TdxBarButton
      Caption = 'Flytta paket till lager efter tork'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton32: TdxBarButton
      Caption = 'Notering'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton22: TdxBarButton
      Action = acPkgTypeTable
      Category = 4
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000130B0000130B00000001000000000000000000008484
        8400FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00020202020202
        0202020202020202020202020202020202020202020202020202020202020202
        0202020202020202020202020202020202020202020202020202020202000000
        0000000000000202020202020201000001020202020002020202020202020100
        0001020202020202020202020202020100000102020202020202020202020202
        0100000202020202020202020202020100000102020202020202020202020100
        0001020202020202020202020201000001020202020002020202020202000000
        0000000000000202020202020202020202020202020202020202020202020202
        0202020202020202020202020202020202020202020202020202}
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton23: TdxBarButton
      Caption = 'Skriv &ut'
      Category = 4
      Visible = ivAlways
      ImageIndex = 11
      ShortCut = 16503
    end
    object dxBarButton24: TdxBarButton
      Caption = 'Automatisk kolumnbredd'
      Category = 4
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
    end
    object dxBarButton25: TdxBarButton
      Caption = 'Emaila'
      Category = 4
      Visible = ivAlways
      ImageIndex = 6
    end
    object dxBarButton26: TdxBarButton
      Caption = 'Gruppsummering'
      Category = 4
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
    end
    object dxBarButton27: TdxBarButton
      Caption = 'Grupperingsruta'
      Category = 4
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
    end
    object bbVisaAvAktiverade: TdxBarButton
      Caption = 'Visa avaktiverade'
      Category = 4
      Visible = ivAlways
    end
    object dxBarButton36: TdxBarButton
      Caption = 'Alternativ dim.inmatning'
      Category = 4
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
    end
    object dxBarButton39: TdxBarButton
      Caption = #197'terst'#228'll tabelllayout'
      Category = 4
      Visible = ivAlways
    end
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 768
    Top = 385
    object acClose: TAction
      Caption = 'X'
      ShortCut = 16467
      OnExecute = acCloseExecute
    end
    object acPkgInfo: TAction
      Caption = 'Paketinformation'
      OnExecute = acPkgInfoExecute
    end
    object acPkgTypeTable: TAction
      Caption = 'Uppdatera'
      ImageIndex = 0
      ShortCut = 121
      OnExecute = acPkgTypeTableExecute
      OnUpdate = acPkgTypeTableUpdate
    end
    object acAddVagn: TAction
      Category = 'TorkSats'
      Caption = 'L'#228'gg till Vagn/Sats'
      OnExecute = acAddVagnExecute
      OnUpdate = acAddVagnUpdate
    end
    object acEditVagn: TAction
      Category = 'TorkSats'
      Caption = #196'ndra Vagn/Sats'
      OnExecute = acEditVagnExecute
      OnUpdate = acEditVagnUpdate
    end
    object acMoveVagnIntoKiln: TAction
      Category = 'TorkSats'
      Caption = 'Stega in Vagn/Sats i tork'
      OnExecute = acMoveVagnIntoKilnExecute
      OnUpdate = acMoveVagnIntoKilnUpdate
    end
    object acMoveFromKiln: TAction
      Category = 'TorkSats'
      Caption = 'Stega ut Vagn/Sats fr'#229'n tork'
      OnExecute = acMoveFromKilnExecute
      OnUpdate = acMoveFromKilnUpdate
    end
    object acCancelMoveVagnIntoKiln: TAction
      Category = 'TorkSats'
      Caption = #197'ngra Stega in Vagn/Sats i tork'
      OnExecute = acCancelMoveVagnIntoKilnExecute
    end
    object acCancelMoveFromKiln: TAction
      Category = 'TorkSats'
      Caption = #197'ngra Stega ut Vagn/Sats fr'#229'n tork'
      OnExecute = acCancelMoveFromKilnExecute
    end
    object acSaveProps: TAction
      Caption = 'Spara inst'#228'llningar'
      OnExecute = acSavePropsExecute
    end
  end
  object pmFormShortcuts: TPopupMenu
    AutoPopup = False
    Left = 120
    Top = 312
    object F1PktNrrapport1: TMenuItem
      Caption = 'Paketnr F2'
      ImageIndex = 2
      ShortCut = 113
    end
    object F2Antallngdrapport1: TMenuItem
      Caption = 'Ant/l'#228'ngd F3'
      ImageIndex = 5
      ShortCut = 114
    end
    object F3Pktkodrapport1: TMenuItem
      Caption = 'Paketkod F4'
      ImageIndex = 4
      ShortCut = 115
    end
    object F4PktNrlista1: TMenuItem
      Caption = 'PktNr lista F5'
      ImageIndex = 2
      ShortCut = 116
    end
    object F5Lagersummering1: TMenuItem
      Caption = 'Summering F6'
      ImageIndex = 7
      ShortCut = 117
    end
    object Stng1: TMenuItem
      Action = acClose
    end
    object PakettabellF81: TMenuItem
      Caption = 'Paketnr F8'
      ImageIndex = 8
      ShortCut = 119
    end
    object LagersumtabellF71: TMenuItem
      Caption = 'Summering F7'
      ImageIndex = 7
      ShortCut = 118
    end
    object Skrivut1: TMenuItem
      Caption = 'Skriv &ut'
      ImageIndex = 11
      ShortCut = 16503
    end
    object AntlngdF91: TMenuItem
      Caption = 'Ant/l'#228'ngd F9'
      ImageIndex = 5
      ShortCut = 120
    end
    object SummeringF61: TMenuItem
      Action = acPkgTypeTable
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 609
    Top = 481
  end
  object SaveDialog1: TSaveDialog
    Left = 609
    Top = 417
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 440
    Top = 457
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = cxGrid1
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageHeader.RightTitle.Strings = (
        '[User Name][Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 39085.979061331020000000
      OptionsSelection.ProcessExactSelection = True
      OptionsSelection.ProcessSelection = True
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link2: TdxGridReportLink
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageHeader.RightTitle.Strings = (
        '[User Name][Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link3: TdxGridReportLink
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageHeader.RightTitle.Strings = (
        '[User Name][Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link4: TdxGridReportLink
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageHeader.RightTitle.Strings = (
        '[User Name][Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      OptionsSelection.ProcessExactSelection = True
      OptionsSelection.ProcessSelection = True
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link5: TdxGridReportLink
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageHeader.RightTitle.Strings = (
        '[User Name][Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  object pmPkgTable: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'bbAddPkgsToKilnCharge'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton35'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton43'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end>
    UseOwnFont = False
    Left = 608
    Top = 233
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 312
    Top = 416
    PixelsPerInch = 120
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clSilver
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clSilver
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleAktivePkg: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyleINAktivePkg: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsStrikeOut]
      TextColor = clRed
    end
    object cxStyleNormalAktivePkg: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13626101
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 3122647
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 13626101
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4325442
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4944971
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 3122647
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4944971
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyleBeforeKiln: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
    end
    object cxStyleInKiln: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
    end
    object cxStyleAfterKiln: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clOlive
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
    end
    object cxStyleRed: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleContent: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object GridBandedTableViewStyleSheetPumpkinlarge: TcxGridBandedTableViewStyleSheet
      Caption = 'Pumpkin (large)'
      Styles.Content = cxStyle6
      Styles.ContentEven = cxStyle7
      Styles.ContentOdd = cxStyle8
      Styles.Inactive = cxStyle13
      Styles.Selection = cxStyle16
      Styles.Footer = cxStyle9
      Styles.Group = cxStyle10
      Styles.GroupByBox = cxStyle11
      Styles.Header = cxStyle12
      Styles.Indicator = cxStyle14
      Styles.Preview = cxStyle15
      Styles.BandHeader = cxStyle5
      BuiltIn = True
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <
      item
        HitTypes = [gvhtCell, gvhtRecord]
        Index = 0
        PopupMenu = pmPkgTable
      end>
    Left = 608
    Top = 345
  end
  object mtUserProp: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'VerkNo'
        DataType = ftInteger
      end
      item
        Name = 'OwnerNo'
        DataType = ftInteger
      end
      item
        Name = 'PIPNo'
        DataType = ftInteger
      end
      item
        Name = 'LIPNo'
        DataType = ftInteger
      end
      item
        Name = 'InputOption'
        DataType = ftInteger
      end
      item
        Name = 'RegPointNo'
        DataType = ftInteger
      end
      item
        Name = 'RegDate'
        DataType = ftDateTime
      end
      item
        Name = 'CopyPcs'
        DataType = ftInteger
      end
      item
        Name = 'RunNo'
        DataType = ftInteger
      end
      item
        Name = 'ProducerNo'
        DataType = ftInteger
      end
      item
        Name = 'AutoColWidth'
        DataType = ftInteger
      end
      item
        Name = 'SupplierCode'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'LengthOption'
        DataType = ftInteger
      end
      item
        Name = 'LengthGroupNo'
        DataType = ftInteger
      end
      item
        Name = 'NewItemRow'
        DataType = ftInteger
      end
      item
        Name = 'SalesRegionNo'
        DataType = ftInteger
      end
      item
        Name = 'LengthFormatNo'
        DataType = ftInteger
      end
      item
        Name = 'GradeStampNo'
        DataType = ftInteger
      end
      item
        Name = 'BarCodeNo'
        DataType = ftInteger
      end
      item
        Name = 'RoleType'
        DataType = ftInteger
      end
      item
        Name = 'ProductDescription'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ProductNo'
        DataType = ftInteger
      end
      item
        Name = 'ProductGroupNo'
        DataType = ftInteger
      end
      item
        Name = 'LIPChange'
        DataType = ftInteger
      end
      item
        Name = 'VolumeUniNo'
        DataType = ftInteger
      end
      item
        Name = 'LengthVolUnitNo'
        DataType = ftInteger
      end
      item
        Name = 'VolumeUnitNo'
        DataType = ftInteger
      end
      item
        Name = 'Form'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'UserID'
        DataType = ftInteger
      end
      item
        Name = 'GroupByBox'
        DataType = ftInteger
      end
      item
        Name = 'GroupSummary'
        DataType = ftInteger
      end
      item
        Name = 'AgentNo'
        DataType = ftInteger
      end
      item
        Name = 'KilnNo'
        DataType = ftInteger
      end
      item
        Name = 'TEST'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'ShipperNo'
        DataType = ftInteger
      end
      item
        Name = 'StartPeriod'
        DataType = ftDateTime
      end
      item
        Name = 'EndPeriod'
        DataType = ftDateTime
      end
      item
        Name = 'KilnChargeNo'
        DataType = ftInteger
      end
      item
        Name = 'Filter1'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Filter2'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'MarketRegionNo'
        DataType = ftInteger
      end
      item
        Name = 'OrderTypeNo'
        DataType = ftInteger
      end
      item
        Name = 'Status'
        DataType = ftInteger
      end
      item
        Name = 'FilterOrderDate'
        DataType = ftInteger
      end
      item
        Name = 'ClientNo'
        DataType = ftInteger
      end
      item
        Name = 'SalesPersonNo'
        DataType = ftInteger
      end
      item
        Name = 'VerkSupplierNo'
        DataType = ftInteger
      end
      item
        Name = 'VerkKundNo'
        DataType = ftInteger
      end
      item
        Name = 'LOObjectType'
        DataType = ftInteger
      end
      item
        Name = 'LoadingLocationNo'
        DataType = ftInteger
      end
      item
        Name = 'BookingTypeNo'
        DataType = ftInteger
      end
      item
        Name = 'CustomerNo'
        DataType = ftInteger
      end
      item
        Name = 'ShowProduct'
        DataType = ftInteger
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AfterInsert = mtUserPropAfterInsert
    Left = 200
    Top = 337
    object mtUserPropVerkNo: TIntegerField
      FieldName = 'VerkNo'
    end
    object mtUserPropOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      OnChange = mtUserPropOwnerNoChange
    end
    object mtUserPropPIPNo: TIntegerField
      FieldName = 'PIPNo'
    end
    object mtUserPropLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object mtUserPropInputOption: TIntegerField
      FieldName = 'InputOption'
    end
    object mtUserPropRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
    end
    object mtUserPropRegDate: TDateTimeField
      FieldName = 'RegDate'
    end
    object mtUserPropCopyPcs: TIntegerField
      FieldName = 'CopyPcs'
    end
    object mtUserPropRunNo: TIntegerField
      FieldName = 'RunNo'
    end
    object mtUserPropProducerNo: TIntegerField
      FieldName = 'ProducerNo'
    end
    object mtUserPropAutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
    end
    object mtUserPropSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
    object mtUserPropLengthOption: TIntegerField
      FieldName = 'LengthOption'
    end
    object mtUserPropLengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
    end
    object mtUserPropNewItemRow: TIntegerField
      FieldName = 'NewItemRow'
    end
    object mtUserPropSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
    end
    object mtUserPropLengthFormatNo: TIntegerField
      FieldName = 'LengthFormatNo'
    end
    object mtUserPropGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
    end
    object mtUserPropBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
    end
    object mtUserPropLengthGroup: TStringField
      FieldKind = fkLookup
      FieldName = 'LengthGroup'
      LookupDataSet = dm_UserProps.cds_LengthGroup
      LookupKeyFields = 'GroupNo'
      LookupResultField = 'GroupName'
      KeyFields = 'LengthGroupNo'
      Lookup = True
    end
    object mtUserPropLIPName: TStringField
      FieldKind = fkLookup
      FieldName = 'LIPName'
      LookupDataSet = dm_UserProps.cds_LIP2
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LIPName'
      KeyFields = 'LIPNo'
      Size = 50
      Lookup = True
    end
    object mtUserPropPIPNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'PIPNAME'
      LookupDataSet = dm_UserProps.cds_PIP2
      LookupKeyFields = 'PIPNO'
      LookupResultField = 'PIPNAME'
      KeyFields = 'PIPNo'
      Size = 50
      Lookup = True
    end
    object mtUserPropREGPOINT: TStringField
      FieldKind = fkLookup
      FieldName = 'REGPOINT'
      LookupDataSet = dm_UserProps.cds_RegPoint
      LookupKeyFields = 'RegistrationPointNo'
      LookupResultField = 'ProductionUnitName'
      KeyFields = 'RegPointNo'
      Size = 30
      Lookup = True
    end
    object mtUserPropPRODUCER: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODUCER'
      LookupDataSet = dm_UserProps.cds_producer
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ProducerNo'
      Size = 80
      Lookup = True
    end
    object mtUserPropOWNER: TStringField
      FieldKind = fkLookup
      FieldName = 'OWNER'
      LookupDataSet = cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'OwnerNo'
      Size = 80
      Lookup = True
    end
    object mtUserPropVERK: TStringField
      FieldKind = fkLookup
      FieldName = 'VERK'
      LookupDataSet = cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'VerkNo'
      Size = 80
      Lookup = True
    end
    object mtUserPropRoleType: TIntegerField
      FieldName = 'RoleType'
    end
    object mtUserPropGradestamp: TStringField
      FieldKind = fkLookup
      FieldName = 'Gradestamp'
      LookupDataSet = dm_UserProps.cdsGradeStamps
      LookupKeyFields = 'GradeStampNo'
      LookupResultField = 'GradeStamp'
      KeyFields = 'GradeStampNo'
      Lookup = True
    end
    object mtUserPropBarcode: TStringField
      FieldKind = fkLookup
      FieldName = 'Barcode'
      LookupDataSet = dm_UserProps.cdsBarCodes
      LookupKeyFields = 'BarCodeNo'
      LookupResultField = 'BarCode'
      KeyFields = 'BarCodeNo'
      Lookup = True
    end
    object mtUserPropProductDescription: TStringField
      FieldName = 'ProductDescription'
      Size = 100
    end
    object mtUserPropProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtUserPropProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object mtUserPropLIPChange: TIntegerField
      FieldName = 'LIPChange'
    end
    object mtUserPropSR: TStringField
      FieldKind = fkLookup
      FieldName = 'SR'
      LookupDataSet = dm_UserProps.cds_SR
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'SearchName'
      KeyFields = 'SalesRegionNo'
      Size = 80
      Lookup = True
    end
    object mtUserPropVolumeUniNo: TIntegerField
      FieldName = 'VolumeUniNo'
    end
    object mtUserPropVU: TStringField
      FieldKind = fkLookup
      FieldName = 'VU'
      LookupDataSet = dm_UserProps.cds_VU
      LookupKeyFields = 'VolumeUnit_No'
      LookupResultField = 'VolumeUnitName'
      KeyFields = 'VolumeUniNo'
      Size = 10
      Lookup = True
    end
    object mtUserPropLengthFormat: TStringField
      FieldKind = fkLookup
      FieldName = 'LengthFormat'
      LookupDataSet = dm_UserProps.mtLengthFormat
      LookupKeyFields = 'LengthFormatNo'
      LookupResultField = 'LengthFormatName'
      KeyFields = 'LengthFormatNo'
      Size = 5
      Lookup = True
    end
    object mtUserPropLengthVolUnitNo: TIntegerField
      FieldName = 'LengthVolUnitNo'
    end
    object mtUserPropLengthVolUnit: TStringField
      FieldKind = fkLookup
      FieldName = 'LengthVolUnit'
      LookupDataSet = dm_UserProps.mtLengthVolUnit
      LookupKeyFields = 'LengthVolUnitNo'
      LookupResultField = 'LengthVolUnitName'
      KeyFields = 'LengthVolUnitNo'
      Size = 5
      Lookup = True
    end
    object mtUserPropVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
    end
    object mtUserPropForm: TStringField
      FieldName = 'Form'
      Size = 50
    end
    object mtUserPropUserID: TIntegerField
      FieldName = 'UserID'
    end
    object mtUserPropGroupByBox: TIntegerField
      FieldName = 'GroupByBox'
    end
    object mtUserPropGroupSummary: TIntegerField
      FieldName = 'GroupSummary'
    end
    object mtUserPropAgentNo: TIntegerField
      FieldName = 'AgentNo'
    end
    object mtUserPropKilnNo: TIntegerField
      FieldName = 'KilnNo'
    end
    object mtUserPropTEST: TStringField
      FieldName = 'TEST'
      Size = 200
    end
    object mtUserPropShipperNo: TIntegerField
      FieldName = 'ShipperNo'
    end
    object mtUserPropStartPeriod: TDateTimeField
      FieldName = 'StartPeriod'
    end
    object mtUserPropEndPeriod: TDateTimeField
      FieldName = 'EndPeriod'
    end
    object mtUserPropKilnChargeNo: TIntegerField
      FieldName = 'KilnChargeNo'
      OnChange = mtUserPropKilnChargeNoChange
    end
    object mtUserPropProgressKiln: TStringField
      FieldKind = fkLookup
      FieldName = 'ProgressKiln'
      LookupDataSet = dmInventory.cds_SelectProgressKiln
      LookupKeyFields = 'KilnChargeNo'
      LookupResultField = 'KilnName'
      KeyFields = 'KilnChargeNo'
      Size = 30
      Lookup = True
    end
    object mtUserPropFilter1: TStringField
      FieldName = 'Filter1'
      Size = 50
    end
    object mtUserPropFilter2: TStringField
      FieldName = 'Filter2'
      Size = 255
    end
    object mtUserPropMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
    end
    object mtUserPropOrderTypeNo: TIntegerField
      FieldName = 'OrderTypeNo'
    end
    object mtUserPropStatus: TIntegerField
      FieldName = 'Status'
    end
    object mtUserPropFilterOrderDate: TIntegerField
      FieldName = 'FilterOrderDate'
    end
    object mtUserPropClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object mtUserPropSalesPersonNo: TIntegerField
      FieldName = 'SalesPersonNo'
    end
    object mtUserPropVerkSupplierNo: TIntegerField
      FieldName = 'VerkSupplierNo'
    end
    object mtUserPropVerkKundNo: TIntegerField
      FieldName = 'VerkKundNo'
    end
    object mtUserPropLOObjectType: TIntegerField
      FieldName = 'LOObjectType'
    end
    object mtUserPropLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
    end
    object mtUserPropBookingTypeNo: TIntegerField
      FieldName = 'BookingTypeNo'
    end
    object mtUserPropCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object mtUserPropShowProduct: TIntegerField
      FieldName = 'ShowProduct'
    end
  end
  object dsUserProp: TDataSource
    DataSet = mtUserProp
    Left = 200
    Top = 392
  end
  object ds_Verk: TDataSource
    DataSet = cds_Verk
    Left = 136
    Top = 496
  end
  object GridPMPkgNos: TcxGridPopupMenu
    PopupMenus = <
      item
        HitTypes = [gvhtCell, gvhtRecord]
        Index = 0
        PopupMenu = pmPkgNos
      end>
    Left = 609
    Top = 289
  end
  object mtPkgNos: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'PackageNo'
        DataType = ftInteger
      end
      item
        Name = 'Supp_Code'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'OwnerNo'
        DataType = ftInteger
      end
      item
        Name = 'LIPNo'
        DataType = ftInteger
      end
      item
        Name = 'PIPNo'
        DataType = ftInteger
      end
      item
        Name = 'Status'
        DataType = ftInteger
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 200
    Top = 289
    object mtPkgNosPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object mtPkgNosSupp_Code: TStringField
      FieldName = 'Supp_Code'
      Size = 3
    end
    object mtPkgNosOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
    object mtPkgNosLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object mtPkgNosPIPNo: TIntegerField
      FieldName = 'PIPNo'
    end
    object mtPkgNosStatus: TIntegerField
      FieldName = 'Status'
    end
  end
  object pmPkgNos: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton8'
      end
      item
        Visible = True
        ItemName = 'dxBarButton9'
      end
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end
      item
        Visible = True
        ItemName = 'dxBarButton28'
      end
      item
        Visible = True
        ItemName = 'dxBarButton37'
      end
      item
        Visible = True
        ItemName = 'dxBarButton38'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton13'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton11'
      end
      item
        Visible = True
        ItemName = 'dxBarButton12'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton14'
      end>
    UseOwnFont = False
    Left = 608
    Top = 176
  end
  object cxEditStyleController1: TcxEditStyleController
    Style.TextColor = clMaroon
    Style.TextStyle = [fsBold]
    Left = 312
    Top = 264
    PixelsPerInch = 120
  end
  object cxEditStyleController2: TcxEditStyleController
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -10
    Style.Font.Name = 'Verdana'
    Style.Font.Style = []
    Style.LookAndFeel.Kind = lfFlat
    Style.Shadow = False
    Style.TextColor = clNavy
    Style.TextStyle = [fsBold]
    Style.TransparentBorder = True
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    Left = 312
    Top = 312
    PixelsPerInch = 120
  end
  object cxEditStyleController3: TcxEditStyleController
    Style.BorderStyle = ebsNone
    Style.ButtonStyle = btsOffice11
    Style.ButtonTransparency = ebtHideUnselected
    Left = 312
    Top = 368
    PixelsPerInch = 120
  end
  object pmKilnPkgs: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton30'
      end
      item
        Visible = True
        ItemName = 'dxBarButton29'
      end>
    UseOwnFont = False
    Left = 313
    Top = 530
  end
  object cxImageList1: TcxImageList
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 22610360
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000606060006060600060606000606060006060600060606000606060006466
          6800697175006061620061656700606C6F0061757800607E830064888F005D81
          88005F616200605858007E7774006A656100565350005E5D5C00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00005F5F61005B5D6A0056587400505581004B528C00434E98008F9CB800A4CC
          D6009CD5E400639CA80062A3B00063A4B20063A6B30062A3B00066A9B6005990
          9D0053889200587B82007A8687006C676500605858006C66630084807E000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000535679003845B9003844BA003444BA003644BC003644B8009AA9D000A6DE
          EC009AD8E80061A2AD0061A6B30062A4B00064A6B50063A3B00065A7B5005A90
          9B00518890005087900071969E006D888F00BAB3AF00D6CFC900857F7C007B76
          7400847F7C000000000000000000000000000000000000000000000000000000
          000052567A003644BC003745BA003544BA003744BC003744BA009BADCC009ED1
          DE006D9FAF005C96A5005F9AA8005E9BA8005E9BA8005E9CAA00619EAB005A95
          A10052869100508590006F959C006B8A9200DCD6D100EFE8E4007C7474007A73
          7100847E7A007974720079767500000000000000000000000000000000000000
          000052577B003645BC003646BD003544BA003944BA003544BA00A4C7D10070A4
          AF0061A3B10061A1AF0062A5B40062A4B10063A6B50062A4B00067A8B7005B91
          9D0052889100518790006F969C006B8C9400DAD3CE00EFE5E3007C7674006E68
          670079747100706B690084807B00000000000000000000000000000000000000
          000052577C003646BC003646BB003D52BD006E85C8009DB2CD0070A2B30061A1
          AE0063A5B20061A2AE0062A5B30061A2AF0061A1B00061A0AC0062A0AE005992
          9F0052899200538791006E949A006C8C9200D7D0CC00EFE6E100847E7C00756F
          6E007E797500696362007B747300000000000000000000000000000000000000
          000052557C003646BA004E5CB70092B7D100B1CBD3009AB5BB005E9AA8005F9A
          A9005E9CAA005E9BA9005E9BAB005FA0AD0062A0AF0061A1AE0065A7B5005A95
          A1005084940052848F006E939B006C8B9300D6CEC800EDE6E00086807E007A75
          720085817C00736F6B007E787600000000000000000000000000000000000000
          000052557C003646BA004E5CB70092B7D100B1CBD3009AB5BB005E9AA8005F9A
          A9005E9CAA005E9BA9005E9BAB005FA0AD0062A0AF0061A1AE0065A7B5005A95
          A1005084940052848F006E939B006C8B9300D6CEC800EDE6E00086807E007A75
          720085817C00736F6B007E787600000000000000000000000000000000000000
          000052567F004A65C000A2BFC9008B8787008C96980087AEB60063A5B10060A2
          AE0062A6B20060A2AE0062A5B30062A3B00064A5B30062A3B00064A9B5005A91
          9D0053899300538793006E939B006C8D9500D4CDC800EAE2DF008B858400807A
          780088837F007873700086807D00000000000000000000000000000000000000
          0000644958009BD4EA00A6C7CD00726A69007684860062A5B20060A4AF0060A0
          AE0060A1B0005F9EA9005F9DAB00609EAB00609FAD005E9FAE005FA2B1005A95
          A30053889200518791006D9198006C8C9200CFC9C500E8E1DC0086807D007974
          720086817E007E7876008B848100000000000000000000000000000000000000
          000000000000A8CDD700ACB7BC00726A6800758384005E9EAC005F9EAE005E9F
          AC005E9FAF005FA2AF0062A5B30062A5B20063A5B50061A3B10065A8B6005991
          9D00548A9500538792006D939C006C8F9600CFC8C300E6DEDA007A7673006E69
          67007C787500756F6D0087827E00000000000000000000000000000000000000
          000000000000837F7C0076717000736C6B007687880063A6B10061A7B20062A2
          AF0062A5B20060A3AE0063A6B20064A4B20063A6B40062A4B20066A9B7005A91
          9D00538993005288910069929C006C8D9400CCC6C100E3DCD9007F787600716C
          6C0079747300686362007B767300000000000000000000000000000000000000
          0000000000007D787400706C6A00736C6A007782840061949C005D8992005983
          8A005D828C005A7980005C7C8200567277005E777D0052686F005B6F74004E5F
          63004D646A004F6B77006A898E006D8D9100CCC7C000E2DAD40085807C007973
          7000807A78006F6B69007E797500000000000000000000000000000000000000
          0000000000008D8883008A838300908988009D999400A59E9B009E989700A19D
          9A009C96940096918F009C9695009B959400BAB2B000A7A3A0009E9C98009F9D
          9A00ACABA700BFBAB800D3CECB007A767600817B7B009D969200888480007F79
          770087827F007975720086817D00000000000000000000000000000000000000
          00000000000089847F007D7774007D77740085807E0079746F00696560004F48
          45004F484400433F390048433D00433F37007E7873005F5A5800544E49005852
          4F004C48420054504C00928B87006469950063667E005E62750071707C007C77
          7300615F6500706D71007E777700000000000000000000000000000000000000
          0000000000007D787400726B6A00726C6A007E7B7700706B6800736E6D00514F
          4E005F5A5700494743005C5755005C5757009F9995009E9895006F6968007D78
          78008884810089878500B7B0AB007478A2005E648D00464B7B004B518300676C
          8A00666B8B006469860062678600000000000000000000000000000000000000
          0000000000007C777400726B6900736C69007C777500706B6900736E6C00524E
          4E004E4947004C4743004C484500514B4B009F989600857F7F00635B5A007873
          73007A76720088838100BDB5AF00464C940027308A002A328A00363F85003E45
          82003C448C003A4290003B439500000000000000000000000000000000000000
          0000000000007C777400726C6A00736C6B007E79760074706D0075717000524F
          4F004D484600494745004A4340004F4947009D969300686263006A6262006A63
          6200676262006A656400D9CFCC00464C940026308A0028328B002C3790002B33
          8E002D3692002E3694002F389800000000000000000000000000000000000000
          00000000000086827E007D7774007D77750087837F007F7B77008B8784006764
          6300665F5E00625D5B00615C5900655F5E00A7A19E00726A6A00706868008081
          8000B0A9A5007A727200D5CDCB00464D940028308A002A338B002C348D002935
          8C002D3692002C3894002D389500000000000000000000000000000000000000
          0000000000004D528E004A518D004E558E0051578F00515790009A949500575C
          96005C6099006C739E005B619800A9A8B900E0D8D40097919400575A75009294
          9F00D2CCC7009A989B00D0CAC7003D458A0027308A0029328B002B348E002833
          8D002C3590002D3896002C369300000000000000000000000000000000000000
          000000000000252D7F00232C7E00252D7F00262D7F00232B7F00817D7D002831
          8200252E820026308400242E84009C9AB500E2DBD9007D787D0020285000596C
          8300D0CBC7006D6B7500C9C5C200353D830027308B0028328B002A348F002834
          8C002B3491002E3796002C349300000000000000000000000000000000000000
          000000000000252C7E00252E7D00262E7F00272E7F00232C8100868181002830
          8200242E80002730830028307F009292AA00B1ADAA007C7A8200202850004E62
          7800CEC6C3004E4E5D00C0BBB900353E820027308C0028308A0029338E002A34
          8E002B3491002D3695002C349300000000000000000000000000000000000000
          0000000000003238760033386E00383C6C003C3E68003F406500898280004B48
          5D004D4B59004C4D5600524E5600847F8000A39E9C0096918F00474652007172
          7B00CCC4BF005A575F00BFBAB700363E82002730890029328900293290002A35
          8D002C3490002D3695002E389500000000000000000000000000000000000000
          0000000000003238760033386E00383C6C003C3E68003F406500898280004B48
          5D004D4B59004C4D5600524E5600847F8000A39E9C0096918F00474652007172
          7B00CCC4BF005A575F00BFBAB700363E82002730890029328900293290002A35
          8D002C3490002D3695002E389500000000000000000000000000000000000000
          00000000000082483D0081564E007D5E59007A696700726969006C6768005651
          560057505500565054005250530054505300AEA9A5008881810054505300817F
          7E00CBC2BD00716B6B00938C8B003840860028308C0028308B00283290002B35
          8E002C3491002E37940030389700000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000958F8C00844F
          4600805C57007D666300796E6E00706D6D007F7B7D0068626600545052007874
          7400B1ABA8005F595C0055505400343B84002830890028338A002D368B003A42
          87004C4D7E00594D6D0065444F00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000867570000000
          0000000000000000000000000000A8867B00D8D3CD009C918F00835951008C79
          7600969293007873740068656800464B7E004D4F7E0076789500713B36000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000816C66000000
          000000000000000000000000000000000000CCC3BC0084726C00000000000000
          0000CAC2BE00000000000000000000000000000000009F726700000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFFFFFFC00000FFC000007FC000001FC0000007C0000007C0000007C000
          0007C0000007C0000007C0000007E0000007E0000007E0000007E0000007E000
          0007E0000007E0000007E0000007E0000007E0000007E0000007E0000007E000
          0007E0000007E0000007FF000007FF78007FFF7CDEFFFFFFFFFFFFFFFFFFFFFF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000161006001610
          0600161006001610060016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001E180F004E4A450078757300827F
          7D00342F2700342F270016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600EDEDED00EDED
          ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
          ED00EDEDED00EDEDED00D9D9D800D9D9D8009A9796008C8987008C898700928F
          8D00D8D7D700D8D7D700EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
          ED00EDEDED00EDEDED00E4E4E400E4E4E4003E39330016100600EDEDED00EDED
          ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
          ED00EDEDED00EDEDED00D9D9D800D9D9D8009A9796008C8987008C898700928F
          8D00D8D7D700D8D7D700EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
          ED00EDEDED00EDEDED00E4E4E400E4E4E4003E39330016100600FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00F1F1F1009D9B99009D9B99008C8987008C8987008C8987009390
          8E00E6E6E500E6E6E500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00F5F5F500F5F5F500413D370016100600161006001610
          0600161006001610060016100600161006001610060016100600161006001610
          06001610060065625E008C8987008C8987008C8987008C8987008C8987008885
          8300342F2700342F270016100600161006001610060016100600161006001610
          060026201700DFDFDE00F5F5F500F5F5F500413D3700161006000000FF000000
          FF000000FF000000FF00FF000000FF000000FF00000016100600161006001610
          06002B261E00827F7D008C8987008C8987008C8987008C8987008C8987008885
          8300342F2700342F27001610060016100600FF0000000000FF000000FF000000
          FF000000FF00DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          0600FF000000FF0000000000FF001610060016100600FF000000FF0000001610
          0600353029008A8785008C8987008C8987008C8987008C8987008C8987008885
          8300342F2700342F270016100600FF000000161006000000FF000000FF001610
          060026201700DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          0600FF000000FF0000000000FF001610060016100600FF000000FF0000001610
          0600353029008A8785008C8987008C8987008C8987008C8987008C8987008885
          8300342F2700342F270016100600FF000000161006000000FF000000FF001610
          060026201700DFDFDE00F5F5F500F5F5F500413D370016100600FF000000FF00
          00001610060016100600161006000000FF00161006001610060016100600FF00
          000038332B008C8987008C8987008C8987008C8987008C8987008C8987008885
          8300342F2700342F270016100600FF00000039352F00625E5A00625E5A007A77
          7500817E7C00AAA8A700CAC9C800CAC9C800423E380016100600161006001610
          06001610060016100600161006000000FF00161006001610060016100600FF00
          0000322D2500878482008C8987008C8987008C8987008C8987008C8987008885
          8300342F2700342F2700221D1500696562008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C898700817E7C0035312C00161006001610
          0600161006001610060016100600161006000000FF0016100600161006001610
          0600FF0000007A7775008C8987008C8987008C8987008C8987008C8987008885
          83003B362F003B362F006C6965008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C89870086838100161006001610
          0600161006001610060016100600161006000000FF0016100600161006001610
          0600FF0000007A7775008C8987008C8987008C8987008C8987008C8987008885
          83003B362F003B362F006C6965008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C89870086838100161006001610
          0600161006001610060016100600161006000000FF0016100600161006001610
          0600FF0000004D4944008B8886008B8886008C8987008C8987008C8987008885
          83006B6866006B6866008C8987008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C898700161006001610
          060016100600161006001610060016100600161006000000FF000000FF001610
          060016100600FF0000005F5C59005F5C59008C8987008C8987008C8987008B88
          86008B8886008B8886008C8987008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C898700161006001610
          0600161006001610060016100600161006001610060016100600161006000000
          FF001610060016100600FF000000FF000000534F4B00868381008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C898700161006001610
          06004D4A47004D4A470077747200777472007774720077747200777472007774
          720077747200777472007774720077747200777472007C7977008B8886008C89
          87008C8987008C8987008B8886007875720054504B00514D4700514D4700514D
          470059554F00B6B4B300C1BFBE00C1BFBE0067635F00514D4700161006001610
          06004D4A47004D4A470077747200777472007774720077747200777472007774
          720077747200777472007774720077747200777472007C7977008B8886008C89
          87008C8987008C8987008B8886007875720054504B00514D4700514D4700514D
          470059554F00B6B4B300C1BFBE00C1BFBE0067635F00514D4700161006001610
          060046423C0046423C008C8987008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C898700716E6B0026211800262118001610
          060026201700DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          0600302B2300302B2300868381008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C8987008C8987008481
          7F0088858300888583008C8987008C8987008C8987007A7774007A777400231E
          150026201700DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          06001610060016100600676461008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C8987008A8785005552
          4D0086838100868381008C8987008C8987008C8987008C8987008C8987005F5C
          580026201700DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          06001610060016100600241E1600797673008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C8987005F5B58000000
          FF0086838100868381008C8987008C8987008C8987008C8987008C8987008380
          7E0035312A00DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          06001610060016100600241E1600797673008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C8987005F5B58000000
          FF0086838100868381008C8987008C8987008C8987008C8987008C8987008380
          7E0035312A00DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          0600161006001610060016100600231E1500686462008B8886008B8886008C89
          87008C8987008C8987008C8987008C898700868381004E4A45000000FF002A24
          1C0086838100868381008C8987008C8987008C8987008C8987008C8987008986
          84004A464000DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          060016100600161006001610060016100600161006002F2A23002F2A23004A46
          4000514D4700514C4600433F3900433F39000000FF000000FF00161006002A24
          1C0086838100868381008C8987008C8987008C8987008C8987008C8987008A87
          85004C484200DFDFDE00F5F5F500F5F5F500413D3700161006008B8883008B88
          83008B8883008B8883008B8883008B8883008B8883008B8883008B8883008B88
          83008B8883008B8883008B8883008B8883008B8883008B8883008B8883008D89
          85008E8C8A008E8C8A008C8987008C8987008C8987008C8987008C8987008F8C
          8A009A989500EFEFEF00F5F5F500F5F5F500413D3700161006008B8883008B88
          83008B8883008B8883008B8883008B8883008B8883008B8883008B8883008B88
          83008B8883008B8883008B8883008B8883008B8883008B8883008B8883008D89
          85008E8C8A008E8C8A008C8987008C8987008C8987008C8987008C8987008F8C
          8A009A989500EFEFEF00F5F5F500F5F5F500413D370016100600FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEE
          EE0096949200969492008C8987008C8987008C8987008C8987008C8987009A97
          9500F8F8F800FFFFFF00F5F5F500F5F5F500413D3700161006008B8883008B88
          83008B8883008B8883008B8883008B8883008B8883008B8883008B8883008B88
          83008B8883008B8883008B8883008B8883008B8883008B8883008B8883008D89
          85008E8C8A008E8C8A008C8987008C8987008C8987008C8987008C898700827F
          7C008B8883008B88830086837E0086837E002C271F0016100600161006001610
          0600161006001610060016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600161006002A24
          1C0086838100868381008C8987008C8987008C898700726F6D00726F6D00211B
          1200161006001610060016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600161006002A24
          1C0086838100868381008C8987008B88860069666300211C1300211C13001610
          0600161006001610060016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600161006002A24
          1C0086838100868381008C8987008B88860069666300211C1300211C13001610
          0600161006001610060016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600161006001610
          060016100600161006001610060016100600161006001610060016100600241E
          160064615F0064615F0057534E00342F28001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end>
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 440
    Top = 401
    Bitmap = {
      494C01010D001100040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000006000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B6B63005A4A
      4200524A42005A5252006B6B6B00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C522100A539
      0000843910006B311800523929004A42390052524A00636363007B7B7B008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000094522100B552
      1000D6946B00D6946B00BD6B39009C5221007B4221006339210052423900524A
      4200635A520073736B0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C5A2100B552
      1800EFC6A500FFEFCE00FFDEB500EFC69C00E7A57300CE845200AD6331008C4A
      2100734221005A423100524A4200636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A55A2100B552
      1800EFC6A500FFE7CE00FFE7C600FFE7BD00FFE7BD00FFDEB500F7C69C00EFB5
      8400DE945A00BD6B39008C4A21005A4A39000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD632100B55A
      2100F7CEB500FFE7CE00FFE7C600F7DEBD00F7DEBD00F7DEB500FFDEB500FFD6
      A500FFCE8400F7B56B00B5633100634A31000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD632100B55A
      2100F7D6BD00FFEFD600FFE7CE00DEDEC600A5C6C600C6CEBD00FFDEB500FFCE
      8C00FFBD6300F7B56B00B56B3100634A39000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B56B2900BD63
      3100F7E7CE00FFEFDE00EFE7D6008CC6CE004AADCE009CC6C600FFDEB500F7BD
      7300EFBD6B00EFB57B00AD6B3900634A39000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B56B2900BD6B
      3900F7E7DE00EFEFDE009CCECE004AADCE00009CCE007BBDCE00EFCEAD00B59C
      73009C947300CE9C6B00B56B31007B523100736B63009C949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD6B2900BD73
      4200F7F7E700B5D6DE0052B5D6009CCED600ADCED600009CCE00C6CEBD00A5A5
      94008C8C7300D6A57300E7AD7300C68C52009C734200846B4A0084736B009494
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6732900BD73
      4200F7F7EF00C6DEE700A5D6DE00EFEFDE00CEDED6004AADCE009CC6C600EFDE
      C600DEBD9400E7B58400EFC69400F7C69400EFB57B00CE945A00AD7B4200846B
      4A00736B6B008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6732900C67B
      5200FFFFF700F7F7EF00F7F7E700FFEFDE00EFE7D6008CC6D6004AADCE00F7E7
      CE00FFE7C600E7B58400C67B4A00BD8C5A00E7B58400EFC69400E7AD7B00AD94
      7B005A5A840039427B006B6B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D67B2900C684
      5A00FFFFFF00FFF7EF00FFF7EF00FFF7E700F7EFDE00B5D6DE0063BDCE00C6D6
      CE00FFEFD600EFC69C00A56331007B523100B59C7B00E7BD9C00D6AD8400ADA5
      A5004A63C6001842BD0063639400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE732900CE8C
      6B00FFFFFF00FFFFF700FFF7EF00FFF7EF00FFF7E700D6E7DE006BBDD6008CC6
      CE00F7EFDE00EFC69C00A5633100523929000000000000000000E7BD9C00C6C6
      C6006373C6004A63C600ADADCE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE732900CE9C
      7B00FFFFFF00FFFFFF00FFFFF700FFF7EF00FFF7EF00F7F7E70094CEDE0063BD
      CE00CEDED600EFC6A500A5633100523929000000000000000000000000000000
      0000ADADCE00ADADCE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE732900CE9C
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00CEE7E70094CE
      D600CEE7DE00E7BD9C009C633100523929000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE732900BD73
      4200DEAD8C00E7C6B500EFDED600F7EFEF00F7F7F700FFFFF700F7F7F700EFF7
      EF00F7F7E700E7BD9C009C633100523929000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D67B2100BD52
      0800BD5A1000C6632100C66B2900C67B4200CE946300D6A58400E7BDA500EFD6
      C600F7E7DE00E7BD9C009C633100523929000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFA55200D66B
      1000CE630800C65A0000C65A0000C65A0800C65A0800BD5A1000C6631800C663
      2100C6733900C673310094522100523929000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD9C7B00BDA5
      7300CEA56B00D69C5200DE8C3900DE8C3900DE842900D6731000CE6B0800CE63
      0000C65A0000C65A00005A4A39005A4A39000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AD9C7B00BDA573009C948400A5947B00AD9C7300BD9C6B00CE9C
      5A00D69C5200DE8C39009C6B3900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00CEC6CE00ADADAD009C9C
      9C000000000000000000ADADAD00D6D6D600DED6D600BDBDBD00ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A5D60021A5D60021A5
      D6005AC6E70042BDE70029ADD60021A5D60018A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A5D60021A5D60021A5
      D6005AC6E70042BDE70029ADD60021A5D60018A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADADAD00C6C6C600F7F7F700F7F7F700BDBDBD00ADAD
      FD005A5A5A006363630084848400ADADAD00CEC6C600E7DEDE00E7E7E700D6D6
      D600B5B5B5000000000000000000000000000000000000000000000000000000
      0000DED6DE00DED6DE00F7F7F700F7F7F700F7F7F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018A5D6005ACEEF00B5FF
      FF009CFFFF0094F7FF008CEFFF007BE7F7006BD6F70052C6E70042B5DE0029AD
      D60021A5D60018A5D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018A5D600ADDEF700B5FF
      FF009CFFFF0094F7FF008CEFFF007BE7F7006BD6F70052C6E70042B5DE0029AD
      D60021A5D60018A5D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADADAD00BDB5B500E7E7E700FFFFFF00FFFFFF00EFEFEF00BDB5B500B5AD
      FD004A4A4A002121210031313100424242006363630084848400ADADAD00CECE
      CE00E7E7E700DEDEDE00ADA5A50000000000000000000000000000000000DED6
      D600DED6DE00DED6DE00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010A5D6009CEFFF00CEFF
      FF008CF7FF0094F7FF0094F7FF008CEFFF008CEFFF007BE7F70073DEF7005AE7
      FF0073DEF7005ACEEF004AC6E70031B5DE0021A5D60018A5D600000000000000
      0000000000000000000000000000000000000000000010A5D60063BDE700CEFF
      FF008CF7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CEF
      FF0073DEF7005ACEEF004AC6E70031B5DE0021A5D60018A5D60018A5D6000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      FD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEFEF00B5B5B500B5B5
      B5009C949C006B6B6B004A4A4A00313131002929290031313100424242006363
      63008C8C8C00A5A5A50000000000000000000000000000000000CED6CE00DED6
      D600DED6DE00DED6DE00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F70000000000000000000000
      0000000000000000000000000000000000000000000021A5D6009CEFFF0094F7
      FF0094F7FF0094F7FF0094F7FF008CF7FF008CEFFF008CEFFF0084EFFF0073EF
      FF0063E7FF005ADEFF005ADEFF005ADEFF0073DEF7005ACEEF004AC6E70031B5
      DE0018A5D6000000000000000000000000000000000021A5D60042B5DE00BDEF
      F7009CFFFF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF0094F7FF0094F7FF008CEFFF008CEFFF0084E7FF0063D6EF0031ADDE000000
      00000000000000000000000000000000000000000000A5A5A500CECECE00F7F7
      F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADADAD009C9C9C00A5A5
      A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A5A00393939002929
      290042424200A59C9C00000000000000000000000000CECEC600CED6CE00DED6
      D600DED6DE00DED6DE00EFE7E700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F7000000000000000000000000000000000029ADD6009CEFFF0094F7
      FF0094F7FF0094F7FF0094F7FF008CF7FF008CEFFF008CEFFF0084EFFF007BEF
      FF0073EFFF006BE7FF0063E7FF0063E7FF005ADEFF005ADEFF005ADEFF005ADE
      FF005ADEFF0018A5D60000000000000000000000000029ADD6005AC6E70094D6
      EF00B5FFFF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0084E7FF005ACEEF0021A5
      D6000000000000000000000000000000000000000000A5A5A500EFEFEF00F7F7
      F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6D600B5B5B500A5A5
      A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5B500A5A5A5008484
      84006B6B6B00A59C9C00000000000000000000000000CECEC600CED6CE00DED6
      D600DED6DE00DED6DE00F7EFE700EFE7E70029008400F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000029ADD6009CEFFF0094F7
      FF0094F7FF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF0084EF
      FF0084EFFF007BEFFF0073EFFF006BE7FF0063E7FF005ADEFF005ADEFF005ADE
      FF005ADEFF0018A5D60000000000000000000000000029ADD6007BE7F70063C6
      E700C6F7FF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF007BE7F70073DEF70039BD
      DE000000000000000000000000000000000000000000A5A5A500E7E7E700DED6
      D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7E700E7E7E700D6D6
      D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C9C00A5A5A500ADAD
      FD00B5B5B500A5A5A500000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00DED6DE00EFE7E700290084002900840029008400F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000029ADD60094EFF70094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CEFFF008CEFFF008CEF
      FF008CEFFF0084EFFF0084EFFF0073EFFF006BE7FF0063E7FF005ADEFF005ADE
      FF005ADEFF0018A5D60000000000000000000000000029ADD60094EFF70052CE
      E700BDE7F7009CFFFF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEFF0063D6
      EF0018A5D60000000000000000000000000000000000A5A5A500B5ADAD00A5A5
      A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7E700F7F7F700F7F7
      F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5B500ADA5A500A5A5
      A500A59C9C009C9C9C00000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00DED6DE00F7EFE700F7F7F70029008400F7F7F700F7F7F700F7F7
      F70029008400F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000029ADD6009CEFFF0094F7
      FF0094F7FF0094F7FF008CF7FF0094F7FF0094F7FF008CF7FF008CEFFF008CEF
      FF008CEFFF008CEFFF008CEFFF0084EFFF007BEFFF006BE7FF0063E7FF005ADE
      FF005ADEFF0018A5D60000000000000000000000000029ADD6009CEFFF0063DE
      EF008CCEEF00BDFFFF008CF7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEF7008CEF
      FF0029ADD60000000000000000000000000000000000A5A5A500BDBDBD00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7F700C6C6C600C6BD
      C600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00C6C6
      C600BDBDBD00A5A5A500000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00DED6DE00EFE7E700F7EFE700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F70029008400F7F7F700F7F7F700F7F7F700F7F7
      F70029008400F7F7F700F7F7F700000000000000000029ADD60094EFF70094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF0084EFFF0073EFFF006BE7FF001084
      18005ADEFF0018A5D60000000000000000000000000029ADD60094EFF7008CF7
      FF004ABDDE00CEF7FF00A5FFFF0094F7FF008CF7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF700087B10001084
      18004AC6E70000000000000000000000000000000000A5A5A500D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBDBD00ADB5AD0084C6
      8400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6D600DEDEDE00DEDE
      DE00D6D6D600ADADAD00000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00DED6DE00F7EFE700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F7002900
      84002900840029008400F7F7F700000000000000000029ADD60094EFF70094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF007BEFFF0073EFFF001084
      18005ADEFF0018A5D60000000000000000000000000029ADD60094EFF7009CFF
      FF005AD6EF0063BDE700BDE7F700BDEFF700C6F7FF00C6F7FF00BDFFFF009CF7
      FF0084EFFF008CEFFF008CEFFF008CEFFF008CEFFF000873080039BD63004AD6
      7B001084180018A5D60000000000000000000000000000000000BDBDBD00DEDE
      DE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBDBD00EFEFEF00D6F7
      D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5A500ADADAD00BDBD
      BD00BDBDBD00B5B5B500000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00E7E7E700E7E7E700E7E7E700E7E7E700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F70029008400F7F7F700F7F7F700000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF008CF7FF008CEFFF008CEFFF008CEFFF008CEFFF0084EFFF007BEFFF001084
      18005AE7FF0018A5D60000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0063D6EF0052CEE7005AC6E70063C6E70063C6E70073C6E700BDE7
      F700B5F7FF0084EFFF008CEFFF008CEFFF00006B000031AD52005AE78C005AE7
      8C0039BD5A00087310000000000000000000000000000000000000000000B5B5
      B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7F700F7F7F700F7F7
      F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00ADA5
      A500A5A5A50000000000000000000000000000000000CECEC600D6D6CE00DED6
      D600E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF001084180094F7FF008CEFFF008CEFFF00108418001084
      18008CEFFF0018A5D60000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF009CFFFF0094FFFF0094F7FF008CEFFF0084EFFF0063D6EF0042B5
      DE00ADDEF700C6F7FF0094F7FF000873080029AD4A005AEF940052DE84004AD6
      6B0021AD310021AD390008730800000000000000000000000000000000000000
      000000000000A59C9C00BDBDBD00DEDEDE00CECECE00ADADAD00C6C6C600DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00C6C6C600BDB5
      B5000000000000000000000000000000000000000000CECEC600D6D6CE00E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF00108418001084180094F7FF0010841800108418000894
      18008CEFFF0018A5D60000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF007BE7
      F70042BDE7007BCEE7000873080021AD310031AD520039BD5A0042CE6B0039C6
      5A0029BD4A0021AD310021AD3100007308000000000000000000000000000000
      000000000000ADADAD00F7F7F700F7F7F700DEDEDE00BDBDBD00BDBDBD00C6C6
      C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADADAD00BDB5B5000000
      00000000000000000000000000000000000000000000CECEC600E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700000000000000000029ADD6009CF7FF00BDE7
      F700BDEFF700C6F7FF00C6F7FF00C6F7FF009CF7FF008CF7FF008CF7FF0094F7
      FF0094F7FF0094F7FF001084180031AD52001084180010841800089418008CEF
      FF008CEFFF0018A5D60000000000000000000000000029ADD6009CF7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF0094F7
      FF008CEFFF005AD6EF000873080008730800087308000873100031BD4A0031BD
      4A00087308000873080008730800087308000000000000000000000000000000
      00000000000000000000EFDEDE00FFE7DE00FFE7D600FFDED600F7DED600F7DE
      D600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E70000000000000000000000000029ADD60031ADDE0031AD
      DE0031ADDE0031ADDE0031ADDE0031ADDE007BCEE7008CF7FF008CF7FF008CF7
      FF008CEFFF0094F7FF001084180031AD520039C65A001084180094F7FF0094F7
      FF0094F7FF0018A5D60000000000000000000000000029ADD600A5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF008CEFFF0094F7FF008CEFFF007BEFFF0084EFFF000873080021AD390021BD
      3900087308000000000000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6B500FFC6AD00EFCECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E7000000000000000000000000000000000029ADD600B5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0031ADDE007BCEE7009CEFFF009CEF
      FF009CEFFF009CEFFF00108418004AD67B0021AD390021AD3900108418009CEF
      FF005ACEEF0018A5D60000000000000000000000000029ADD600B5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF009CEFFF009CEFFF009CEF
      FF009CEFFF009CEFFF009CEFFF009CEFFF009CF7FF000873100018AD290010AD
      2100087308000000000000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700000000000000000000000000000000000000000018A5D6007BCEE700B5FF
      FF0094FFFF0094FFFF0094F7FF0094F7FF0084EFFF0031ADDE0031ADDE0039B5
      DE0042B5DE0042B5DE0010841800108418001084180010841800108418001084
      180039BDE7000000000000000000000000000000000018A5D6007BCEE700B5FF
      FF0094FFFF0094FFFF0094F7FF0094F7FF0084EFFF0031ADDE0031ADDE0039B5
      DE0042B5DE0042B5DE004ABDDE004ABDDE005ABDE7000884100010AD2100089C
      1800087308000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7E7E700E7E7E700E7E7E700E7E7E700E7E7E7000000
      000000000000000000000000000000000000000000000000000021A5D60084D6
      EF0094E7F70094E7F7009CEFFF00A5F7FF005ACEE70010A5D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000021A5D60084D6
      EF0094E7F70094E7F7009CEFFF00A5F7FF005ACEE70010A5D600000000000000
      00000000000000000000000000000000000008730800089C180010AD21000884
      1000087308000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D60021A5D60021A5D60029ADD60029ADD60021A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D60021A5D60021A5D60029ADD60029ADD60021A5D60000000000000000000000
      000000000000000000000000000008841000089C180008A51800088C10000873
      0800000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500F7BDB500F7BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000873
      08000873080010841800089418000894180008941800087B1000087308000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7C6C600FFEFE700FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFCEB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000087308000873100008730800087308000873080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7CEC600FFF7EF00FFE7DE00FFE7D600FFDECE00FFD6C600FFD6
      C600F7BDB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEB5B500E7CEC600E7C6C600E7C6BD00E7C6BD00E7BDB500E7BDB500E7B5
      FD00F7BDB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00CECECE00CECECE00CECECE00CECECE00C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700FFFFFF00FFFF
      FF00FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFF7E700FFF7E700FFEF
      D600FFEFD600FFE7C600FFE7C600FFE7C600FFDEB500FFDEB500FFDEB500FFD6
      FD00FFD6AD00FFD6AD00CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF00424242004242420042424200FFFFFF00424242004242420042424200E7E7
      E7004242420042424200C6C6C600DEDEDE00DEDEDE00DEDEDE0042424200CECE
      CE00CECECE0042424200C6C6C60000000000000000000000000042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      000042E7E7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFF7E700FFF7
      E700FFEFD600FFEFD600FFE7C600FFDEB500FFDEB500FFDEB500FFD6AD00FFD6
      FD00FFD6AD00FFD6AD00CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF0042424200FFFFFF00FFFFFF0042424200FFFFFF00E7E7E700E7E7
      E700E7E7E700E7E7E70042424200E7E7E7004242420042424200424242004242
      4200DEDEDE0042424200C6C6C60000000000000000000000000042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      000042E7E70042E7E70042E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700FFF7E700FFEFD600FFE7C600FFE7
      C600FFD6AD00FFDEB500CE630000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF0042424200FFFFFF00FFFFFF00C6C6C6004242420042424200FFFF
      FF004242420042424200C6C6C600E7E7E70042424200DEDEDE0042424200DEDE
      DE00DEDEDE0042424200CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042E7E70042E7E70042E7E70042E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7E700FFEFD600FFE7C600FFE7
      C600FFD6AD00FFDEB500CE630000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420000000000000000000000
      0000000000000000000000000000000000008484840042424200000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF00FFFFFF00FFFFFF00FFFFFF0042424200FFFF
      FF00FFFFFF00E7E7E70042424200E7E7E70042424200E7E7E700E7E7E700DEDE
      DE00DEDEDE0042424200CECECE00000000000000000000000000000000000000
      000042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7
      E700000000000000000042E7E70042E7E70042E7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7E700FFEFD600FFEF
      D600FFE7C600FFE7C600CE630000000000000000000000000000000000000000
      0000000000008484840042424200424242004242420084848400000000000000
      0000000000000000000000000000000000000000000042424200000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF0042424200FFFFFF00FFFFFF00424242004242420042424200FFFF
      FF004242420042424200C6C6C600E7E7E70042424200E7E7E700E7E7E700E7E7
      E700DEDEDE0042424200CECECE00000000000000000000000000000000000000
      0000000000000000000042E7E70042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E70042E7E700000000000000000042E7E70042E7E70042E7E7000000
      0000000000000000000000000000000000000000000000000000DEBD9400DEBD
      9400DEBD9400DEBD9400DEBD9400DEBD9400CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700FFEFD600FFE7C600CE630000000000000000000000000000000000000000
      0000000000000000000084848400424242004242420042424200848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700DEDEDE0042424200DEDEDE00000000000000000000000000000000000000
      000000000000000000000000000042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E7000000000042E7E70042E7E70042E7
      E700000000000000000000000000000000000000000000000000FFD6AD00FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E700CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      E700FFEFD600FFEFD600CE630000000000000000000000000000000000000000
      0000000000000000000000000000848484004242420042424200424242008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200E7E7E700424242004242
      4200E7E7E70042424200DEDEDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042E7E7000000000000000000000000000000000000000000FFD6AD00FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E700CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7E700FFEFD600CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840042424200424242004242
      4200848484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200E7E7E700424242004242
      4200E7E7E70042424200DEDEDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000000042E7
      E700000000000000000000000000000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFEFD600CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400424242004242
      4200424242008484840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200E7E7E70042424200E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000000042E7
      E70042E7E70042E7E70000000000000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DE7B0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400424242004242
      4200424242004242420000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200E7E7E70042424200E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000042E7
      E70042E7E70042E7E70042E7E700000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840042424200424242004242
      4200848484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200E7E7E70042424200E7E7E700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      00000000000042E7E70042E7E70042E7E7000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000848484004242420042424200424242008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200FFFFFF0042424200E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E700000000000000000042E7E7000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D673100000000000000000000000000000000000000000000000
      0000000000000000000084848400424242004242420042424200848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7E7E7000000000000000000000000000000000042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      000042E7E700000000000000000042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E700000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEBD940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840042424200424242004242420084848400000000000000
      0000000000000000000000000000000000000000000042424200000000000000
      0000000000000000000000000000000000000000000000000000E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700000000000000000000000000000000000000000042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      000042E7E70042E7E70042E7E700000000000000000042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E7000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEBD940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420000000000000000000000
      0000000000000000000000000000000000008484840042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042E7E70042E7E70042E7E70042E7E700000000000000000042E7
      E70042E7E70042E7E70042E7E70042E7E7000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEBD940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000042E7E70042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E700000000000000000042E7E70042E7E70042E7E70042E7E7000000
      00000000000042E7E70042E7E70042E7E7000000000000000000FFD6AD00FFD6
      FD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6
      FD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00DEBD940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042E7E70042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E700000000000000000042E7E70042E7E70042E7
      E70042E7E700000000000000000042E7E7000000000000000000FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E700000000000000000042E7
      E70042E7E70042E7E70042E7E70000000000000000000000000000000000FFD6
      FD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6
      FD00FFD6AD00FFD6AD00FFD6AD00FFD6AD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      00000000000042E7E70042E7E70042E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500EFD6AD00F7D6A500EFCE
      9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEC600F7DEBD00BDCE8C00E7D6A500E7D6A500EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C63630042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7DECE00F7E7CE00F7DEC600F7DEC600CED69C00009C0000E7D6A5006BB5
      4A0039A5290039A529006BB54A00C6C67B00E7CE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000000000
      0000000000008C6363004242420042424200B55A0000B55A0000424242008C63
      63008C6363008C6363008C6363008C6363008C6363008C6363008C6363008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFE7CE00F7E7D600F7E7CE00F7DEC600EFDEB500009C0000109C1000009C
      0000009C0000009C0000009C0000009C000094BD5A00E7CE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000C6631800CE630000CE630000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B6B6B008484
      84000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7E7D600F7EFDE00F7E7D600F7E7CE00EFDEBD00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000C6C67B00EFCE9400EFCE
      9400EFCE9400B58C7B00000000000000000000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000CE63000000000000C6631800000000000000000084848400525252008484
      84006B6B6B006B6B6B004A4A4A00A5A5A500737373006B6B6B00000000004A4A
      4A00000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      000000000000000000000000000000000000000000000000000000000000AD84
      7B00F7E7DE00F7EFDE00F7E7D600F7E7CE00E7DEC600009C0000009C0000009C
      000039AD3100C6CE8C00C6CE8C006BB54A00009C000039A52900EFCE9400EFCE
      9400EFCE9400B58C7B00000000000000000000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000CE630000C66318000000000000000000848484006B6B6B000000
      00007B7B7B007B7B7B006B6B6B00848484004A4A4A007B7B7B006B6B6B008484
      84000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      000000000000000000000000000000000000000000000000000000000000AD84
      7B00F7EFE700F7EFE700F7EFDE00F7E7D600EFE7C600009C0000009C0000009C
      000031A52100E7D6AD00E7D6A500E7D6A500A5C67300109C0800EFCE9C00EFCE
      9400EFCE9400B58C7B00000000000000000000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000DE7B000000000000000000000000000000000000848484000000
      0000000000000000000000000000848484000000000000000000848484000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E70000000000000000000000000000000000000000000000000000000000B58C
      7B00F7EFE700FFF7EF00F7EFE700F7EFDE00EFE7CE00009C0000009C0000009C
      0000009C0000009C0000E7D6AD00EFD6AD00EFD6AD00EFCEA5007BCE7B00EFCE
      9C00EFCE9400B58C7B00000000000000000000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000CE630000CE630000C6631800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700000000000000000000000000000000000000000000000000B58C
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700EFE7CE00EFE7CE00E7DEC600E7DE
      C600EFDEBD00EFDEB500E7D6AD00F7D6B500EFD6AD00EFD6AD007BCE7B00EFCE
      9C00EFCE9400B58C7B00000000000000000000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E7000000000000000000000000000000000000000000BD8C
      8400FFF7F700FFFFF700FFF7EF007BCE7B00F7EFE700F7EFDE00F7E7D600EFE7
      C600E7DEC600EFDEBD00EFDEB500E7D6AD00E7D6AD00E7D6A500EFD6AD00EFCE
      A500EFCE9C00B58C7B00000000000000000000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000CE630000C6631800C6631800000000000000000094949400A5A5A5009494
      9C00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000000000BD94
      8400FFF7F700FFFFFF00FFF7F7007BCE7B00F7EFE700F7EFE700F7EFDE00EFE7
      CE00009C0000009C0000009C0000009C0000009C0000E7D6AD00EFD6AD00EFD6
      FD00EFCEA500B58C7B00000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000CE6300000000000000000000000000000000000000000000313131008C8C
      8C006B6B6B000000000084848400848484005A5A5A0052525200000000006363
      6300636363006363630000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000000000C694
      8400FFF7F700FFFFFF00FFFFFF00FFF7F700109C1000ADD6A500EFEFD600EFE7
      CE00EFE7CE0031AD2900009C0000009C0000009C0000E7D6AD00F7D6B500EFD6
      FD00EFCEA500B58C7B00000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000CE630000000000000000000000000000A5A5A500737373006363
      63005A5A5A006363630063636300A5A5A500636363004A4A4A006B6B6B006363
      6300737373005A5A5A00000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E70000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF0039AD3900009C000073C66B00CEDE
      B500CEDEB50039AD3900009C0000009C0000009C0000EFDEB500F7DEBD00F7D6
      B500EFD6AD00B58C7B00000000000000000000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000CE63000000000000C66318000000000000000000000000008C8C8C000000
      0000A5A5A500949494000000000084848400525252008C8C8C00000000000000
      00007B7B7B000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C60000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF00CEEFCE00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000EFDEBD00F7DEBD00EFDE
      BD00DEC6A5009C847B00000000000000000000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000CE630000C6631800C6631800000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700C6C6C60000E7
      E70000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000000000CE9C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00F7FFF7009CDE9C00009C0000009C
      0000009C0000009C0000009C0000109C1000009C0000E7DEC600EFDEBD00CEBD
      FD00B5AD94009C847B00000000000000000000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000000000CEA5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFF700CEEFCE0073C6
      6B0039AD390039AD390073C66300EFE7CE00009C0000C6D6AD00CEBDAD00BDB5
      A500B5AD9C009C847B00000000000000000000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E70000000000000000000000000000000000D6A5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFF7E700E7DEC600AD84730084845A00AD7B7300AD7B
      7300AD7B7300AD847300000000000000000000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000CE6300000000000000000000000000007B7B7B00000000004A4A
      4A00313131004A4A4A0042424200424242004242420000000000424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C60000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B58484000000000000000000000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000CE63000000000000000000000000000073737300737373005A5A
      5A00313131006363630000000000525252004242420042424200525252000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B58484000000000000000000000000000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000CE630000CE6300000000000000000000000000007B7B7B005A5A5A000000
      000000000000636363006363630063636300000000006B6B6B00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E70000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE63000000000000000000000000000000000000000000000000
      0000000000006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E70000000000000000000000000000000000DEAD
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000000000000000000000000000000000DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400B5847300B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000600000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00FFFFFF000000000000000000FFFFFF00
      0000000000000000C0FFFF000000000000000000C00FFF000000000000000000
      C001FF000000000000000000C000FF000000000000000000C000FF0000000000
      00000000C000FF000000000000000000C000FF000000000000000000C000FF00
      0000000000000000C0003F000000000000000000C0000F000000000000000000
      C00003000000000000000000C00001000000000000000000C000010000000000
      00000000C000C1000000000000000000C000F3000000000000000000C000FF00
      0000000000000000C000FF000000000000000000C000FF000000000000000000
      C000FF000000000000000000C000FF000000000000000000F801FF0000000000
      00000000FFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0C1FFFFFFF807FFF807FFFFC0007F07FFF8003FF8003FFF00001
      E007FF80003F80001FE00003C0007F80000780001F8000038000078000038000
      0F80000380000180000380000F80000380000180000380000780000380000180
      0003800007800003800001800003800007800003800001800003800003C00003
      800001800003800003E00007800001800003800001F8000F8000018000038000
      00F8001F800001800003800000FC007FC00003800003800007FC00FFF8000780
      0003800007FC01FFFF800F800007800007FC01FFFFFC1FC03FFFC03F07FC01FF
      FFFFFFE07FFFE07E0FFC01FFFFFFFFFFFFFFFFE01FF803FFFFFFFFFFFFFFFFF0
      7FF803FFFFFFFFFFFFFFFFFFFFF007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00003FFFFFFFF0001FFFFFF
      8000018007FFFF0001FFFFFF8000018001FFFF0001FFFFFF8000018000FFFF00
      01F8003F80000180007FFF0001F87F3F800001C0001FFF0001F83FBF800001F0
      000FC00001FC1FFF800001FC0007C00001FE0FFF800001FE0003C00001FF07FF
      800001FF0001C00001FF83FF800001FF0000C00001FF83FF800001FF0000C000
      01FF07FF800001FF8000C00001FE0FFF800001C00000C00003FC1FFF800001C0
      0000C0007FF83FBFC00003C00000C0007FF87F3FFFFFFFC00000C0007FF8003F
      FFFFFFF00000C0007FFFFFFFFFFFFFFC0000C0007FFFFFFFFFFFFFFF0000E000
      FFFFFFFFFFFFFFFFC000FFFFFFFFFFFFE00003FFFFFFFFFFFFFFFFFFE00003FF
      FFFFFFFFFFFFFFFFE00003FF1FFFFFFFFFFFFFFFE00003F8000FFFFFFF8000FF
      E00003E0000FF1FFCF80007FE00003C0000FF5802F80003FE00003C0000FF990
      0F80001FE00003C0000FFBDEDF80000FE00003C0000FF1FFFF800007E00003C0
      000FFFFFFF800003E00003C0000FF18FFF800001E00003C0000FF7C423800001
      E00003C0000FFB8003800001E00003C0000FF5D237800001E00003C0000FF1FF
      7F800001E00003C0000FFFFFFFC00001E00003C0000FF1FFFFE00001E00003C0
      000FFBA05FF00001E00003E0000FFB821FF80001E00007F8000FF3989FFC0001
      E0000FFE1FFFFBFBFFFE0001E0001FFFFFFFFFFFFFFF0001E0003FFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ds_PLIP: TDataSource
    DataSet = cds_PLIP
    Left = 768
    Top = 272
  end
  object cds_Verk: TFDQuery
    AggregatesActive = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT  Distinct C.ClientNo, C.ClientName, C.SearchName, C.Sales' +
        'RegionNo, C.PktNrLevKod'
      ''
      'FROM   dbo.Client C'
      '       inner join dbo.ClientRole    R on R.ClientNo = C.ClientNo'
      '       inner join dbo.GroupClient gc on gc.ClientNo = C.ClientNo'
      ''
      'WHERE  gc.MainClientNo = :MainClientNo'
      ''
      'Order by C.clientName')
    Left = 136
    Top = 448
    ParamData = <
      item
        Name = 'MAINCLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_VerkClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_VerkClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_VerkSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
    object cds_VerkSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
    object cds_VerkPktNrLevKod: TStringField
      FieldName = 'PktNrLevKod'
      Origin = 'PktNrLevKod'
      Size = 5
    end
  end
  object cds_PLIP: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT Distinct isNull(LIP.InvCode,'#39#39')+'#39'/'#39'+RTRIM(LIP.LogicalInve' +
        'ntoryName) AS PLIP,'
      
        'LIP.LogicalInventoryPointNo AS LIPNo, PH.PhysicalInventoryPointN' +
        'o AS PIPNO, CY.CITYNAME,'
      'LIP.LogicalInventoryName, LIP.InvCode'
      'FROM'
      'dbo.PHYSICALINVENTORYPOINT PH'
      
        'Inner Join dbo.LOGICALINVENTORYPOINT LIP on LIP.PhysicalInventor' +
        'yPointNo = PH.PhysicalInventoryPointNo'
      'Inner Join dbo.CITY CY ON CY.CITYNO = PH.PhyInvPointNameNo'
      'Inner Join dbo.ClientRole CR ON CR.ClientNo = PH.OwnerNo'
      'WHERE'
      'PH.OwnerNo = :OwnerNo'
      'AND LIP.SequenceNo = 1'
      'AND PH.SequenceNo = 1'
      'AND PH.PhyInvPointNameNo in (Select PH2.PhyInvPointNameNo'
      'FROM PHYSICALINVENTORYPOINT PH2'
      'WHERE PH2.OwnerNo = :LegoOwnerNo)'
      ''
      'Order By  LIP.InvCode, LIP.LogicalInventoryName, CY.CITYNAME'
      ''
      '')
    Left = 768
    Top = 224
    ParamData = <
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LEGOOWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PLIPPLIP: TStringField
      FieldName = 'PLIP'
      Origin = 'PLIP'
      ReadOnly = True
      Size = 54
    end
    object cds_PLIPInvCode: TStringField
      FieldName = 'InvCode'
      Origin = 'InvCode'
      Size = 3
    end
  end
  object sq_UserProfile: TFDQuery
    AfterInsert = sq_UserProfileAfterInsert
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.UserProfile'
      'WHERE UserID = :UserID'
      'AND Form = :Form'
      'AND ((Name = :Name) OR ('#39'ALL'#39' = :Name))'
      '')
    Left = 768
    Top = 328
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'FORM'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'NAME'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_UserProfileUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_UserProfileForm: TStringField
      FieldName = 'Form'
      Origin = 'Form'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object sq_UserProfileName: TStringField
      FieldName = 'Name'
      Origin = 'Name'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object sq_UserProfileCopyPcs: TIntegerField
      FieldName = 'CopyPcs'
      Origin = 'CopyPcs'
      ProviderFlags = [pfInUpdate]
    end
  end
  object Timer1: TTimer
    Left = 768
    Top = 440
  end
  object mtSpecData: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'NoOfCopies'
        DataType = ftInteger
      end
      item
        Name = 'SizeFormatNo'
        DataType = ftInteger
      end
      item
        Name = 'LengthFormatNo'
        DataType = ftInteger
      end
      item
        Name = 'VolumeFormatNo'
        DataType = ftInteger
      end
      item
        Name = 'LanguageCode'
        DataType = ftInteger
      end
      item
        Name = 'ArtikelKod'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'KundReferens'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 904
    Top = 301
    object mtSpecDataNoOfCopies: TIntegerField
      FieldName = 'NoOfCopies'
    end
    object mtSpecDataSizeFormatNo: TIntegerField
      FieldName = 'SizeFormatNo'
    end
    object mtSpecDataLengthFormatNo: TIntegerField
      FieldName = 'LengthFormatNo'
    end
    object mtSpecDataVolumeFormatNo: TIntegerField
      FieldName = 'VolumeFormatNo'
    end
    object mtSpecDataLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
    end
    object mtSpecDataSprk: TStringField
      FieldKind = fkLookup
      FieldName = 'Spr'#229'k'
      LookupKeyFields = 'LanguageNo'
      LookupResultField = 'LanguageName'
      KeyFields = 'LanguageCode'
      Lookup = True
    end
    object mtSpecDataSizeFormat: TStringField
      FieldKind = fkLookup
      FieldName = 'SizeFormat'
      LookupKeyFields = 'SizeFormatNo'
      LookupResultField = 'SizeFormat'
      KeyFields = 'SizeFormatNo'
      Size = 10
      Lookup = True
    end
    object mtSpecDataLengthFormat: TStringField
      FieldKind = fkLookup
      FieldName = 'LengthFormat'
      LookupKeyFields = 'LengthFormatNo'
      LookupResultField = 'LengthFormat'
      KeyFields = 'LengthFormatNo'
      Size = 10
      Lookup = True
    end
    object mtSpecDataVolumeFormat: TStringField
      FieldKind = fkLookup
      FieldName = 'VolumeFormat'
      LookupKeyFields = 'VolumeFormatNo'
      LookupResultField = 'VolumeFormat'
      KeyFields = 'VolumeFormatNo'
      Size = 10
      Lookup = True
    end
    object mtSpecDataArtikelKod: TStringField
      FieldName = 'ArtikelKod'
    end
    object mtSpecDataKundReferens: TStringField
      FieldName = 'KundReferens'
    end
  end
  object mtLayout: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AfterInsert = mtLayoutAfterInsert
    Left = 968
    Top = 301
    object mtLayoutPackageLogLayoutNo: TIntegerField
      FieldName = 'PackageLogLayoutNo'
    end
    object mtLayoutLayout: TStringField
      FieldKind = fkLookup
      FieldName = 'Layout'
      LookupKeyFields = 'PackageLogLayoutNo'
      LookupResultField = 'PackageLogLayoutName'
      KeyFields = 'PackageLogLayoutNo'
      Lookup = True
    end
    object mtLayoutNoOfCopies: TIntegerField
      FieldName = 'NoOfCopies'
    end
  end
  object dsLayout: TDataSource
    DataSet = mtLayout
    Left = 968
    Top = 357
  end
  object dsSpecData: TDataSource
    DataSet = mtSpecData
    Left = 904
    Top = 357
  end
  object sq_OnePkg: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT distinct'
      '--        PR.ProductDisplayName           AS PRODUCT,'
      '        PN.PackageNo'#9#9#9#9#9'AS PACKAGENO,'
      '--        PN.PackageTypeNo'#9#9#9#9'AS PACKAGETYPENO,'
      '        PN.SupplierCode'#9'                AS SUPP_CODE,'
      '--        PT.Totalm3Actual                AS M3_NET,'
      '        PT.TotalNoOfPieces              AS TotalPCS,'
      '--        PT.Totalm3Nominal'#9#9#9#9'AS M3_NOM,'
      '--'#9#9'PT.TotalSQMofActualWidth'#9#9'AS KVM,'
      #9#9'PT.TotalLinealMeterActualLength AS LOPM,'
      '--        PT.ProductNo                    AS PRODUCTNO,'
      '--        Cy.CityName                     AS INVENTORY,'
      '--        PT.OnSticks                     AS ONSTICKS,'
      '--        PTL.PcsPerLength                AS PCS_PER_LENGTH,'
      '--        C.ClientName                    AS OWNER,'
      '--        PIP.OwnerNo                     AS OWNERNO,'
      '--        PN.LogicalInventoryPointNo      AS LOG_INVENTORY_NO,'
      '--        BC.BARCODE                      AS BAR_CODE,'
      '--        PT.BarCodeID                    AS BARCODE_ID,'
      '--        GS.GradeStamp                   AS GRADE_STAMP,'
      '--        PT.GradeStamp                   AS GRADESTAMPNO,'
      '--        PT.PackageHeight                AS PKG_HEIGHT,'
      '--        PT.PackageWidth                 AS PKGWIDTH,'
      '--        PT.MiniBundled                  AS MINI_BUNDLE,'
      '--        PT.ShrinkWrap                   AS SHRINK_WRAP,'
      '--        WT.WrapType                     AS WRAP_TYPE,'
      '--        PT.WrapType                     AS WRAPTYPENO,'
      '--        PN.SupplierNo                   AS SUPPLIERNO,'
      '--        PN.PackageTypeNo'#9#9#9#9'AS OLD_PACKAGETYPENO,'
      ''
      '        CASE'
      
        '        WHEN 1 = :SizeFormat THEN CAST(PG.ActualThicknessMM AS V' +
        'archar(6))'
      
        '        WHEN 3 = :SizeFormat THEN CAST(PG.NominalThicknessINCH A' +
        'S Varchar(6))'
      '        END AS oThickness,'
      '        CASE'
      
        '        WHEN 1 = :SizeFormat THEN CAST(PG.ActualWidthMM AS Varch' +
        'ar(6))'
      
        '        WHEN 3 = :SizeFormat THEN CAST(PG.NominalWidthINCH AS Va' +
        'rchar(6))'
      '        END AS oWidth,'
      ''
      #9#9'RTRIM(KV.GradeName) AS KV,'
      #9#9'RTRIM(TS.SpeciesShortName) AS SpeciesShortName,'
      '    RTRIM(UT.SurfacingName) AS UT,'
      #9#9
      #9#9'(Select '
      #9#9'CASE '
      
        #9#9'WHEN 1 = :LengthFormat THEN CAST(Max(PL.ActualLengthMM) AS Var' +
        'char(6))'
      
        #9#9'WHEN 3 = :LengthFormat THEN CAST(Max(PL.NominalLengthFEET) AS ' +
        'Varchar(6))'
      
        #9#9'WHEN 4 = :LengthFormat THEN CAST(Max(PL.ActualLengthINCH) AS V' +
        'archar(6))'
      #9#9'END '#9
      #9#9'FROM dbo.PackageTypeDetail PTD '
      
        #9#9'Inner Join dbo.ProductLength PL on PL.ProductLengthNo = PTD.Pr' +
        'oductLengthNo'
      #9#9'WHERE PTD.PackageTypeNo = PN.PackageTypeNo) AS oLength,'
      ''
      #9#9'CASE'
      #9#9'WHEN 1 = :VolumeFormat THEN'#9'PT.Totalm3Actual'
      #9#9'WHEN 3 = :VolumeFormat THEN'#9'PT.TotalMFBMNominal '
      #9#9'END AS Volume,'
      '    PN.DateCreated'
      ''
      ''
      'FROM       dbo.PackageNumber             PN'
      
        '        INNER JOIN dbo.PackageType  PT ON   PT.PackageTypeNo = P' +
        'N.PackageTypeNo'
      
        '--        Inner Join dbo.PackageTypeLengths PTL ON PTL.PackageTy' +
        'peNo = PT.PackageTypeNo'
      
        '        INNER JOIN dbo.Product      Pr  ON Pr.ProductNo     = Pt' +
        '.ProductNo'
      
        '        INNER JOIN dbo.ProductGroup      PG  ON PG.ProductGroupN' +
        'o     = Pr.ProductGroupNo'
      '        INNER JOIN dbo.Species TS on TS.SpeciesNo = PG.SpeciesNo'
      
        '        INNER JOIN dbo.Surfacing UT on UT.SurfacingNo = PG.Surfa' +
        'cingNo'
      '        INNER JOIN dbo.Grade KV on KV.GradeNo = Pr.GradeNo'
      
        '--        Inner Join dbo.LogicalInventoryPoint LIP ON LIP.Logica' +
        'lInventoryPointNo = PN.LogicalInventoryPointNo'
      
        '--        Inner Join dbo.PhysicalInventoryPoint PIP ON PIP.Physi' +
        'calInventoryPointNo = LIP.PhysicalInventoryPointNo'
      
        '--        Inner Join dbo.City Cy  ON Cy.CityNo = PIP.PhyInvPoint' +
        'NameNo'
      '--        Inner Join dbo.Client C ON C.ClientNo = PIP.OwnerNo'
      
        '--        LEFT OUTER JOIN DBO.BARCODE BC ON BC.BarCodeNo = PT.Ba' +
        'rCodeID'
      
        '--        LEFT OUTER JOIN DBO.GRADESTAMP GS ON GS.GradeStampNo =' +
        ' PT.GradeStamp'
      
        '--        LEFT OUTER JOIN DBO.WrapType WT ON WT.WrapTypeNo = PT.' +
        'WrapType'
      ''
      'WHERE     PN.PackageNo = :PackageNo'
      'AND PN.SupplierCode = :SupplierCode'
      'And TS.LanguageCode = :LanguageCode'
      'And UT.LanguageCode = :LanguageCode'
      'And KV.LanguageCode = :LanguageCode'
      '')
    Left = 904
    Top = 432
    ParamData = <
      item
        Name = 'SIZEFORMAT'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LENGTHFORMAT'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'VOLUMEFORMAT'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PACKAGENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERCODE'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'LANGUAGECODE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_OnePkgPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
      Origin = 'PACKAGENO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_OnePkgSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Origin = 'SUPP_CODE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object sq_OnePkgTotalPCS: TIntegerField
      FieldName = 'TotalPCS'
      Origin = 'TotalPCS'
    end
    object sq_OnePkgLOPM: TFloatField
      FieldName = 'LOPM'
      Origin = 'LOPM'
    end
    object sq_OnePkgoThickness: TStringField
      FieldName = 'oThickness'
      Origin = 'oThickness'
      ReadOnly = True
      Size = 6
    end
    object sq_OnePkgoWidth: TStringField
      FieldName = 'oWidth'
      Origin = 'oWidth'
      ReadOnly = True
      Size = 6
    end
    object sq_OnePkgKV: TStringField
      FieldName = 'KV'
      Origin = 'KV'
      ReadOnly = True
      Size = 30
    end
    object sq_OnePkgSpeciesShortName: TStringField
      FieldName = 'SpeciesShortName'
      Origin = 'SpeciesShortName'
      ReadOnly = True
      Size = 10
    end
    object sq_OnePkgUT: TStringField
      FieldName = 'UT'
      Origin = 'UT'
      ReadOnly = True
      Size = 30
    end
    object sq_OnePkgoLength: TStringField
      FieldName = 'oLength'
      Origin = 'oLength'
      ReadOnly = True
      Size = 6
    end
    object sq_OnePkgVolume: TFloatField
      FieldName = 'Volume'
      Origin = 'Volume'
      ReadOnly = True
    end
    object sq_OnePkgDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
  end
  object cxShellBrowserDialog1: TcxShellBrowserDialog
    Left = 440
    Top = 512
  end
  object siLangLinked_fkilnHandling: TsiLangLinked
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
    Left = 608
    Top = 552
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066006B0069006C006E00480061006E0064006C006900
      6E00670001004C00410047004500520052004100500050004F00520054000100
      010001000D000A007400730054004100420045004C004C000100500041004B00
      4500540054004100420045004C004C00450052000100010001000D000A006300
      78004700720069006400310044004200420061006E0064006500640054006100
      62006C0065005600690065007700310052006100640001005200610064000100
      010001000D000A00630078004700720069006400310044004200420061006E00
      6400650064005400610062006C0065005600690065007700310052006F007700
      4E006F00010052006F0077004E006F000100010001000D000A00630078004700
      720069006400310044004200420061006E006400650064005400610062006C00
      6500560069006500770031004C00310001004C0031000100010001000D000A00
      630078004700720069006400310044004200420061006E006400650064005400
      610062006C006500560069006500770031004C00320001004C00320001000100
      01000D000A00630078004700720069006400310044004200420061006E006400
      650064005400610062006C006500560069006500770031004C00330001004C00
      33000100010001000D000A006300780047007200690064003100440042004200
      61006E006400650064005400610062006C006500560069006500770031004C00
      340001004C0034000100010001000D000A006300780047007200690064003100
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004C00350001004C0035000100010001000D000A006300780047007200
      69006400310044004200420061006E006400650064005400610062006C006500
      560069006500770031004C00360001004C0036000100010001000D000A006300
      78004700720069006400310044004200420061006E0064006500640054006100
      62006C006500560069006500770031004C00370001004C003700010001000100
      0D000A00630078004700720069006400310044004200420061006E0064006500
      64005400610062006C006500560069006500770031004C00380001004C003800
      0100010001000D000A0063007800470072006900640031004400420042006100
      6E006400650064005400610062006C006500560069006500770031004C003900
      01004C0039000100010001000D000A0063007800470072006900640031004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004C003100300001004C00310030000100010001000D000A00630078004700
      720069006400310044004200420061006E006400650064005400610062006C00
      6500560069006500770031004C003100310001004C0031003100010001000100
      0D000A00630078004700720069006400310044004200420061006E0064006500
      64005400610062006C006500560069006500770031004C003100320001004C00
      310032000100010001000D000A00630078004700720069006400310044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4C003100330001004C00310033000100010001000D000A006300780047007200
      69006400310044004200420061006E006400650064005400610062006C006500
      560069006500770031004C003100340001004C00310034000100010001000D00
      0A00630078004700720069006400310044004200420061006E00640065006400
      5400610062006C006500560069006500770031004C003100350001004C003100
      35000100010001000D000A006300780047007200690064003100440042004200
      61006E006400650064005400610062006C006500560069006500770031004C00
      3100360001004C00310036000100010001000D000A0063007800470072006900
      6400310044004200420061006E006400650064005400610062006C0065005600
      69006500770031004C003100370001004C00310037000100010001000D000A00
      630078004700720069006400310044004200420061006E006400650064005400
      610062006C006500560069006500770031004C003100380001004C0031003800
      0100010001000D000A0063007800470072006900640031004400420042006100
      6E006400650064005400610062006C006500560069006500770031004C003100
      390001004C00310039000100010001000D000A00630078004700720069006400
      310044004200420061006E006400650064005400610062006C00650056006900
      6500770031004C003200300001004C00320030000100010001000D000A006300
      78004700720069006400310044004200420061006E0064006500640054006100
      62006C006500560069006500770031004C003200310001004C00320031000100
      010001000D000A00630078004700720069006400310044004200420061006E00
      6400650064005400610062006C006500560069006500770031004C0032003200
      01004C00320032000100010001000D000A006300780047007200690064003100
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004C003200330001004C00320033000100010001000D000A0063007800
      4700720069006400310044004200420061006E00640065006400540061006200
      6C006500560069006500770031004C003200340001004C003200340001000100
      01000D000A00630078004700720069006400310044004200420061006E006400
      650064005400610062006C006500560069006500770031004C00320035000100
      4C00320035000100010001000D000A0063007800470072006900640031004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004C003200360001004C00320036000100010001000D000A00630078004700
      720069006400310044004200420061006E006400650064005400610062006C00
      6500560069006500770031004C003200370001004C0032003700010001000100
      0D000A00630078004700720069006400310044004200420061006E0064006500
      64005400610062006C006500560069006500770031004C003200380001004C00
      320038000100010001000D000A00630078004700720069006400310044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4C003200390001004C00320039000100010001000D000A006300780047007200
      69006400310044004200420061006E006400650064005400610062006C006500
      560069006500770031004C003300300001004C00330030000100010001000D00
      0A00630078004700720069006400310044004200420061006E00640065006400
      5400610062006C006500560069006500770031004C003300310001004C003300
      31000100010001000D000A006300780047007200690064003100440042004200
      61006E006400650064005400610062006C006500560069006500770031004C00
      3300320001004C00330032000100010001000D000A0063007800470072006900
      6400310044004200420061006E006400650064005400610062006C0065005600
      69006500770031004C003300330001004C00330033000100010001000D000A00
      630078004700720069006400310044004200420061006E006400650064005400
      610062006C006500560069006500770031004C003300340001004C0033003400
      0100010001000D000A0063007800470072006900640031004400420042006100
      6E006400650064005400610062006C006500560069006500770031004C003300
      350001004C00330035000100010001000D000A00630078004700720069006400
      310044004200420061006E006400650064005400610062006C00650056006900
      6500770031004C003300360001004C00330036000100010001000D000A006300
      78004700720069006400310044004200420061006E0064006500640054006100
      62006C006500560069006500770031004C003300370001004C00330037000100
      010001000D000A00630078004700720069006400310044004200420061006E00
      6400650064005400610062006C006500560069006500770031004C0033003800
      01004C00330038000100010001000D000A006300780047007200690064003100
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004C003300390001004C00330039000100010001000D000A0063007800
      4700720069006400310044004200420061006E00640065006400540061006200
      6C006500560069006500770031004C003400300001004C003400300001000100
      01000D000A00630078004700720069006400310044004200420061006E006400
      650064005400610062006C006500560069006500770031004C00340031000100
      4C00340031000100010001000D000A0063007800470072006900640031004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004C003400320001004C00340032000100010001000D000A00630078004700
      720069006400310044004200420061006E006400650064005400610062006C00
      6500560069006500770031004C003400330001004C0034003300010001000100
      0D000A00630078004700720069006400310044004200420061006E0064006500
      64005400610062006C006500560069006500770031004C003400340001004C00
      340034000100010001000D000A00630078004700720069006400310044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4C003400350001004C00340035000100010001000D000A00740073004C006100
      670072006500740001004C0061006700650072000100010001000D000A006300
      78004C006100620065006C0032000100C40067006100720065003A0001000100
      01000D000A00630078004C006100620065006C005600610067006E0001004D00
      610072006B00650072006100640020007600610067006E003A00010001000100
      0D000A00630078004C006100620065006C003100010054006F0072006B003A00
      0100010001000D000A006300620043006F006C004100750074006F0057006900
      64007400680001004100750074006F0020006B006F006C0075006D006E006200
      72006500640064000100010001000D000A006300780042007500740074006F00
      6E003900010053007400E4006E0067000100010001000D000A00630078004C00
      6100620065006C00330001004B006F006C00620072006500640064003A000100
      010001000D000A00640078004200610072004D0061006E006100670065007200
      31004200610072003100010043007500730074006F006D002000310001000100
      01000D000A00640078004200610072004D0061006E0061006700650072003100
      4200610072003300010054006F0072006B005300610074007300010001000100
      0D000A00640078004200610072004D0061006E00610067006500720031004200
      610072003500010054006F0072006B0073006100740073003200010001000100
      0D000A006C006200520065006600720065007300680001002600520065006600
      72006500730068000100010001000D000A006C00620050006B0067004E006F00
      5200650070006F00720074000100500061006B00650074006E00720020004600
      32000100010001000D000A006C0062005000630073005000650072004C006500
      6E006700740068005200650070006F0072007400010041006E0074002F006C00
      E4006E00670064002000460033000100010001000D000A006C00620050006B00
      670054007900700065005200650070006F00720074000100500061006B006500
      74006B006F0064002000460034000100010001000D000A006C00620049006E00
      760065006E0074006F007200790043006F0075006E007400010050006B007400
      4E00720020006C0069007300740061002000460035000100010001000D000A00
      6C0062004800690064006500460069006C00740065007200500061006E006500
      6C0001004700F6006D002000660069006C007400650072000100010001000D00
      0A0062006200530075006D006D006100720079005200650070006F0072007400
      0100530075006D006D006500720069006E006700200043005200200046003600
      0100010001000D000A00640078004200610072004C0061007200670065004200
      7500740074006F006E003100010054006100620065006C006C00200046003800
      0100010001000D000A00640078004200610072004C0061007200670065004200
      7500740074006F006E0032000100530075006D006D006500720069006E006700
      2000460037000100010001000D000A0064007800420061007200420075007400
      74006F006E00330033000100530075006D006D006500720069006E0067000100
      010001000D000A006400780042006100720042007500740074006F006E003400
      300001005300700061007200610020006C00610079006F007500740001000100
      01000D000A006400780042006100720042007500740074006F006E0034003100
      0100D600700070006E00610020006C00610079006F0075007400010001000100
      0D000A006400780042006100720042007500740074006F006E00340032000100
      53007000610072006100200073006F006D00200065007800630065006C000100
      010001000D000A006400780042006100720042007500740074006F006E003200
      01004600E4006C00740020007600E4006C006A00610072006500010001000100
      0D000A006400780042006100720042007500740074006F006E00330001004500
      7800700061006E006400650072006100200061006C006C006100200067007200
      750070007000650072000100010001000D000A00640078004200610072004200
      7500740074006F006E00340001004B006F006C006C0061007000730061002000
      61006C006C006100200067007200750070007000650072000100010001000D00
      0A006400780042006100720042007500740074006F006E0035000100C4006E00
      6400720061002000700061006B00650074000100010001000D000A0064007800
      42006100720042007500740074006F006E003600010054006100200062006F00
      720074002000700061006B00650074000100010001000D000A00640078004200
      6100720042007500740074006F006E0037000100500061006B00650074006C00
      6F00670067000100010001000D000A0064007800420061007200420075007400
      74006F006E003300350001005600E50072006400610020006C00610067006500
      72000100010001000D000A006400780042006100720042007500740074006F00
      6E00340033000100C4006E006400720061002000700072006900730020007000
      E50020006D00610072006B00650072006100640065002000700061006B006500
      74000100010001000D000A006400780042006100720042007500740074006F00
      6E00380001005200650067006900730074007200650072006100200070006100
      6B00650074000100010001000D000A0064007800420061007200420075007400
      74006F006E0039000100C4006E006400720061002000700061006B0065007400
      0100010001000D000A006400780042006100720042007500740074006F006E00
      3100300001004100760072006500670069007300740072006500720061002000
      700061006B00650074000100010001000D000A00640078004200610072004200
      7500740074006F006E0031003100010053006B00720069007600200075007400
      0100010001000D000A006400780042006100720042007500740074006F006E00
      31003200010045006D00610069006C0061000100010001000D000A0064007800
      42006100720042007500740074006F006E003100340001004600E4006C007400
      20007600E4006C006A006100720065000100010001000D000A00640078004200
      6100720042007500740074006F006E00310033000100500061006B0065007400
      69006E0066006F0072006D006100740069006F006E000100010001000D000A00
      6400780042006100720042007500740074006F006E0032003800010046006C00
      79007400740061002000700061006B0065007400200069006E00740065007200
      6E0074000100010001000D000A00640078004200610072004200750074007400
      6F006E0033003400010041007600720065006700690073007400720065007200
      610020006D006F007400200069006E00760065006E0074006500720069006E00
      67000100010001000D000A006400780042006100720042007500740074006F00
      6E0033003700010054006100200062006F00720074002000700061006B006500
      7400200028006C0061006700650072007600E500720064002900010001000100
      0D000A006400780042006100720042007500740074006F006E00330038000100
      C4006E006400720061002000700061006B0065007400200028006C0061006700
      650072007600E5007200640029000100010001000D000A006400780042006100
      720042007500740074006F006E003100350001004E007900200074006F007200
      6B0073006100740073000100010001000D000A00640078004200610072004200
      7500740074006F006E0031003600010020002000530070006100720061002000
      20000100010001000D000A006400780042006100720042007500740074006F00
      6E00310037000100C5006E006700720061000100010001000D000A0064007800
      42006100720042007500740074006F006E003100380001005400610020006200
      6F0072007400200074006F0072006B0073006100740073000100010001000D00
      0A006400780042006100720042007500740074006F006E00310039000100D600
      700070006E0061000100010001000D000A006400780042006100720042007500
      740074006F006E0032003000010053006B007200690076002000750074000100
      010001000D000A006200620041006400640050006B006700730054006F004B00
      69006C006E0043006800610072006700650001004C00E4006700670020007000
      61006B00650074002000740069006C006C00200074006F0072006B0073006100
      740073000100010001000D000A00640078004200610072004200750074007400
      6F006E0033003000010054006100200062006F00720074002000700061006B00
      650074000100010001000D000A00640078004200610072004200750074007400
      6F006E0032003900010054006100200062006F00720074002000720061006400
      0100010001000D000A006400780042006100720042007500740074006F006E00
      33003100010046006C0079007400740061002000700061006B00650074002000
      740069006C006C0020006C006100670065007200200065006600740065007200
      200074006F0072006B000100010001000D000A00640078004200610072004200
      7500740074006F006E003300320001004E006F0074006500720069006E006700
      0100010001000D000A006400780042006100720042007500740074006F006E00
      32003300010053006B0072006900760020002600750074000100010001000D00
      0A006400780042006100720042007500740074006F006E003200340001004100
      750074006F006D0061007400690073006B0020006B006F006C0075006D006E00
      620072006500640064000100010001000D000A00640078004200610072004200
      7500740074006F006E0032003500010045006D00610069006C00610001000100
      01000D000A006400780042006100720042007500740074006F006E0032003600
      010047007200750070007000730075006D006D006500720069006E0067000100
      010001000D000A006400780042006100720042007500740074006F006E003200
      37000100470072007500700070006500720069006E0067007300720075007400
      61000100010001000D000A006200620056006900730061004100760041006B00
      7400690076006500720061006400650001005600690073006100200061007600
      61006B00740069007600650072006100640065000100010001000D000A006400
      780042006100720042007500740074006F006E0033003600010041006C007400
      650072006E0061007400690076002000640069006D002E0069006E006D006100
      74006E0069006E0067000100010001000D000A00640078004200610072004200
      7500740074006F006E00330039000100C50074006500720073007400E4006C00
      6C00200074006100620065006C006C006C00610079006F007500740001000100
      01000D000A006100630043006C006F0073006500010058000100010001000D00
      0A006100630050006B00670049006E0066006F000100500061006B0065007400
      69006E0066006F0072006D006100740069006F006E000100010001000D000A00
      6100630050006B00670054007900700065005400610062006C00650001005500
      700070006400610074006500720061000100010001000D000A00610063004100
      640064005600610067006E0001004C00E400670067002000740069006C006C00
      20005600610067006E002F0053006100740073000100010001000D000A006100
      630045006400690074005600610067006E000100C4006E006400720061002000
      5600610067006E002F0053006100740073000100010001000D000A0061006300
      4D006F00760065005600610067006E0049006E0074006F004B0069006C006E00
      010053007400650067006100200069006E0020005600610067006E002F005300
      61007400730020006900200074006F0072006B000100010001000D000A006100
      63004D006F0076006500460072006F006D004B0069006C006E00010053007400
      65006700610020007500740020005600610067006E002F005300610074007300
      200066007200E5006E00200074006F0072006B000100010001000D000A006100
      6300430061006E00630065006C004D006F00760065005600610067006E004900
      6E0074006F004B0069006C006E000100C5006E00670072006100200053007400
      650067006100200069006E0020005600610067006E002F005300610074007300
      20006900200074006F0072006B000100010001000D000A006100630043006100
      6E00630065006C004D006F0076006500460072006F006D004B0069006C006E00
      0100C5006E006700720061002000530074006500670061002000750074002000
      5600610067006E002F005300610074007300200066007200E5006E0020007400
      6F0072006B000100010001000D000A0061006300530061007600650050007200
      6F0070007300010053007000610072006100200069006E0073007400E4006C00
      6C006E0069006E006700610072000100010001000D000A004600310050006B00
      74004E00720072006100700070006F007200740031000100500061006B006500
      74006E0072002000460032000100010001000D000A004600320041006E007400
      61006C006C006E006700640072006100700070006F0072007400310001004100
      6E0074002F006C00E4006E00670064002000460033000100010001000D000A00
      4600330050006B0074006B006F00640072006100700070006F00720074003100
      0100500061006B00650074006B006F0064002000460034000100010001000D00
      0A004600340050006B0074004E0072006C006900730074006100310001005000
      6B0074004E00720020006C006900730074006100200046003500010001000100
      0D000A00460035004C006100670065007200730075006D006D00650072006900
      6E00670031000100530075006D006D006500720069006E006700200046003600
      0100010001000D000A00500061006B006500740074006100620065006C006C00
      4600380031000100500061006B00650074006E00720020004600380001000100
      01000D000A004C006100670065007200730075006D0074006100620065006C00
      6C004600370031000100530075006D006D006500720069006E00670020004600
      37000100010001000D000A0053006B0072006900760075007400310001005300
      6B0072006900760020002600750074000100010001000D000A0041006E007400
      6C006E0067006400460039003100010041006E0074002F006C00E4006E006700
      64002000460039000100010001000D000A006400780043006F006D0070006F00
      6E0065006E0074005000720069006E0074006500720031004C0069006E006B00
      310001004E00650077005200650070006F00720074000100010001000D000A00
      6400780043006F006D0070006F006E0065006E0074005000720069006E007400
      6500720031004C0069006E006B00320001004E00650077005200650070006F00
      720074000100010001000D000A006400780043006F006D0070006F006E006500
      6E0074005000720069006E0074006500720031004C0069006E006B0033000100
      4E00650077005200650070006F00720074000100010001000D000A0064007800
      43006F006D0070006F006E0065006E0074005000720069006E00740065007200
      31004C0069006E006B00340001004E00650077005200650070006F0072007400
      0100010001000D000A006400780043006F006D0070006F006E0065006E007400
      5000720069006E0074006500720031004C0069006E006B00350001004E006500
      77005200650070006F00720074000100010001000D000A004700720069006400
      420061006E006400650064005400610062006C00650056006900650077005300
      740079006C00650053006800650065007400500075006D0070006B0069006E00
      6C0061007200670065000100500075006D0070006B0069006E00200028006C00
      610072006700650029000100010001000D000A0073007400480069006E007400
      73005F0055006E00690063006F00640065000D000A006C006200520065006600
      720065007300680001005200650066007200650073006800010001000D000A00
      6C0062004800690064006500460069006C00740065007200500061006E006500
      6C0001004700F6006D002000660069006C00740065007200010001000D000A00
      7300740044006900730070006C00610079004C006100620065006C0073005F00
      55006E00690063006F00640065000D000A006D00740055007300650072005000
      72006F0070005600650072006B004E006F0001005600650072006B004E006F00
      010001000D000A006D0074005500730065007200500072006F0070004F007700
      6E00650072004E006F0001004F0077006E00650072004E006F00010001000D00
      0A006D0074005500730065007200500072006F0070005000490050004E006F00
      01005000490050004E006F00010001000D000A006D0074005500730065007200
      500072006F0070004C00490050004E006F0001004C00490050004E006F000100
      01000D000A006D0074005500730065007200500072006F00700049006E007000
      750074004F007000740069006F006E00010049006E007000750074004F007000
      740069006F006E00010001000D000A006D007400550073006500720050007200
      6F00700052006500670050006F0069006E0074004E006F000100520065006700
      50006F0069006E0074004E006F00010001000D000A006D007400550073006500
      7200500072006F00700052006500670044006100740065000100520065006700
      4400610074006500010001000D000A006D007400550073006500720050007200
      6F00700043006F0070007900500063007300010043006F007000790050006300
      7300010001000D000A006D0074005500730065007200500072006F0070005200
      75006E004E006F000100520075006E004E006F00010001000D000A006D007400
      5500730065007200500072006F007000500072006F0064007500630065007200
      4E006F000100500072006F00640075006300650072004E006F00010001000D00
      0A006D0074005500730065007200500072006F0070004100750074006F004300
      6F006C005700690064007400680001004100750074006F0043006F006C005700
      6900640074006800010001000D000A006D007400550073006500720050007200
      6F00700053007500700070006C0069006500720043006F006400650001005300
      7500700070006C0069006500720043006F0064006500010001000D000A006D00
      74005500730065007200500072006F0070004C0065006E006700740068004F00
      7000740069006F006E0001004C0065006E006700740068004F00700074006900
      6F006E00010001000D000A006D0074005500730065007200500072006F007000
      4C0065006E00670074006800470072006F00750070004E006F0001004C006500
      6E00670074006800470072006F00750070004E006F00010001000D000A006D00
      74005500730065007200500072006F0070004E00650077004900740065006D00
      52006F00770001004E00650077004900740065006D0052006F00770001000100
      0D000A006D0074005500730065007200500072006F007000530061006C006500
      730052006500670069006F006E004E006F000100530061006C00650073005200
      6500670069006F006E004E006F00010001000D000A006D007400550073006500
      7200500072006F0070004C0065006E0067007400680046006F0072006D006100
      74004E006F0001004C0065006E0067007400680046006F0072006D0061007400
      4E006F00010001000D000A006D0074005500730065007200500072006F007000
      470072006100640065005300740061006D0070004E006F000100470072006100
      640065005300740061006D0070004E006F00010001000D000A006D0074005500
      730065007200500072006F00700042006100720043006F00640065004E006F00
      010042006100720043006F00640065004E006F00010001000D000A006D007400
      5500730065007200500072006F0070004C0065006E0067007400680047007200
      6F007500700001004C0065006E00670074006800470072006F00750070000100
      01000D000A006D0074005500730065007200500072006F0070004C0049005000
      4E0061006D00650001004C00490050004E0061006D006500010001000D000A00
      6D0074005500730065007200500072006F0070005000490050004E0041004D00
      450001005000490050004E0041004D004500010001000D000A006D0074005500
      730065007200500072006F00700052004500470050004F0049004E0054000100
      52004500470050004F0049004E005400010001000D000A006D00740055007300
      65007200500072006F007000500052004F004400550043004500520001005000
      52004F0044005500430045005200010001000D000A006D007400550073006500
      7200500072006F0070004F0057004E004500520001004F0057004E0045005200
      010001000D000A006D0074005500730065007200500072006F00700056004500
      52004B0001005600450052004B00010001000D000A006D007400550073006500
      7200500072006F00700052006F006C0065005400790070006500010052006F00
      6C0065005400790070006500010001000D000A006D0074005500730065007200
      500072006F007000470072006100640065007300740061006D00700001004700
      72006100640065007300740061006D007000010001000D000A006D0074005500
      730065007200500072006F00700042006100720063006F006400650001004200
      6100720063006F0064006500010001000D000A006D0074005500730065007200
      500072006F007000500072006F00640075006300740044006500730063007200
      69007000740069006F006E000100500072006F00640075006300740044006500
      73006300720069007000740069006F006E00010001000D000A006D0074005500
      730065007200500072006F007000500072006F0064007500630074004E006F00
      0100500072006F0064007500630074004E006F00010001000D000A006D007400
      5500730065007200500072006F007000500072006F0064007500630074004700
      72006F00750070004E006F000100500072006F00640075006300740047007200
      6F00750070004E006F00010001000D000A006D00740055007300650072005000
      72006F0070004C00490050004300680061006E006700650001004C0049005000
      4300680061006E0067006500010001000D000A006D0074005500730065007200
      500072006F00700053005200010053005200010001000D000A006D0074005500
      730065007200500072006F00700056006F006C0075006D00650055006E006900
      4E006F00010056006F006C0075006D00650055006E0069004E006F0001000100
      0D000A006D0074005500730065007200500072006F0070005600550001005600
      5500010001000D000A006D0074005500730065007200500072006F0070004C00
      65006E0067007400680046006F0072006D006100740001004C0065006E006700
      7400680046006F0072006D0061007400010001000D000A006D00740055007300
      65007200500072006F0070004C0065006E0067007400680056006F006C005500
      6E00690074004E006F0001004C0065006E0067007400680056006F006C005500
      6E00690074004E006F00010001000D000A006D00740055007300650072005000
      72006F0070004C0065006E0067007400680056006F006C0055006E0069007400
      01004C0065006E0067007400680056006F006C0055006E006900740001000100
      0D000A006D0074005500730065007200500072006F00700056006F006C007500
      6D00650055006E00690074004E006F00010056006F006C0075006D0065005500
      6E00690074004E006F00010001000D000A006D00740055007300650072005000
      72006F00700046006F0072006D00010046006F0072006D00010001000D000A00
      6D0074005500730065007200500072006F007000550073006500720049004400
      0100550073006500720049004400010001000D000A006D007400550073006500
      7200500072006F007000470072006F00750070004200790042006F0078000100
      470072006F00750070004200790042006F007800010001000D000A006D007400
      5500730065007200500072006F007000470072006F0075007000530075006D00
      6D006100720079000100470072006F0075007000530075006D006D0061007200
      7900010001000D000A006D0074005500730065007200500072006F0070004100
      670065006E0074004E006F0001004100670065006E0074004E006F0001000100
      0D000A006D0074005500730065007200500072006F0070004B0069006C006E00
      4E006F0001004B0069006C006E004E006F00010001000D000A006D0074005500
      730065007200500072006F007000540045005300540001005400450053005400
      010001000D000A006D0074005500730065007200500072006F00700053006800
      690070007000650072004E006F00010053006800690070007000650072004E00
      6F00010001000D000A006D0074005500730065007200500072006F0070005300
      740061007200740050006500720069006F006400010053007400610072007400
      50006500720069006F006400010001000D000A006D0074005500730065007200
      500072006F00700045006E00640050006500720069006F006400010045006E00
      640050006500720069006F006400010001000D000A006D007400550073006500
      7200500072006F0070004B0069006C006E004300680061007200670065004E00
      6F0001004B0069006C006E004300680061007200670065004E006F0001000100
      0D000A006D0074005500730065007200500072006F007000500072006F006700
      72006500730073004B0069006C006E000100500072006F006700720065007300
      73004B0069006C006E00010001000D000A006D00740055007300650072005000
      72006F007000460069006C0074006500720031000100460069006C0074006500
      72003100010001000D000A006D0074005500730065007200500072006F007000
      460069006C0074006500720032000100460069006C0074006500720032000100
      01000D000A006D0074005500730065007200500072006F0070004D0061007200
      6B006500740052006500670069006F006E004E006F0001004D00610072006B00
      6500740052006500670069006F006E004E006F00010001000D000A006D007400
      5500730065007200500072006F0070004F007200640065007200540079007000
      65004E006F0001004F00720064006500720054007900700065004E006F000100
      01000D000A006D0074005500730065007200500072006F007000530074006100
      7400750073000100530074006100740075007300010001000D000A006D007400
      5500730065007200500072006F007000460069006C007400650072004F007200
      64006500720044006100740065000100460069006C007400650072004F007200
      6400650072004400610074006500010001000D000A006D007400550073006500
      7200500072006F00700043006C00690065006E0074004E006F00010043006C00
      690065006E0074004E006F00010001000D000A006D0074005500730065007200
      500072006F007000530061006C006500730050006500720073006F006E004E00
      6F000100530061006C006500730050006500720073006F006E004E006F000100
      01000D000A006D0074005500730065007200500072006F007000560065007200
      6B0053007500700070006C006900650072004E006F0001005600650072006B00
      53007500700070006C006900650072004E006F00010001000D000A006D007400
      5500730065007200500072006F0070005600650072006B004B0075006E006400
      4E006F0001005600650072006B004B0075006E0064004E006F00010001000D00
      0A006D0074005500730065007200500072006F0070004C004F004F0062006A00
      650063007400540079007000650001004C004F004F0062006A00650063007400
      5400790070006500010001000D000A006D007400550073006500720050007200
      6F0070004C006F006100640069006E0067004C006F0063006100740069006F00
      6E004E006F0001004C006F006100640069006E0067004C006F00630061007400
      69006F006E004E006F00010001000D000A006D00740055007300650072005000
      72006F00700042006F006F006B0069006E00670054007900700065004E006F00
      010042006F006F006B0069006E00670054007900700065004E006F0001000100
      0D000A006D0074005500730065007200500072006F0070004300750073007400
      6F006D00650072004E006F00010043007500730074006F006D00650072004E00
      6F00010001000D000A006D0074005500730065007200500072006F0070005300
      68006F007700500072006F0064007500630074000100530068006F0077005000
      72006F006400750063007400010001000D000A006D00740050006B0067004E00
      6F0073005000610063006B006100670065004E006F0001005000610063006B00
      6100670065004E006F00010001000D000A006D00740050006B0067004E006F00
      730053007500700070005F0043006F0064006500010053007500700070005F00
      43006F0064006500010001000D000A006D00740050006B0067004E006F007300
      4F0077006E00650072004E006F0001004F0077006E00650072004E006F000100
      01000D000A006D00740050006B0067004E006F0073004C00490050004E006F00
      01004C00490050004E006F00010001000D000A006D00740050006B0067004E00
      6F0073005000490050004E006F0001005000490050004E006F00010001000D00
      0A006D00740050006B0067004E006F0073005300740061007400750073000100
      530074006100740075007300010001000D000A006300640073005F0056006500
      72006B0043006C00690065006E0074004E006F00010043006C00690065006E00
      74004E006F00010001000D000A006300640073005F005600650072006B004300
      6C00690065006E0074004E0061006D006500010043006C00690065006E007400
      4E0061006D006500010001000D000A006300640073005F005600650072006B00
      5300650061007200630068004E0061006D006500010053006500610072006300
      68004E0061006D006500010001000D000A006300640073005F00560065007200
      6B00530061006C006500730052006500670069006F006E004E006F0001005300
      61006C006500730052006500670069006F006E004E006F00010001000D000A00
      6300640073005F005600650072006B0050006B0074004E0072004C0065007600
      4B006F006400010050006B0074004E0072004C00650076004B006F0064000100
      01000D000A006300640073005F0050004C004900500050004C00490050000100
      50004C0049005000010001000D000A006300640073005F0050004C0049005000
      49006E00760043006F0064006500010049006E00760043006F00640065000100
      01000D000A00730071005F005500730065007200500072006F00660069006C00
      6500550073006500720049004400010055007300650072004900440001000100
      0D000A00730071005F005500730065007200500072006F00660069006C006500
      46006F0072006D00010046006F0072006D00010001000D000A00730071005F00
      5500730065007200500072006F00660069006C00650043006F00700079005000
      63007300010043006F0070007900500063007300010001000D000A006D007400
      530070006500630044006100740061004E006F004F00660043006F0070006900
      6500730001004E006F004F00660043006F007000690065007300010001000D00
      0A006D00740053007000650063004400610074006100530069007A0065004600
      6F0072006D00610074004E006F000100530069007A00650046006F0072006D00
      610074004E006F00010001000D000A006D007400530070006500630044006100
      740061004C0065006E0067007400680046006F0072006D00610074004E006F00
      01004C0065006E0067007400680046006F0072006D00610074004E006F000100
      01000D000A006D0074005300700065006300440061007400610056006F006C00
      75006D00650046006F0072006D00610074004E006F00010056006F006C007500
      6D00650046006F0072006D00610074004E006F00010001000D000A006D007400
      530070006500630044006100740061004C0061006E0067007500610067006500
      43006F006400650001004C0061006E006700750061006700650043006F006400
      6500010001000D000A006D007400530070006500630044006100740061005300
      700072006B000100530070007200E5006B00010001000D000A006D0074005300
      7000650063004400610074006100530069007A00650046006F0072006D006100
      74000100530069007A00650046006F0072006D0061007400010001000D000A00
      6D007400530070006500630044006100740061004C0065006E00670074006800
      46006F0072006D006100740001004C0065006E0067007400680046006F007200
      6D0061007400010001000D000A006D0074005300700065006300440061007400
      610056006F006C0075006D00650046006F0072006D0061007400010056006F00
      6C0075006D00650046006F0072006D0061007400010001000D000A006D007400
      5300700065006300440061007400610041007200740069006B0065006C004B00
      6F006400010041007200740069006B0065006C004B006F006400010001000D00
      0A006D007400530070006500630044006100740061004B0075006E0064005200
      650066006500720065006E00730001004B0075006E0064005200650066006500
      720065006E007300010001000D000A006D0074004C00610079006F0075007400
      5000610063006B006100670065004C006F0067004C00610079006F0075007400
      4E006F0001005000610063006B006100670065004C006F0067004C0061007900
      6F00750074004E006F00010001000D000A006D0074004C00610079006F007500
      74004C00610079006F007500740001004C00610079006F007500740001000100
      0D000A006D0074004C00610079006F00750074004E006F004F00660043006F00
      700069006500730001004E006F004F00660043006F0070006900650073000100
      01000D000A00730071005F004F006E00650050006B0067005000410043004B00
      4100470045004E004F0001005000410043004B004100470045004E004F000100
      01000D000A00730071005F004F006E00650050006B0067005300550050005000
      5F0043004F0044004500010053005500500050005F0043004F00440045000100
      01000D000A00730071005F004F006E00650050006B00670054006F0074006100
      6C00500043005300010054006F00740061006C00500043005300010001000D00
      0A00730071005F004F006E00650050006B0067004C004F0050004D0001004C00
      4F0050004D00010001000D000A00730071005F004F006E00650050006B006700
      6F0054006800690063006B006E0065007300730001006F005400680069006300
      6B006E00650073007300010001000D000A00730071005F004F006E0065005000
      6B0067006F005700690064007400680001006F00570069006400740068000100
      01000D000A00730071005F004F006E00650050006B0067004B00560001004B00
      5600010001000D000A00730071005F004F006E00650050006B00670053007000
      65006300690065007300530068006F00720074004E0061006D00650001005300
      700065006300690065007300530068006F00720074004E0061006D0065000100
      01000D000A00730071005F004F006E00650050006B0067005500540001005500
      5400010001000D000A00730071005F004F006E00650050006B0067006F004C00
      65006E0067007400680001006F004C0065006E00670074006800010001000D00
      0A00730071005F004F006E00650050006B00670056006F006C0075006D006500
      010056006F006C0075006D006500010001000D000A00730071005F004F006E00
      650050006B006700440061007400650043007200650061007400650064000100
      44006100740065004300720065006100740065006400010001000D000A007300
      740046006F006E00740073005F0055006E00690063006F00640065000D000A00
      540066006B0069006C006E00480061006E0064006C0069006E00670001004D00
      53002000530061006E00730020005300650072006900660001004D0053002000
      530061006E00730020005300650072006900660001005400610068006F006D00
      61000D000A00640078004200610072004D0061006E0061006700650072003100
      01005400610068006F006D006100010001005400610068006F006D0061000D00
      0A00640078004200610072004D0061006E006100670065007200310042006100
      7200310001005400610068006F006D006100010001005400610068006F006D00
      61000D000A00640078004200610072004D0061006E0061006700650072003100
      420061007200330001005400610068006F006D00610001000100540061006800
      6F006D0061000D000A00640078004200610072004D0061006E00610067006500
      72003100420061007200350001005400610068006F006D006100010001005400
      610068006F006D0061000D000A006400780043006F006D0070006F006E006500
      6E0074005000720069006E0074006500720031004C0069006E006B0031000100
      540069006D006500730020004E0065007700200052006F006D0061006E000100
      01005400610068006F006D0061000D000A006400780043006F006D0070006F00
      6E0065006E0074005000720069006E0074006500720031004C0069006E006B00
      32000100540069006D006500730020004E0065007700200052006F006D006100
      6E00010001005400610068006F006D0061000D000A006400780043006F006D00
      70006F006E0065006E0074005000720069006E0074006500720031004C006900
      6E006B0033000100540069006D006500730020004E0065007700200052006F00
      6D0061006E00010001005400610068006F006D0061000D000A00640078004300
      6F006D0070006F006E0065006E0074005000720069006E007400650072003100
      4C0069006E006B0034000100540069006D006500730020004E00650077002000
      52006F006D0061006E00010001005400610068006F006D0061000D000A006400
      780043006F006D0070006F006E0065006E0074005000720069006E0074006500
      720031004C0069006E006B0035000100540069006D006500730020004E006500
      7700200052006F006D0061006E00010001005400610068006F006D0061000D00
      0A0070006D0050006B0067005400610062006C00650001005400610068006F00
      6D006100010001005400610068006F006D0061000D000A006300780053007400
      79006C006500310001005400610068006F006D00610001000100540061006800
      6F006D0061000D000A00630078005300740079006C006500320001004D005300
      2000530061006E00730020005300650072006900660001000100540061006800
      6F006D0061000D000A00630078005300740079006C006500330001004D005300
      2000530061006E00730020005300650072006900660001000100540061006800
      6F006D0061000D000A00630078005300740079006C0065003400010054006100
      68006F006D006100010001005400610068006F006D0061000D000A0063007800
      5300740079006C00650041006B00740069007600650050006B00670001005400
      610068006F006D006100010001005400610068006F006D0061000D000A006300
      78005300740079006C00650049004E0041006B00740069007600650050006B00
      670001004D0053002000530061006E0073002000530065007200690066000100
      01005400610068006F006D0061000D000A00630078005300740079006C006500
      4E006F0072006D0061006C0041006B00740069007600650050006B0067000100
      5400610068006F006D006100010001005400610068006F006D0061000D000A00
      630078005300740079006C006500350001004D006900630072006F0073006F00
      660074002000530061006E007300200053006500720069006600010001005400
      610068006F006D0061000D000A00630078005300740079006C00650036000100
      4D006900630072006F0073006F00660074002000530061006E00730020005300
      6500720069006600010001005400610068006F006D0061000D000A0063007800
      5300740079006C006500370001005400610068006F006D006100010001005400
      610068006F006D0061000D000A00630078005300740079006C00650038000100
      5400610068006F006D006100010001005400610068006F006D0061000D000A00
      630078005300740079006C006500390001004D006900630072006F0073006F00
      660074002000530061006E007300200053006500720069006600010001005400
      610068006F006D0061000D000A00630078005300740079006C00650031003000
      01004D006900630072006F0073006F00660074002000530061006E0073002000
      53006500720069006600010001005400610068006F006D0061000D000A006300
      78005300740079006C0065003100310001004D006900630072006F0073006F00
      660074002000530061006E007300200053006500720069006600010001005400
      610068006F006D0061000D000A00630078005300740079006C00650031003200
      01004D006900630072006F0073006F00660074002000530061006E0073002000
      53006500720069006600010001005400610068006F006D0061000D000A006300
      78005300740079006C0065003100330001004D006900630072006F0073006F00
      660074002000530061006E007300200053006500720069006600010001005400
      610068006F006D0061000D000A00630078005300740079006C00650031003400
      01004D006900630072006F0073006F00660074002000530061006E0073002000
      53006500720069006600010001005400610068006F006D0061000D000A006300
      78005300740079006C0065003100350001004D006900630072006F0073006F00
      660074002000530061006E007300200053006500720069006600010001005400
      610068006F006D0061000D000A00630078005300740079006C00650031003600
      01004D006900630072006F0073006F00660074002000530061006E0073002000
      53006500720069006600010001005400610068006F006D0061000D000A006300
      78005300740079006C0065004200650066006F00720065004B0069006C006E00
      0100560065007200640061006E006100010001005400610068006F006D006100
      0D000A00630078005300740079006C00650049006E004B0069006C006E000100
      560065007200640061006E006100010001005400610068006F006D0061000D00
      0A00630078005300740079006C006500410066007400650072004B0069006C00
      6E000100560065007200640061006E006100010001005400610068006F006D00
      61000D000A00630078005300740079006C006500520065006400010054006100
      68006F006D006100010001005400610068006F006D0061000D000A0063007800
      5300740079006C00650043006F006E00740065006E0074000100540061006800
      6F006D006100010001005400610068006F006D0061000D000A0070006D005000
      6B0067004E006F00730001005400610068006F006D0061000100010054006100
      68006F006D0061000D000A0070006D004B0069006C006E0050006B0067007300
      01005400610068006F006D006100010001005400610068006F006D0061000D00
      0A00730074004D0075006C00740069004C0069006E00650073005F0055006E00
      690063006F00640065000D000A004D0065006D006F0031002E004C0069006E00
      6500730001004D0065006D006F003100010001000D000A007300740053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A004900
      440053005F00300001005300690073007400610020007600610067006E006500
      6E00200069006E006D0061007400610064002000740069006C006C0020006500
      6600740065007200200074006F0072006B00200066006C007900740074006100
      73002000740069006C006C00620061006B0061002000740069006C006C002000
      6900200074006F0072006B0028006F006D002000640065007400200066006900
      6E006E007300200070006C0061007400730020006900200074006F0072006B00
      65006E0029002C00200066006F00720074007300E4007400740061003F000100
      010001000D000A004900440053005F0031003000010045006E00640061007300
      740020007600610067006E00610072002000220049006E002000740069006C00
      6C00200074006F0072006B00220020006B0061006E002000E4006E0064007200
      610073002E000100010001000D000A004900440053005F003100310001005600
      E4006C006A00200065006E0020007600610067006E0020006100740074002000
      E4006E006400720061002E000100010001000D000A004900440053005F003100
      320001004D00610072006B00650072006100640020007600610067006E003A00
      20000100010001000D000A004900440053005F0031003400010041006E007400
      61006C0020007600610067006E006100720020006600F6007200200076006100
      6C006400200074006F0072006B002000730061006B006E006100730001000100
      01000D000A004900440053005F003200010020005600610067006E004E006F00
      20003D0020000100010001000D000A004900440053005F003200350001004900
      6E00670065006E002000E4006E006400720069006E0067000100010001000D00
      0A004900440053005F0032003600010045006E0020007600610067006E002000
      730074006500670061007300200075007400200075007200200074006F007200
      6B0065006E002000740069006C006C0020006C00610067006500720020006500
      6600740065007200200074006F0072006B002C00200066006F00720074007300
      E4007400740061003F000100010001000D000A004900440053005F0033003700
      010049006E002000740069006C006C00200054006F0072006B00010001000100
      0D000A004900440053005F003300380001006900200054006F0072006B000100
      010001000D000A004900440053005F0033003900010045006600740065007200
      200054006F0072006B000100010001000D000A004900440053005F0034000100
      54006F0072006B0065006E002000E40072002000660075006C006C002C002000
      6400650074002000660069006E006E007300200069006E007400650020007000
      6C0061007400730020006600F600720020006D00650072006100200076006100
      67006E00610072002E000100010001000D000A004900440053005F0035000100
      5300690073007400610020007600610067006E0065006E00200069006E006D00
      61007400610064002000740069006C006C00200074006F0072006B0020006600
      6C00790074007400610073002000740069006C006C00620061006B0061002000
      740069006C006C002000220049006E002000740069006C006C00200074006F00
      72006B0022002C00200066006F00720074007300E4007400740061003F000100
      010001000D000A00730074004F00740068006500720053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A006400780042006100
      72004D0061006E006100670065007200310042006100720031002E004F006C00
      64004E0061006D006500010043007500730074006F006D002000310001000100
      0D000A00640078004200610072004D0061006E00610067006500720031004200
      6100720033002E004F006C0064004E0061006D006500010054006F0072006B00
      5300610074007300010001000D000A00640078004200610072004D0061006E00
      6100670065007200310042006100720035002E004F006C0064004E0061006D00
      6500010054006F0072006B0073006100740073003200010001000D000A006400
      780043006F006D0070006F006E0065006E0074005000720069006E0074006500
      720031004C0069006E006B0031002E00440065007300690067006E0065007200
      430061007000740069006F006E00010046006F0072006D006100740020005200
      650070006F0072007400010001000D000A006400780043006F006D0070006F00
      6E0065006E0074005000720069006E0074006500720031004C0069006E006B00
      32002E00440065007300690067006E0065007200430061007000740069006F00
      6E00010046006F0072006D006100740020005200650070006F00720074000100
      01000D000A006400780043006F006D0070006F006E0065006E00740050007200
      69006E0074006500720031004C0069006E006B0033002E004400650073006900
      67006E0065007200430061007000740069006F006E00010046006F0072006D00
      6100740020005200650070006F0072007400010001000D000A00640078004300
      6F006D0070006F006E0065006E0074005000720069006E007400650072003100
      4C0069006E006B0034002E00440065007300690067006E006500720043006100
      7000740069006F006E00010046006F0072006D00610074002000520065007000
      6F0072007400010001000D000A006400780043006F006D0070006F006E006500
      6E0074005000720069006E0074006500720031004C0069006E006B0035002E00
      440065007300690067006E0065007200430061007000740069006F006E000100
      46006F0072006D006100740020005200650070006F0072007400010001000D00
      0A007300740043006F006C006C0065006300740069006F006E0073005F005500
      6E00690063006F00640065000D000A0063007800470072006900640031004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31002E00420061006E00640073005B0031005D002E0043006100700074006900
      6F006E0001005600410047004E004C00C40047004500010001000D000A006C00
      6300500072006F00670072006500730073004B0069006C006E002E0050007200
      6F0070006500720074006900650073002E004C0069007300740043006F006C00
      75006D006E0073005B0030005D002E00430061007000740069006F006E000100
      4B0069006C006E004E0061006D006500010001000D000A006C0063004F005700
      4E00450052002E00500072006F0070006500720074006900650073002E004C00
      69007300740043006F006C0075006D006E0073005B0030005D002E0043006100
      7000740069006F006E00010043006C00690065006E0074004E0061006D006500
      010001000D000A0073007400430068006100720053006500740073005F005500
      6E00690063006F00640065000D000A00540066006B0069006C006E0048006100
      6E0064006C0069006E0067000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A00640078004200610072004D0061006E00
      610067006500720031000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000D000A00640078004200610072004D0061006E006100
      670065007200310042006100720031000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A00640078004200610072004D00
      61006E0061006700650072003100420061007200330001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A00640078004200
      610072004D0061006E0061006700650072003100420061007200350001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F0043004800410052005300450054000D000A00
      6400780043006F006D0070006F006E0065006E0074005000720069006E007400
      6500720031004C0069006E006B0031000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A006400780043006F006D007000
      6F006E0065006E0074005000720069006E0074006500720031004C0069006E00
      6B0032000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000D000A006400780043006F006D0070006F006E0065006E0074005000
      720069006E0074006500720031004C0069006E006B0033000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A0064007800
      43006F006D0070006F006E0065006E0074005000720069006E00740065007200
      31004C0069006E006B0034000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A006400780043006F006D0070006F006E00
      65006E0074005000720069006E0074006500720031004C0069006E006B003500
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A0070006D0050006B0067005400610062006C0065000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A0063007800
      5300740079006C00650031000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A00630078005300740079006C0065003200
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A00630078005300740079006C0065003300010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A006300780053007400
      79006C00650034000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A00630078005300740079006C00650041006B007400
      69007600650050006B0067000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A00630078005300740079006C0065004900
      4E0041006B00740069007600650050006B006700010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A006300780053007400
      79006C0065004E006F0072006D0061006C0041006B0074006900760065005000
      6B0067000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000D000A00630078005300740079006C00650035000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A0063007800
      5300740079006C00650036000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A00630078005300740079006C0065003700
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A00630078005300740079006C0065003800010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A006300780053007400
      79006C00650039000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A00630078005300740079006C006500310030000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A00630078005300740079006C00650031003100010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A006300780053007400
      79006C006500310032000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000D000A00630078005300740079006C00650031003300
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A00630078005300740079006C0065003100340001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A00630078005300
      740079006C006500310035000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A00630078005300740079006C0065003100
      36000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000D000A00630078005300740079006C0065004200650066006F0072006500
      4B0069006C006E000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A00630078005300740079006C00650049006E004B00
      69006C006E000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A00630078005300740079006C0065004100660074006500
      72004B0069006C006E000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000D000A00630078005300740079006C00650052006500
      64000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000D000A00630078005300740079006C00650043006F006E00740065006E00
      74000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000D000A0070006D0050006B0067004E006F00730001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A0070006D004B00
      69006C006E0050006B00670073000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000D000A00}
  end
end
