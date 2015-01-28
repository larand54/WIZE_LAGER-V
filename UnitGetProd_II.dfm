object frmGetProd_II: TfrmGetProd_II
  Left = 252
  Top = 138
  ActiveControl = meAT
  Caption = 'PRODUKTLISTA'
  ClientHeight = 635
  ClientWidth = 1051
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 591
    Width = 1051
    Height = 44
    Align = alBottom
    TabOrder = 0
    object bbOK: TBitBtn
      Left = 384
      Top = 5
      Width = 97
      Height = 33
      Caption = '&OK'
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = bbOKClick
    end
    object bbCancel: TBitBtn
      Left = 504
      Top = 5
      Width = 97
      Height = 33
      Caption = '&Cancel'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1051
    Height = 89
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 44
      Width = 17
      Height = 13
      Caption = 'AT:'
    end
    object Label2: TLabel
      Left = 142
      Top = 44
      Width = 17
      Height = 13
      Caption = 'AB:'
    end
    object Label3: TLabel
      Left = 229
      Top = 44
      Width = 17
      Height = 13
      Caption = 'KV:'
    end
    object Label4: TLabel
      Left = 400
      Top = 44
      Width = 18
      Height = 13
      Caption = 'UT:'
    end
    object Label5: TLabel
      Left = 24
      Top = 70
      Width = 17
      Height = 13
      Caption = 'TS:'
    end
    object Label6: TLabel
      Left = 228
      Top = 74
      Width = 22
      Height = 13
      Caption = 'IMP.'
    end
    object Label7: TLabel
      Left = 24
      Top = 21
      Width = 44
      Height = 13
      Caption = 'Varuslag:'
    end
    object bbSok: TBitBtn
      Left = 648
      Top = 8
      Width = 121
      Height = 33
      Action = acSearch
      Caption = '&S'#246'k'
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000320B0000320B000000010000000100005A5A5A005263
        6B00846B6B009C6B6B00636B7300A5737300A57B73007B7B7B00AD847B00AD8C
        8400B58C8400EFBD8400BD8C8C00C6948C00BD9C8C00C69C8C00F7BD8C00F7C6
        8C00738494007B84940084849400C6949400C69C9400CE9C9400D69C9400BDA5
        9400CEA59400CEAD9400F7C69400F7CE94009C9C9C00BD9C9C00CE9C9C00D69C
        9C00CEA59C00F7CE9C00F7D69C003973A500C6A5A500ADADA500D6ADA500D6B5
        A500D6BDA500F7D6A500C6ADAD00D6B5AD00D6C6AD00DEC6AD00E7C6AD00E7CE
        FD00F7D6AD00F7DEAD00FFDEAD001873B5002173B5006394B500E7CEB500EFD6
        B500EFDEB500F7DEB500FFE7B5001873BD00E7D6BD00F7DEBD00F7E7BD00FFE7
        BD00FFEFBD00FFF7BD00EFDEC600EFE7C600FFEFC600FFF7C600FFF7CE003184
        D600FFFFD600C6CEDE00F7EFDE00FFEFDE00FFFFDE00EFEFE700FFF7E700FFFF
        E700218CEF00F7F7EF00FFFFEF00FFFFF700FF00FF0031A5FF0039A5FF0042A5
        FF004AB5FF0052BDFF005ABDFF007BC6FF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00560004165656
        5656565656565656565656565656565656562725361217565656565656565656
        5656565656565656565637585236131756565656565656565656565656565656
        56565A5C59523613175656565656565656565656565656565656575B5C595236
        13175656565656565656565656565656565656575B5C59523614175656565656
        565656565656565656565656575B5C5952361417565656565656565656565656
        5656565656575B5C59523614565656565656565656565656565656565656575B
        5C5849015656030A222928201556565656565656565656575B5D4B1E02093E48
        4A4E4A4A44225656565656565656565656564F2C1A484A4E4A4A4A4E4E4E2905
        565656565656565656562C1A4241484A4A4A4E4E515E5E265656565656565656
        56560C3A3C32484A4A4E5154555E5E4C065656565656565656562942232B484A
        4A4E54555E55544E1956565656565656561531421123464A4A4E545555544E4E
        2E155656565656565615393C0B113B4A4A4E515454514E4E3E0E565656565656
        56153942100B23464A4E4E4E4E4E4A4E3E0E56565656565656153142230B1C2B
        464A4E4A4A4A4A4E2E1556565656565656562842413323232B40484A4A4A4A4A
        0E5656565656565656560C3A4E544C231D1C324040464A440556565656565656
        5656560F505E5E3F1C0B101C3242460E5656565656565656565656561F4F5448
        3C33333C4240165656565656565656565656565656062A404242424030155656
        565656565656565656565656565656080F222216565656565656}
      TabOrder = 7
    end
    object meAT: TcxTextEdit
      Left = 74
      Top = 40
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 1
      Width = 49
    end
    object meAB: TcxTextEdit
      Left = 165
      Top = 40
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 2
      Width = 49
    end
    object bbProdReg: TBitBtn
      Left = 648
      Top = 43
      Width = 121
      Height = 33
      Action = acProductRegister
      Caption = '&Skapa produkt'
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        0800000000004002000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFBFBFB07FBFB07FBFB07FBFB07FBFBFDFDFDFDFDFDFDFDFD0707070707
        070707070707070707073FFDFDFDFDFDFDFDFDFBFBFB07FBFB07FBFB07FBFB07
        FBFB3F3FFDFDFDFDFDFDFD0707070707070707070707070707073F3F3FFDFDFD
        FDFDFDFBFBFB07FBFB07FBFB07FBFB07FBFB073F3F3FFDFDFDFDFD0707070707
        070707070707070707073F073F3F3FFDFDFDFDFBFBFB07FBFB07FBFB07FBFB07
        FBFB3F3F073F3F3FFDFDFD0707070707070707070707070707073F3F3F073F3F
        3FFDFDFBFBFB07FBFB07FBFB07FBFB07FBFB073F3F3F073F3FFDFD0707070707
        070707070707070707073F073F3F3F073FFDFDFBFBFB07FBFB07FBFB07FBFB07
        FBFB3F3F073F3F3F07FDFD3F3F3F073F3F073F3F073F3F073F3F3F3F3F073F3F
        3FFDFDFDFBFB07FBFB07FBFB07FBFB07FBFB073F3F3F073F3FFDFDFDFDFBFB07
        FBFB07FBFB07FBFB07FBFB073F3F3F073FFDFDFDFDFDFBFB07FBFB07FBFB07FB
        FB07FBFB073F3F3F07FDFDFDFDFDFDFBFB07FBFB07FBFB07FBFB07FBFB073F3F
        3FFDFDFDFDFDFDFDFBFB07FBFB07FBFB07FBFB07FBFB073F3FFDFDFDFDFDFDFD
        FDFBFB07FBFB07FBFB07FBFB07FBFB073FFDFDFDFDFDFDFDFDFDFBFB07FBFB07
        FBFB07FBFB07FBFB07FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
      TabOrder = 9
      Visible = False
    end
    object lcGrade: TcxDBLookupComboBox
      Left = 252
      Top = 39
      DataBinding.DataField = 'GradeNo'
      DataBinding.DataSource = dsProduct
      Properties.ClearKey = 46
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 12
      Properties.DropDownWidth = 220
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'GradeNo'
      Properties.ListColumns = <
        item
          FieldName = 'GradeCodeName'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_grade
      Properties.MaxLength = 0
      Style.ButtonTransparency = ebtHideInactive
      TabOrder = 3
      Width = 141
    end
    object lcSpecies: TcxDBLookupComboBox
      Left = 74
      Top = 64
      DataBinding.DataField = 'SpeciesNo'
      DataBinding.DataSource = dsProduct
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 12
      Properties.DropDownWidth = 220
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'SpeciesNo'
      Properties.ListColumns = <
        item
          FieldName = 'SpeciesCodeName'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_Species
      Properties.MaxLength = 0
      Style.ButtonTransparency = ebtHideInactive
      TabOrder = 5
      Width = 138
    end
    object lcSurfacing: TcxDBLookupComboBox
      Left = 424
      Top = 40
      DataBinding.DataField = 'SurfacingNo'
      DataBinding.DataSource = dsProduct
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 12
      Properties.DropDownWidth = 220
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'SurfacingNo'
      Properties.ListColumns = <
        item
          FieldName = 'SurfacingCodeName'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_Surfacing
      Properties.MaxLength = 0
      Style.ButtonTransparency = ebtHideInactive
      TabOrder = 4
      Width = 206
    end
    object lcImpreg: TcxDBLookupComboBox
      Left = 252
      Top = 66
      DataBinding.DataField = 'ProductCategoryNo'
      DataBinding.DataSource = dsProduct
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 12
      Properties.DropDownWidth = 220
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ProductCategoryNo'
      Properties.ListColumns = <
        item
          FieldName = 'ImpCodeName'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_ProdCatg
      Properties.MaxLength = 0
      Style.ButtonTransparency = ebtHideInactive
      TabOrder = 6
      Width = 141
    end
    object bbClearFilter: TBitBtn
      Left = 776
      Top = 8
      Width = 121
      Height = 33
      Action = acClearFilter
      Caption = '&Rensa Filter'
      TabOrder = 8
    end
    object bbSkapaProdukt: TBitBtn
      Left = 776
      Top = 43
      Width = 121
      Height = 33
      Action = acCreateProduct
      Caption = 'Skapa produkt'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 10
      Visible = False
    end
    object icVaruslag: TcxDBImageComboBox
      Left = 74
      Top = 13
      DataBinding.DataField = 'VaruSlag'
      DataBinding.DataSource = dsProduct
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = 'Tr'#228'varor'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Stolp'
          Value = 1
        end
        item
          Description = 'Pall'
          Value = 2
        end
        item
          Description = 'Ram'
          Value = 3
        end
        item
          Description = 'R'#229'spontluckor'
          Value = 4
        end
        item
          Description = 'Takstolar'
          Value = 5
        end
        item
          Description = 'Balk f'#246'r flexorenr'#246'r'
          Value = 6
        end>
      Properties.OnChange = icVaruSlagPropertiesChange
      TabOrder = 0
      Width = 253
    end
  end
  object PageControl: TcxPageControl
    Left = 0
    Top = 89
    Width = 1051
    Height = 343
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = tsProduktLista
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.Kind = lfFlat
    ClientRectBottom = 339
    ClientRectLeft = 4
    ClientRectRight = 1047
    ClientRectTop = 24
    object tsProduktLista: TcxTabSheet
      Caption = 'Produkter'
      ImageIndex = 0
      object grdProdList: TcxGrid
        Left = 0
        Top = 0
        Width = 1043
        Height = 315
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        object grdProdListDBTableView1: TcxGridDBTableView
          PopupMenu = pmProduktList
          OnDblClick = grdProdListDBTableView1DblClick
          OnKeyDown = grdProdListDBTableView1KeyDown
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_ProdList
          DataController.KeyFieldNames = 'ProductNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          object grdProdListDBTableView1ProductNo: TcxGridDBColumn
            DataBinding.FieldName = 'ProductNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdProdListDBTableView1ProductGroupNo: TcxGridDBColumn
            DataBinding.FieldName = 'ProductGroupNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdProdListDBTableView1GradeName: TcxGridDBColumn
            DataBinding.FieldName = 'GradeName'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdProdListDBTableView1SpeciesName: TcxGridDBColumn
            DataBinding.FieldName = 'SpeciesName'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdProdListDBTableView1SurfacingName: TcxGridDBColumn
            DataBinding.FieldName = 'SurfacingName'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdProdListDBTableView1ProductCategoryName: TcxGridDBColumn
            DataBinding.FieldName = 'ProductCategoryName'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdProdListDBTableView1ActualThicknessMM: TcxGridDBColumn
            DataBinding.FieldName = 'ActualThicknessMM'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdProdListDBTableView1ActualWidthMM: TcxGridDBColumn
            DataBinding.FieldName = 'ActualWidthMM'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdProdListDBTableView1NominalThicknessMM: TcxGridDBColumn
            DataBinding.FieldName = 'NominalThicknessMM'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdProdListDBTableView1NominalWidthMM: TcxGridDBColumn
            DataBinding.FieldName = 'NominalWidthMM'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdProdListDBTableView1ProductDisplayName: TcxGridDBColumn
            DataBinding.FieldName = 'ProductDisplayName'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdProdListDBTableView1GradeNo: TcxGridDBColumn
            DataBinding.FieldName = 'GradeNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdProdListDBTableView1SpeciesNo: TcxGridDBColumn
            DataBinding.FieldName = 'SpeciesNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdProdListDBTableView1ProductCategoryNo: TcxGridDBColumn
            DataBinding.FieldName = 'ProductCategoryNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdProdListDBTableView1SurfacingNo: TcxGridDBColumn
            DataBinding.FieldName = 'SurfacingNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdProdListDBTableView1NominalThicknessINCH: TcxGridDBColumn
            DataBinding.FieldName = 'NominalThicknessINCH'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdProdListDBTableView1NominalWidthINCH: TcxGridDBColumn
            DataBinding.FieldName = 'NominalWidthINCH'
            PropertiesClassName = 'TcxLabelProperties'
          end
        end
        object grdProdListLevel1: TcxGridLevel
          GridView = grdProdListDBTableView1
        end
      end
    end
    object tsKundProdukter: TcxTabSheet
      Caption = 'Kundspecifika produkter'
      ImageIndex = 2
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1043
        Height = 315
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 1043
          Height = 18
          Align = alTop
          BevelOuter = bvNone
          Caption = 'Kund produkter'
          Color = clMaroon
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object grdClientProd: TcxGrid
          Left = 0
          Top = 18
          Width = 1043
          Height = 297
          Align = alClient
          TabOrder = 1
          LookAndFeel.Kind = lfFlat
          object grdClientProdDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dmProduct.ds_CliProdList
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            Preview.Column = grdClientProdDBTableView1INTPRODUKT
            Preview.Visible = True
            object grdClientProdDBTableView1PRODUKT: TcxGridDBColumn
              DataBinding.FieldName = 'PRODUKT'
              Width = 314
            end
            object grdClientProdDBTableView1LNGD: TcxGridDBColumn
              DataBinding.FieldName = 'L'#196'NGD'
              Width = 198
            end
            object grdClientProdDBTableView1PKTKOD: TcxGridDBColumn
              DataBinding.FieldName = 'PKTKOD'
            end
            object grdClientProdDBTableView1INTPRODUKT: TcxGridDBColumn
              DataBinding.FieldName = 'INTPRODUKT'
            end
            object grdClientProdDBTableView1ClientNo: TcxGridDBColumn
              DataBinding.FieldName = 'ClientNo'
              Visible = False
            end
            object grdClientProdDBTableView1ProductNo: TcxGridDBColumn
              DataBinding.FieldName = 'ProductNo'
              Visible = False
            end
            object grdClientProdDBTableView1ProductGroupNo: TcxGridDBColumn
              DataBinding.FieldName = 'ProductGroupNo'
              Visible = False
            end
            object grdClientProdDBTableView1ProductLengthNo: TcxGridDBColumn
              DataBinding.FieldName = 'ProductLengthNo'
              Visible = False
            end
            object grdClientProdDBTableView1CustomThickness: TcxGridDBColumn
              DataBinding.FieldName = 'CustomThickness'
              Visible = False
            end
            object grdClientProdDBTableView1CustomWidth: TcxGridDBColumn
              DataBinding.FieldName = 'CustomWidth'
              Visible = False
            end
            object grdClientProdDBTableView1CustomLength: TcxGridDBColumn
              DataBinding.FieldName = 'CustomLength'
              Visible = False
            end
            object grdClientProdDBTableView1PcsPerPkg: TcxGridDBColumn
              DataBinding.FieldName = 'PcsPerPkg'
              Visible = False
            end
            object grdClientProdDBTableView1PriceUnitNo: TcxGridDBColumn
              DataBinding.FieldName = 'PriceUnitNo'
              Visible = False
            end
            object grdClientProdDBTableView1VolumeUnitNo: TcxGridDBColumn
              DataBinding.FieldName = 'VolumeUnitNo'
              Visible = False
            end
            object grdClientProdDBTableView1PackageTypeNo: TcxGridDBColumn
              DataBinding.FieldName = 'PackageTypeNo'
              Visible = False
            end
            object grdClientProdDBTableView1ProdInstruNo: TcxGridDBColumn
              DataBinding.FieldName = 'ProdInstruNo'
              Visible = False
            end
          end
          object grdClientProdLevel1: TcxGridLevel
            GridView = grdClientProdDBTableView1
          end
        end
      end
    end
    object tsAnpassadLista: TcxTabSheet
      Caption = 'Anpassade produkter'
      ImageIndex = 1
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdCustDimProd: TcxGrid
        Left = 0
        Top = 0
        Width = 1043
        Height = 315
        Align = alClient
        TabOrder = 0
        object grdCustDimProdDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dmProduct.ds_ProdListCust
          DataController.KeyFieldNames = 'ProductNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          object grdCustDimProdDBTableView1NT: TcxGridDBColumn
            Caption = 'Special NT'
            DataBinding.FieldName = 'NT'
            Width = 77
          end
          object grdCustDimProdDBTableView1NW: TcxGridDBColumn
            Caption = 'Special NB'
            DataBinding.FieldName = 'NW'
            Width = 81
          end
          object grdCustDimProdDBTableView1GradeName: TcxGridDBColumn
            Caption = 'KV'
            DataBinding.FieldName = 'GradeName'
            Width = 142
          end
          object grdCustDimProdDBTableView1SpeciesName: TcxGridDBColumn
            Caption = 'TS'
            DataBinding.FieldName = 'SpeciesName'
            Width = 106
          end
          object grdCustDimProdDBTableView1SurfacingName: TcxGridDBColumn
            Caption = 'UT'
            DataBinding.FieldName = 'SurfacingName'
          end
          object grdCustDimProdDBTableView1ProductCategoryName: TcxGridDBColumn
            Caption = 'IMP'
            DataBinding.FieldName = 'ProductCategoryName'
            Width = 96
          end
          object grdCustDimProdDBTableView1ActualThicknessMM: TcxGridDBColumn
            Caption = 'AT'
            DataBinding.FieldName = 'ActualThicknessMM'
          end
          object grdCustDimProdDBTableView1ActualWidthMM: TcxGridDBColumn
            Caption = 'AB'
            DataBinding.FieldName = 'ActualWidthMM'
          end
          object grdCustDimProdDBTableView1NominalThicknessMM: TcxGridDBColumn
            Caption = 'INT.NT'
            DataBinding.FieldName = 'NominalThicknessMM'
          end
          object grdCustDimProdDBTableView1NominalWidthMM: TcxGridDBColumn
            Caption = 'INT.NB'
            DataBinding.FieldName = 'NominalWidthMM'
          end
          object grdCustDimProdDBTableView1ProductDisplayName: TcxGridDBColumn
            Caption = 'PRODUKT'
            DataBinding.FieldName = 'ProductDisplayName'
            Width = 235
          end
          object grdCustDimProdDBTableView1NominalThicknessINCH: TcxGridDBColumn
            Caption = 'TT'
            DataBinding.FieldName = 'NominalThicknessINCH'
          end
          object grdCustDimProdDBTableView1NominalWidthINCH: TcxGridDBColumn
            Caption = 'TB'
            DataBinding.FieldName = 'NominalWidthINCH'
          end
          object grdCustDimProdDBTableView1GradeNo: TcxGridDBColumn
            DataBinding.FieldName = 'GradeNo'
            Visible = False
          end
          object grdCustDimProdDBTableView1SpeciesNo: TcxGridDBColumn
            DataBinding.FieldName = 'SpeciesNo'
            Visible = False
          end
          object grdCustDimProdDBTableView1ProductCategoryNo: TcxGridDBColumn
            DataBinding.FieldName = 'ProductCategoryNo'
            Visible = False
          end
          object grdCustDimProdDBTableView1SurfacingNo: TcxGridDBColumn
            DataBinding.FieldName = 'SurfacingNo'
            Visible = False
          end
          object grdCustDimProdDBTableView1ProductGroupNo: TcxGridDBColumn
            DataBinding.FieldName = 'ProductGroupNo'
            Visible = False
          end
          object grdCustDimProdDBTableView1ProductNo: TcxGridDBColumn
            DataBinding.FieldName = 'ProductNo'
            Visible = False
          end
        end
        object grdCustDimProdLevel1: TcxGridLevel
          GridView = grdCustDimProdDBTableView1
        end
      end
    end
  end
  object PanelSelectedProducts: TPanel
    Left = 0
    Top = 440
    Width = 1051
    Height = 151
    Align = alBottom
    TabOrder = 3
    Visible = False
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 1049
      Height = 28
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Valda produkter'
      TabOrder = 0
      object cxButton1: TcxButton
        Left = 8
        Top = 2
        Width = 89
        Height = 24
        Action = acDeleteSelectedProduct
        OptionsImage.Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000220B0000220B000000010000000000000031DE000031
          E7000031EF000031F700FF00FF000031FF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00040404040404
          0404040404040404000004000004040404040404040404000004040000000404
          0404040404040000040404000000000404040404040000040404040402000000
          0404040400000404040404040404000000040000000404040404040404040400
          0101010004040404040404040404040401010204040404040404040404040400
          0201020304040404040404040404030201040403030404040404040404050203
          0404040405030404040404040303050404040404040303040404040303030404
          0404040404040403040403030304040404040404040404040404030304040404
          0404040404040404040404040404040404040404040404040404}
        TabOrder = 0
      end
    end
    object grdSelectedProducts: TcxGrid
      Left = 1
      Top = 29
      Width = 1049
      Height = 121
      Align = alClient
      TabOrder = 1
      object grdSelectedProductsDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsMarkedProd
        DataController.KeyFieldNames = 'ProductNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object grdSelectedProductsDBTableView1ProductNo: TcxGridDBColumn
          DataBinding.FieldName = 'ProductNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 68
        end
        object grdSelectedProductsDBTableView1Produkt: TcxGridDBColumn
          DataBinding.FieldName = 'Produkt'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 345
        end
        object grdSelectedProductsDBTableView1ProductLengthNo: TcxGridDBColumn
          DataBinding.FieldName = 'ProductLengthNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 106
        end
        object grdSelectedProductsDBTableView1Tab: TcxGridDBColumn
          DataBinding.FieldName = 'Tab'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 26
        end
        object grdSelectedProductsDBTableView1ProductGroupNo: TcxGridDBColumn
          DataBinding.FieldName = 'ProductGroupNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 81
        end
        object grdSelectedProductsDBTableView1NT: TcxGridDBColumn
          DataBinding.FieldName = 'NT'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 27
        end
        object grdSelectedProductsDBTableView1NB: TcxGridDBColumn
          DataBinding.FieldName = 'NB'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 29
        end
        object grdSelectedProductsDBTableView1PRODUKTDESC: TcxGridDBColumn
          DataBinding.FieldName = 'PRODUKTDESC'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 305
        end
      end
      object grdSelectedProductsLevel1: TcxGridLevel
        GridView = grdSelectedProductsDBTableView1
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 432
    Width = 1051
    Height = 8
    HotZoneClassName = 'TcxMediaPlayer8Style'
    AlignSplitter = salBottom
    InvertDirection = True
    Control = PageControl
    Color = clMaroon
    ParentColor = False
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfFlat
    Left = 57
    Top = 228
  end
  object dsMarkedProd: TDataSource
    DataSet = dmsSystem.mtMarkedProd
    Left = 217
    Top = 342
  end
  object ActionList1: TActionList
    Left = 121
    Top = 174
    object acDeleteSelectedProduct: TAction
      Caption = 'Ta bort rad'
      OnExecute = acDeleteSelectedProductExecute
      OnUpdate = acDeleteSelectedProductUpdate
    end
    object acSearch: TAction
      Caption = '&S'#246'k'
      OnExecute = acSearchExecute
    end
    object acProductRegister: TAction
      Caption = '&Skapa produkt'
      OnExecute = acProductRegisterExecute
      OnUpdate = acProductRegisterUpdate
    end
    object acOK: TAction
      Caption = '&OK'
      OnUpdate = acOKUpdate
    end
    object acClearFilter: TAction
      Caption = '&Rensa Filter'
      OnExecute = acClearFilterExecute
    end
    object acCreateProduct: TAction
      Caption = 'Skapa produkt'
      OnExecute = acCreateProductExecute
      OnUpdate = acCreateProductUpdate
    end
    object acEditProdukt: TAction
      Caption = #196'ndra produkt'
      OnExecute = acEditProduktExecute
      OnUpdate = acEditProduktUpdate
    end
  end
  object mtProduct: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'ProductNo'
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
        Name = 'TotalPcs'
        DataType = ftInteger
      end
      item
        Name = 'ProductGroupNo'
        DataType = ftInteger
      end
      item
        Name = 'AT'
        DataType = ftFloat
      end
      item
        Name = 'AB'
        DataType = ftFloat
      end
      item
        Name = 'SpeciesNo'
        DataType = ftInteger
      end
      item
        Name = 'SurfacingNo'
        DataType = ftInteger
      end
      item
        Name = 'GradeNo'
        DataType = ftInteger
      end
      item
        Name = 'NT'
        DataType = ftFloat
      end
      item
        Name = 'NB'
        DataType = ftFloat
      end
      item
        Name = 'ProductCategoryNo'
        DataType = ftInteger
      end
      item
        Name = 'MarketRegionNo'
        DataType = ftInteger
      end
      item
        Name = 'TagNo'
        DataType = ftInteger
      end
      item
        Name = 'Active'
        DataType = ftInteger
      end
      item
        Name = 'SizeFormat'
        DataType = ftInteger
      end
      item
        Name = 'LengthFormat'
        DataType = ftInteger
      end
      item
        Name = 'VolumeFormat'
        DataType = ftInteger
      end
      item
        Name = 'LanguageCode'
        DataType = ftInteger
      end
      item
        Name = 'VaruSlag'
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
    Left = 139
    Top = 296
    object mtProductProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtProductGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
    end
    object mtProductBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
    end
    object mtProductTotalPcs: TIntegerField
      FieldName = 'TotalPcs'
    end
    object mtProductProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object mtProductAT: TFloatField
      FieldName = 'AT'
    end
    object mtProductAB: TFloatField
      FieldName = 'AB'
    end
    object mtProductSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
    end
    object mtProductSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object mtProductGradeNo: TIntegerField
      FieldName = 'GradeNo'
    end
    object mtProductNT: TFloatField
      FieldName = 'NT'
    end
    object mtProductNB: TFloatField
      FieldName = 'NB'
    end
    object mtProductProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
    end
    object mtProductMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
    end
    object mtProductTagNo: TIntegerField
      FieldName = 'TagNo'
    end
    object mtProductMarknadsRegion: TStringField
      FieldKind = fkLookup
      FieldName = 'MarknadsRegion'
      LookupDataSet = dmsContact.cds_Market
      LookupKeyFields = 'MarketRegionNo'
      LookupResultField = 'MarketRegionName'
      KeyFields = 'MarketRegionNo'
      Size = 10
      Lookup = True
    end
    object mtProductActive: TIntegerField
      FieldName = 'Active'
    end
    object mtProductSizeFormat: TIntegerField
      FieldName = 'SizeFormat'
    end
    object mtProductLengthFormat: TIntegerField
      FieldName = 'LengthFormat'
    end
    object mtProductVolumeFormat: TIntegerField
      FieldName = 'VolumeFormat'
    end
    object mtProductLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
    end
    object mtProductVaruSlag: TIntegerField
      FieldName = 'VaruSlag'
    end
  end
  object dsProduct: TDataSource
    DataSet = mtProduct
    Left = 136
    Top = 340
  end
  object PopupMenu1: TPopupMenu
    AutoPopup = False
    Left = 201
    Top = 230
    object GtillATfltet1: TMenuItem
      Caption = 'G'#229' till AT f'#228'ltet'
      ShortCut = 32833
      OnClick = GtillATfltet1Click
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdProdList
    PopupMenus = <>
    Left = 305
    Top = 174
  end
  object pmProduktList: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end>
    UseOwnFont = False
    Left = 57
    Top = 174
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 201
    Top = 174
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton1: TdxBarButton
      Action = acEditProdukt
      Category = 0
    end
  end
  object ds_Species: TDataSource
    DataSet = cds_Species
    Left = 486
    Top = 376
  end
  object ds_grade: TDataSource
    DataSet = cds_Grade
    Left = 542
    Top = 376
  end
  object ds_Surfacing: TDataSource
    DataSet = cds_Surfacing
    Left = 606
    Top = 376
  end
  object ds_ProdCatg: TDataSource
    DataSet = cds_ProdCatg
    Left = 686
    Top = 376
  end
  object ds_ProdList: TDataSource
    DataSet = cds_ProdList
    Left = 414
    Top = 379
  end
  object cds_ProdList: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT pg.SequenceNo, pd.ProductNo, pg.ProductGroupNo, gd.GradeN' +
        'ame,'
      'sc.SpeciesName, sf.SurfacingName,'
      
        'pg.ActualThicknessMM, pg.ActualWidthMM, pg.NominalThicknessMM, p' +
        'g.NominalWidthMM,'
      
        'pd.ProductDisplayName, pd.GradeNo, pg.SpeciesNo, pg.ProductCateg' +
        'oryNo,'
      'pg.SurfacingNo, pg.NominalThicknessINCH, pg.NominalWidthINCH,'
      'Case WHEN pc2.ImpregInProdName = 1 THEN pc.ProductCategoryName'
      'ELSE'
      #39#39
      'END AS ProductCategoryName,'
      ''
      
        'pd.Act AS ProductAct, pg.Act AS ProductGroupAct, sc.Act AS Speci' +
        'esAct,'
      'sf.Act AS SurfacingAct, pc.Act AS ImpAct, gd.Act AS GradeAct'
      ''
      'FROM dbo.Product pd'
      
        'INNER JOIN      dbo.ProductGroup pg ON pd.ProductGroupNo = pg.Pr' +
        'oductGroupNo'
      'INNER JOIN      dbo.Grade gd ON pd.GradeNo = gd.GradeNo'
      'AND gd.LanguageCode = :LanguageCode'
      
        'INNER JOIN      dbo.ProductCategory pc ON       pg.ProductCatego' +
        'ryNo = pc.ProductCategoryNo'
      'AND pc.LanguageCode = :LanguageCode'
      'INNER JOIN      dbo.Species sc ON pg.SpeciesNo = sc.SpeciesNo'
      'AND sc.LanguageCode = :LanguageCode'
      
        'INNER JOIN      dbo.Surfacing sf ON pg.SurfacingNo = sf.Surfacin' +
        'gNo'
      'AND sf.LanguageCode = :LanguageCode'
      
        'INNER JOIN      dbo.ProductCategory pc2 ON       pg.ProductCateg' +
        'oryNo = pc2.ProductCategoryNo'
      'AND pc2.LanguageCode = 1'
      ''
      'WHERE'
      '((pd.ProductNo = :ProductNo) OR (0 = :ProductNo))'
      ''
      '')
    Left = 416
    Top = 176
    ParamData = <
      item
        Name = 'LANGUAGECODE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ProdListSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_ProdListProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProdListProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      Required = True
    end
    object cds_ProdListGradeName: TStringField
      DisplayLabel = 'KV'
      FieldName = 'GradeName'
      Origin = 'GradeName'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_ProdListSpeciesName: TStringField
      DisplayLabel = 'TS'
      FieldName = 'SpeciesName'
      Origin = 'SpeciesName'
      Required = True
      Size = 30
    end
    object cds_ProdListSurfacingName: TStringField
      DisplayLabel = 'UT'
      FieldName = 'SurfacingName'
      Origin = 'SurfacingName'
      Required = True
      Size = 30
    end
    object cds_ProdListActualThicknessMM: TFloatField
      DisplayLabel = 'AT'
      FieldName = 'ActualThicknessMM'
      Origin = 'ActualThicknessMM'
    end
    object cds_ProdListActualWidthMM: TFloatField
      DisplayLabel = 'AB'
      FieldName = 'ActualWidthMM'
      Origin = 'ActualWidthMM'
    end
    object cds_ProdListNominalThicknessMM: TFloatField
      DisplayLabel = 'NT'
      FieldName = 'NominalThicknessMM'
      Origin = 'NominalThicknessMM'
    end
    object cds_ProdListNominalWidthMM: TFloatField
      DisplayLabel = 'NB'
      FieldName = 'NominalWidthMM'
      Origin = 'NominalWidthMM'
    end
    object cds_ProdListProductDisplayName: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 150
    end
    object cds_ProdListGradeNo: TIntegerField
      FieldName = 'GradeNo'
      Origin = 'GradeNo'
      Required = True
    end
    object cds_ProdListSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
    end
    object cds_ProdListProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
      Origin = 'ProductCategoryNo'
    end
    object cds_ProdListSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
    object cds_ProdListNominalThicknessINCH: TStringField
      DisplayLabel = 'TT'
      FieldName = 'NominalThicknessINCH'
      Origin = 'NominalThicknessINCH'
    end
    object cds_ProdListNominalWidthINCH: TStringField
      DisplayLabel = 'TB'
      FieldName = 'NominalWidthINCH'
      Origin = 'NominalWidthINCH'
    end
    object cds_ProdListProductCategoryName: TStringField
      DisplayLabel = 'IMP'
      FieldName = 'ProductCategoryName'
      Origin = 'ProductCategoryName'
      ReadOnly = True
      Size = 40
    end
    object cds_ProdListProductAct: TIntegerField
      FieldName = 'ProductAct'
      Origin = 'ProductAct'
    end
    object cds_ProdListProductGroupAct: TIntegerField
      FieldName = 'ProductGroupAct'
      Origin = 'ProductGroupAct'
    end
    object cds_ProdListSpeciesAct: TIntegerField
      FieldName = 'SpeciesAct'
      Origin = 'SpeciesAct'
    end
    object cds_ProdListSurfacingAct: TIntegerField
      FieldName = 'SurfacingAct'
      Origin = 'SurfacingAct'
    end
    object cds_ProdListImpAct: TIntegerField
      FieldName = 'ImpAct'
      Origin = 'ImpAct'
    end
    object cds_ProdListGradeAct: TIntegerField
      FieldName = 'GradeAct'
      Origin = 'GradeAct'
    end
  end
  object cds_Species: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select S.*,'
      
        'IsNull(S.speciescode,'#39#39') + '#39' - '#39' + IsNull(S.speciesName,'#39#39') AS S' +
        'peciesCodeName'
      ''
      'FROM dbo.Species S'
      'WHERE S.LanguageCode = 1'
      'AND S.Act = 1'
      'Order By S.speciescode, S.speciesName'
      '')
    Left = 496
    Top = 176
    object cds_SpeciesSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SpeciesSpeciesName: TStringField
      FieldName = 'SpeciesName'
      Origin = 'SpeciesName'
      Required = True
      Size = 30
    end
    object cds_SpeciesSpeciesCodeName: TStringField
      FieldName = 'SpeciesCodeName'
      Origin = 'SpeciesCodeName'
      ReadOnly = True
      Required = True
      Size = 38
    end
  end
  object cds_Grade: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select G.*,'
      
        'IsNull(g.gradecode,'#39#39') + '#39' - '#39' + IsNull(G.GradeName,'#39#39')  AS Grad' +
        'eCodeName'
      ''
      'FROM dbo.Grade G'
      'WHERE G.LanguageCode = 1'
      'AND G.Act = 1'
      'Order By g.gradecode, G.GradeName'
      '')
    Left = 560
    Top = 176
    object cds_GradeGradeNo: TIntegerField
      FieldName = 'GradeNo'
      Origin = 'GradeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_GradeGradeName: TStringField
      FieldName = 'GradeName'
      Origin = 'GradeName'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_GradeGradeCode: TStringField
      FieldName = 'GradeCode'
      Origin = 'GradeCode'
      Size = 5
    end
    object cds_GradeGradeCodeName: TStringField
      FieldName = 'GradeCodeName'
      Origin = 'GradeCodeName'
      ReadOnly = True
      Required = True
      Size = 38
    end
  end
  object cds_Surfacing: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select S.*,'
      
        'IsNull(S.Surfacingcode,'#39#39') + '#39' - '#39' + IsNull(S.SurfacingName,'#39#39') ' +
        'AS SurfacingCodeName'
      ''
      'FROM dbo.Surfacing S'
      'WHERE S.LanguageCode = 1'
      'and S.Act = 1'
      'Order By S.Surfacingcode, S.SurfacingName'
      '')
    Left = 624
    Top = 176
    object cds_SurfacingSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SurfacingSurfacingName: TStringField
      FieldName = 'SurfacingName'
      Origin = 'SurfacingName'
      Required = True
      Size = 30
    end
    object cds_SurfacingSurfacingCodeName: TStringField
      FieldName = 'SurfacingCodeName'
      Origin = 'SurfacingCodeName'
      ReadOnly = True
      Required = True
      Size = 38
    end
  end
  object cds_ProdCatg: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select pc.*,'
      ''
      
        'IsNull(pc.ImpCode,'#39#39') + '#39' - '#39' + IsNull(pc.ProductCategoryName,'#39#39 +
        ') AS ImpCodeName'
      ''
      'FROM dbo.ProductCategory pc'
      'WHERE pc.LanguageCode = 1'
      'and pc.Act = 1'
      'Order By pc.ImpCode, pc.ProductCategoryName'
      ' '
      '')
    Left = 704
    Top = 176
    object cds_ProdCatgProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
      Origin = 'ProductCategoryNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProdCatgProductCategoryName: TStringField
      FieldName = 'ProductCategoryName'
      Origin = 'ProductCategoryName'
      Size = 40
    end
    object cds_ProdCatgImpCodeName: TStringField
      FieldName = 'ImpCodeName'
      Origin = 'ImpCodeName'
      ReadOnly = True
      Required = True
      Size = 48
    end
  end
  object siLangLinked_frmGetProd_II: TsiLangLinked
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
    Left = 520
    Top = 320
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A004900440053005F003000010050007200
      6F00640075006B00740065006E002000E400720020006100760061006B007400
      690076006500720061006400010001000D000A004900440053005F0031000100
      500072006F00640075006B0074006700720075007000700065006E002000E400
      720020006100760061006B007400690076006500720061006400010001000D00
      0A004900440053005F003200010054007200E40073006C006100670065007400
      2000E400720020006100760061006B0074006900760065007200610064000100
      01000D000A004900440053005F0033000100550074006600F600720061006E00
      6400650074002000E400720020006100760061006B0074006900760065007200
      61006400010001000D000A004900440053005F003400010049006D0070007200
      650067006E006500720069006E006700730074007900700065006E002000E400
      720020006100760061006B007400690076006500720061006400010001000D00
      0A004900440053005F00350001004B00760061006C0069007400650074006500
      6E002000E400720020006100760061006B007400690076006500720061006400
      010001000D000A004900440053005F00360001005600E4006C006A0020006500
      740074002000760061007200750073006C00610067002100010001000D000A00
      4900440053005F00370001004400690061006D00650074006500720028006300
      6D002900010001000D000A004900440053005F00380001004C00E4006E006700
      6400280063006D002900010001000D000A004900440053005F00390001004200
      7200650064006400280063006D002900010001000D000A00730074004F007400
      68006500720053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A007300740043006F006C006C0065006300740069006F006E00
      73005F0055006E00690063006F00640065000D000A0073007400430068006100
      720053006500740073005F0055006E00690063006F00640065000D000A00}
  end
end
