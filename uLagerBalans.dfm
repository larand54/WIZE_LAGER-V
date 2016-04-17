﻿object fLagerBalans: TfLagerBalans
  Left = 219
  Top = 111
  Align = alClient
  BorderStyle = bsNone
  Caption = 'LagerBalans'
  ClientHeight = 875
  ClientWidth = 1524
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1524
    Height = 91
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    TabOrder = 0
    object Label9: TLabel
      Left = 1065
      Top = 37
      Width = 114
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'F'#246'rs'#228'ljningsregion:'
      Visible = False
    end
    object Label11: TLabel
      Left = 182
      Top = 5
      Width = 86
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'PERIOD  FOM'
    end
    object Label4: TLabel
      Left = 396
      Top = 5
      Width = 30
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'TOM'
    end
    object Label2: TLabel
      Left = 1124
      Top = 66
      Width = 40
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #196'gare:'
      Visible = False
    end
    object Label3: TLabel
      Left = 182
      Top = 31
      Width = 46
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'M'#229'n/'#197'r:'
    end
    object Label5: TLabel
      Left = 182
      Top = 57
      Width = 42
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Datum:'
    end
    object StartDate: TcxDateEdit
      Left = 240
      Top = 49
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Properties.DateButtons = [btnClear]
      Properties.ImmediatePost = True
      Properties.Kind = ckDateTime
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 8
      Width = 149
    end
    object EndDate: TcxDateEdit
      Left = 396
      Top = 49
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Properties.ImmediatePost = True
      Properties.Kind = ckDateTime
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 9
      Width = 149
    end
    object lcSalesRegion: TcxDBLookupComboBox
      Left = 1182
      Top = 30
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'SalesRegion'
      DataBinding.DataSource = dsFilter
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 1
      Visible = False
      Width = 217
    end
    object lcVerk: TcxDBLookupComboBox
      Left = 1172
      Top = 59
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'VERK'
      DataBinding.DataSource = dsFilter
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 0
      Visible = False
      Width = 218
    end
    object cbMonthStart: TcxComboBox
      Left = 240
      Top = 23
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Properties.Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12')
      Properties.OnChange = cbMonthStartPropertiesChange
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 4
      Text = '10'
      Width = 70
    end
    object cbYearStart: TcxComboBox
      Left = 319
      Top = 23
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Properties.Items.Strings = (
        '2007'
        '2008'
        '2009'
        '2010')
      Properties.OnChange = cbYearStartPropertiesChange
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 5
      Text = '2007'
      Width = 70
    end
    object cbYearEnd: TcxComboBox
      Left = 475
      Top = 23
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Properties.Items.Strings = (
        '2007'
        '2008'
        '2009'
        '2010')
      Properties.OnChange = cbYearEndPropertiesChange
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 7
      Text = '2007'
      Width = 70
    end
    object cbMonthEnd: TcxComboBox
      Left = 396
      Top = 23
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Properties.Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12')
      Properties.OnChange = cbMonthEndPropertiesChange
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 6
      Text = '10'
      Width = 70
    end
    object bbCurrentMonth: TBitBtn
      Left = 10
      Top = 10
      Width = 149
      Height = 36
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acGetCurrentMonth
      Caption = 'Aktuell m'#229'nad'
      TabOrder = 2
    end
    object bbPreviousMonth: TBitBtn
      Left = 10
      Top = 47
      Width = 74
      Height = 35
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acGetPrevMonth
      Caption = 'F'#246'reg.'
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 85
      Top = 47
      Width = 74
      Height = 35
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acGetNextMonth
      Caption = 'N'#228'sta'
      TabOrder = 10
    end
    object BitBtn2: TBitBtn
      Left = 551
      Top = 23
      Width = 120
      Height = 41
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acRefresh
      Caption = '&Uppdatera'
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00AD7B7B00B5848400B5848400B5848400B5848400B5848400B584
        8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
        8400B5848400B5848400B5848400B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AD7B7B00EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500EFD6
        FD00F7D6A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE
        9400EFCE9400EFCE9400EFCE9400B58C7B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AD7B7B00EFDEC600F7E7C600F7DEC600F7DEBD00BDCE8C00E7D6
        A500E7D6A500EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE
        9400EFCE9400EFCE9400EFCE9400B58C7B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AD7B7B00F7DECE00F7E7CE00F7DEC600F7DEC600CED69C00009C
        0000E7D6A5006BB54A0039A5290039A529006BB54A00C6C67B00E7CE9400EFCE
        9400EFCE9400EFCE9400EFCE9400B58C7B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AD7B7B00EFE7CE00F7E7D600F7E7CE00F7DEC600EFDEB500009C
        0000109C1000009C0000009C0000009C0000009C0000009C000094BD5A00E7CE
        9400EFCE9400EFCE9400EFCE9400B58C7B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AD7B7B00F7E7D600F7EFDE00F7E7D600F7E7CE00EFDEBD00009C
        0000009C0000009C0000009C0000009C0000009C0000009C0000009C0000C6C6
        7B00EFCE9400EFCE9400EFCE9400B58C7B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AD847B00F7E7DE00F7EFDE00F7E7D600F7E7CE00E7DEC600009C
        0000009C0000009C000039AD3100C6CE8C00C6CE8C006BB54A00009C000039A5
        2900EFCE9400EFCE9400EFCE9400B58C7B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AD847B00F7EFE700F7EFE700F7EFDE00F7E7D600EFE7C600009C
        0000009C0000009C000031A52100E7D6AD00E7D6A500E7D6A500A5C67300109C
        0800EFCE9C00EFCE9400EFCE9400B58C7B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00B58C7B00F7EFE700FFF7EF00F7EFE700F7EFDE00EFE7CE00009C
        0000009C0000009C0000009C0000009C0000E7D6AD00EFD6AD00EFD6AD00EFCE
        A5007BCE7B00EFCE9C00EFCE9400B58C7B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00B58C8400F7EFEF00FFF7EF00F7EFE700F7EFE700EFE7CE00EFE7
        CE00E7DEC600E7DEC600EFDEBD00EFDEB500E7D6AD00F7D6B500EFD6AD00EFD6
        FD007BCE7B00EFCE9C00EFCE9400B58C7B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00BD8C8400FFF7F700FFFFF700FFF7EF007BCE7B00F7EFE700F7EF
        DE00F7E7D600EFE7C600E7DEC600EFDEBD00EFDEB500E7D6AD00E7D6AD00E7D6
        A500EFD6AD00EFCEA500EFCE9C00B58C7B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00BD948400FFF7F700FFFFFF00FFF7F7007BCE7B00F7EFE700F7EF
        E700F7EFDE00EFE7CE00009C0000009C0000009C0000009C0000009C0000E7D6
        FD00EFD6AD00EFD6AD00EFCEA500B58C7B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C6948400FFF7F700FFFFFF00FFFFFF00FFF7F700109C1000ADD6
        A500EFEFD600EFE7CE00EFE7CE0031AD2900009C0000009C0000009C0000E7D6
        FD00F7D6B500EFD6AD00EFCEA500B58C7B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C69C8400FFF7F700FFFFFF00FFFFFF00FFFFFF0039AD3900009C
        000073C66B00CEDEB500CEDEB50039AD3900009C0000009C0000009C0000EFDE
        B500F7DEBD00F7D6B500EFD6AD00B58C7B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C69C8400FFF7F700FFFFFF00FFFFFF00FFFFFF00CEEFCE00009C
        0000009C0000009C0000009C0000009C0000009C0000009C0000009C0000EFDE
        BD00F7DEBD00EFDEBD00DEC6A5009C847B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00CE9C8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00F7FFF7009CDE
        9C00009C0000009C0000009C0000009C0000009C0000109C1000009C0000E7DE
        C600EFDEBD00CEBDAD00B5AD94009C847B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00CEA58C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FF
        F700CEEFCE0073C66B0039AD390039AD390073C66300EFE7CE00009C0000C6D6
        FD00CEBDAD00BDB5A500B5AD9C009C847B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00D6A58C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFF7F700FFF7EF00FFF7E700E7DEC600AD8473008484
        5A00AD7B7300AD7B7300AD7B7300AD847300FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00DEAD8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B5
        8400E7AD6B00EFA55200EFA53900B5848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00DEAD8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC6
        8C00F7BD6B00FFB55200B5848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00DEAD8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC6
        8C00F7BD6B00B5848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00DEAD8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC6
        8C00B5848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA5
        8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400B5847300B584
        8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 11
    end
    object BitBtn3: TBitBtn
      Left = 670
      Top = 23
      Width = 119
      Height = 41
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acPrint
      Caption = 'Skriv ut'
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00ADADAD00CEC6
        CE00ADADAD009C9C9C00FF00FF00FF00FF00ADADAD00D6D6D600DED6D600BDBD
        BD00ADADAD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00ADADAD00C6C6C600F7F7F700F7F7
        F700BDBDBD00ADADAD005A5A5A006363630084848400ADADAD00CEC6C600E7DE
        DE00E7E7E700D6D6D600B5B5B500FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00ADADAD00BDB5B500E7E7E700FFFFFF00FFFFFF00EFEF
        EF00BDB5B500B5ADAD004A4A4A00212121003131310042424200636363008484
        8400ADADAD00CECECE00E7E7E700DEDEDE00ADA5A500FF00FF00FF00FF00FF00
        FF00FF00FF00ADADAD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEF
        EF00B5B5B500B5B5B5009C949C006B6B6B004A4A4A0031313100292929003131
        310042424200636363008C8C8C00A5A5A500FF00FF00FF00FF00FF00FF00A5A5
        A500CECECE00F7F7F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADAD
        FD009C9C9C00A5A5A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A
        5A00393939002929290042424200A59C9C00FF00FF00FF00FF00FF00FF00A5A5
        A500EFEFEF00F7F7F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6
        D600B5B5B500A5A5A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5
        B500A5A5A500848484006B6B6B00A59C9C00FF00FF00FF00FF00FF00FF00A5A5
        A500E7E7E700DED6D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7
        E700E7E7E700D6D6D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C
        9C00A5A5A500ADADAD00B5B5B500A5A5A500FF00FF00FF00FF00FF00FF00A5A5
        A500B5ADAD00A5A5A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7
        E700F7F7F700F7F7F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5
        B500ADA5A500A5A5A500A59C9C009C9C9C00FF00FF00FF00FF00FF00FF00A5A5
        A500BDBDBD00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7
        F700C6C6C600C6BDC600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6
        D600CECECE00C6C6C600BDBDBD00A5A5A500FF00FF00FF00FF00FF00FF00A5A5
        A500D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBD
        BD00ADB5AD0084C68400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6
        D600DEDEDE00DEDEDE00D6D6D600ADADAD00FF00FF00FF00FF00FF00FF00FF00
        FF00BDBDBD00DEDEDE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBD
        BD00EFEFEF00D6F7D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5
        A500ADADAD00BDBDBD00BDBDBD00B5B5B500FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00B5B5B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7
        F700F7F7F700F7F7F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6
        D600CECECE00ADA5A500A5A5A500FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00A59C9C00BDBDBD00DEDEDE00CECECE00ADAD
        FD00C6C6C600DEDEDE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDE
        DE00C6C6C600BDB5B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00ADADAD00F7F7F700F7F7F700DEDEDE00BDBD
        BD00BDBDBD00C6C6C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADAD
        FD00BDB5B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00EFDEDE00FFE7DE00FFE7D600FFDE
        D600F7DED600F7DED600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C600FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00E7C6BD00FFE7DE00FFDED600FFDE
        CE00FFD6C600FFCEBD00FFC6B500FFC6B500FFC6AD00EFCECE00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00E7C6BD00FFE7DE00FFDED600FFDE
        CE00FFD6C600FFCEBD00FFC6B500FFC6AD00F7B5A500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00E7CEC600FFE7DE00FFDED600FFDE
        CE00FFD6C600FFCEBD00FFC6B500FFC6AD00F7B5A500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00E7CEC600FFE7DE00FFDED600FFDE
        CE00FFD6C600FFCEBD00FFC6B500FFC6AD00F7BDB500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00E7CEC600FFE7DE00FFDED600FFDE
        CE00FFD6C600FFCEBD00FFC6B500F7BDB500F7BDB500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00E7C6C600FFEFE700FFE7DE00FFDED600FFDE
        CE00FFD6C600FFCEBD00FFCEB500F7BDB500FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00E7CEC600FFF7EF00FFE7DE00FFE7D600FFDE
        CE00FFD6C600FFD6C600F7BDB500F7BDB500FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00DEB5B500E7CEC600E7C6C600E7C6BD00E7C6BD00E7BD
        B500E7BDB500E7B5AD00F7BDB500FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 12
    end
    object BitBtn5: TBitBtn
      Left = 788
      Top = 23
      Width = 92
      Height = 41
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acClose
      Caption = 'St'#228'ng'
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008C6363004242
        420042424200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF008C6363004242420042424200B55A0000B55A
        0000424242008C6363008C6363008C6363008C6363008C6363008C6363008C63
        63008C6363008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF008C63630042424200B55A0000B55A0000A5520800B55A0000C65A
        00004242420010AD840010AD840010AD840010AD840010AD840010AD840010AD
        840010AD84008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300B55A0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A
        00004242420010AD840010AD840010AD840010AD840010AD840018A57B0018A5
        7B0018A57B008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300C65A0000C65A0000C65A0000C65A0000C65A0000CE630000CE63
        00004242420010AD840018A57B0018A57B0018A57B00189C7B00189C73002194
        7300398C6B008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300C65A0000CE630000CE630000CE630000CE630000CE630000CE63
        0000424242002984630021947300219473002194730021946B00218C6B00298C
        6B0042846B008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300CE630000CE630000CE630000CE6B0000CE6B0000CE6B0000CE63
        00004242420029735A00218C6B00298C6B00298C6300298C6B00298463002984
        6300298C6B008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300CE630000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673
        000042424200298C6B002984630029845A00317B5A00317B5200317B5A003984
        5A00427B63008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300CE6B0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673
        000042424200316B4A00397B5200397B520031734A00397B52004A7B5A005A6B
        52005A6B52008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300D6730000D6730000D6730000D6730000FFD6A500FFE7C600FFBD
        6B00424242005A6B52005A6B520031734A00637B5200637B520094946B00B59C
        7300F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300D6730000D6730000D6730000D6730000D6730000FFD6A500D673
        000042424200F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B5
        8400F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300D6730000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
        000042424200F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B5
        8400F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
        000042424200F7B58400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B5
        8400F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300DE7B0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B
        000042424200EFCEBD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7
        DE00F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300FF840000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B
        000042424200F7B58400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6
        A500F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008C636300D6730000FF840000FF840000F7840000F77B0000EF7B0000EF7B
        000042424200F7B58400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B5
        8400F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AD6B6300AD6B6300D6730000FF840000EF7B0000F7840000FF84
        000042424200F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B5
        8400F7B584008C636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00AD6B6300AD6B6300D6730000FF840000FF84
        0000424242008484840084848400848484008484840084848400848484008484
        84008484840084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AD6B6300AD6B6300AD6B
        6300AD6B6300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 13
    end
    object BitBtn6: TBitBtn
      Left = 930
      Top = 1
      Width = 169
      Height = 27
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acInventoryMissing
      Caption = 'Ej best'#228'mda lagergrupper'
      TabOrder = 14
      Visible = False
    end
    object Button1: TButton
      Left = 551
      Top = 69
      Width = 120
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'sq_LBSR'
      TabOrder = 15
      Visible = False
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 670
      Top = 69
      Width = 119
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'sq_LagBalORT'
      TabOrder = 16
      Visible = False
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 788
      Top = 69
      Width = 90
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'sq_LagBal'
      TabOrder = 17
      Visible = False
      OnClick = Button3Click
    end
    object teInventeringsSet: TcxTextEdit
      Left = 985
      Top = 33
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      TabOrder = 18
      Text = '21'
      Width = 89
    end
    object cxLabel1: TcxLabel
      Left = 886
      Top = 39
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Inventeringsset:'
    end
    object cbFilterZeros: TcxCheckBox
      Left = 887
      Top = 59
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Filtrera bort 0:or'
      Properties.OnChange = cbFilterZerosPropertiesChange
      State = cbsChecked
      TabOrder = 20
      Width = 149
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 759
    Top = 91
    Width = 8
    Height = 784
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    HotZoneClassName = 'TcxMediaPlayer8Style'
    Control = Panel2
    Color = clMaroon
    ParentColor = False
  end
  object Panel1: TPanel
    Left = 767
    Top = 91
    Width = 757
    Height = 784
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 2
    object PanelLagerNamn: TPanel
      Left = 1
      Top = 1
      Width = 755
      Height = 22
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object grdLagerBalans: TcxGrid
      Left = 1
      Top = 23
      Width = 755
      Height = 760
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      TabOrder = 1
      object grdLagerBalansDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = grdLagerBalansDBTableView1CellDblClick
        DataController.DataSource = ds_LagBal
        DataController.KeyFieldNames = 'GRUPP;ITEM'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'UTG_BAL: #,###,###,###.0'
            Kind = skSum
            FieldName = 'NM3'
            Column = grdLagerBalansDBTableView1SubTotal
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'V'#196'RDE'
            Column = grdLagerBalansDBTableView1VRDE
          end
          item
            Kind = skSum
            FieldName = 'Pkt'
            Column = grdLagerBalansDBTableView1Pkt
          end>
        DataController.Summary.SummaryGroups = <
          item
            Links = <
              item
              end
              item
                Column = grdLagerBalansDBTableView1GRUPP
              end>
            SummaryItems = <
              item
                Format = '#,###,###.0'
                Kind = skSum
                Position = spFooter
                FieldName = 'NM3'
                Column = grdLagerBalansDBTableView1SubTotal
              end
              item
                Format = '#,###,###,###.0'
                Kind = skSum
                FieldName = 'V'#196'RDE'
                Column = grdLagerBalansDBTableView1VRDE
              end>
          end>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GridLines = glNone
        OptionsView.GroupFooters = gfAlwaysVisible
        OptionsView.GroupRowHeight = 20
        object grdLagerBalansDBTableView1GRUPP: TcxGridDBColumn
          DataBinding.FieldName = 'GRUPP'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          GroupIndex = 0
          Options.Filtering = False
          Options.CellMerging = True
          Options.Sorting = False
          Styles.Content = cxStyle1
          Width = 230
        end
        object grdLagerBalansDBTableView1ITEM: TcxGridDBColumn
          Caption = 'BESKRIVNING'
          DataBinding.FieldName = 'ITEM'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 169
        end
        object grdLagerBalansDBTableView1NM3: TcxGridDBColumn
          DataBinding.FieldName = 'NM3'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 85
        end
        object grdLagerBalansDBTableView1SubTotal: TcxGridDBColumn
          Caption = 'SUB TOTAL'
          DataBinding.FieldName = 'SubTotal'
          PropertiesClassName = 'TcxLabelProperties'
          OnGetDataText = grdLagerBalansDBTableView1SubTotalGetDataText
          Options.Filtering = False
          Styles.Content = cxStyle1
          Styles.Footer = cxStyle1
          Width = 97
        end
        object grdLagerBalansDBTableView1VRDE: TcxGridDBColumn
          DataBinding.FieldName = 'V'#196'RDE'
          Width = 91
        end
        object grdLagerBalansDBTableView1Pkt: TcxGridDBColumn
          DataBinding.FieldName = 'Pkt'
        end
      end
      object grdLagerBalansLevel1: TcxGridLevel
        GridView = grdLagerBalansDBTableView1
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 91
    Width = 759
    Height = 784
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alLeft
    Caption = 'Panel2'
    TabOrder = 3
    object grdLagerBalansORT: TcxGrid
      Left = 1
      Top = 258
      Width = 757
      Height = 525
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      TabOrder = 0
      object grdLagerBalansORTDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = ds_LagBalORT
        DataController.KeyFieldNames = 'PIPNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'NM3'
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'NM3_IN'
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'NM3_OUT'
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'NM3_UT'
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
      end
      object grdLagerBalansORTDBTableView2: TcxGridDBTableView
        PopupMenu = pmLBPerDay
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = grdLagerBalansORTDBTableView2CellDblClick
        DataController.DataModeController.DetailInSQLMode = True
        DataController.DataModeController.OnDetailFirst = grdLagerBalansORTDBTableView2DataControllerDataModeControllerDetailFirst
        DataController.DataSource = ds_LagGrupp
        DataController.DetailKeyFieldNames = 'PIPNo'
        DataController.KeyFieldNames = 'LIPNo'
        DataController.MasterKeyFieldNames = 'PIPNo'
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object grdLagerBalansORTDBTableView2GRPNAMN: TcxGridDBColumn
          Caption = 'LAGERGRUPP'
          DataBinding.FieldName = 'GRPNAMN'
          PropertiesClassName = 'TcxLabelProperties'
        end
        object grdLagerBalansORTDBTableView2PIPNo: TcxGridDBColumn
          DataBinding.FieldName = 'PIPNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          VisibleForCustomization = False
        end
        object grdLagerBalansORTDBTableView2LIPNo: TcxGridDBColumn
          DataBinding.FieldName = 'LIPNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object grdLagerBalansORTDBBandedTableView1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = grdLagerBalansORTDBBandedTableView1CellDblClick
        DataController.DataSource = ds_LagBalORT
        DataController.KeyFieldNames = 'PIPNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'NM3_DIFF'
            Column = grdLagerBalansORTDBBandedTableView1NM3_DIFF
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'NM3_ING'#197'ENDE'
            Column = grdLagerBalansORTDBBandedTableView1NM3_INGENDE
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'NM3_R'#214'RELSE_IN'
            Column = grdLagerBalansORTDBBandedTableView1NM3_RRELSE_IN
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'NM3_R'#214'RELSE_UT'
            Column = grdLagerBalansORTDBBandedTableView1NM3_RRELSE_UT
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'NM3_UTGAENDE'
            Column = grdLagerBalansORTDBBandedTableView1NM3_UTGAENDE
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'NM3_INVENTERAT'
            Column = grdLagerBalansORTDBBandedTableView1NM3_INVENTERAT
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'NM3_DIFF_INVENT'
            Column = grdLagerBalansORTDBBandedTableView1NM3_DIFF_INVENT
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ExpandMasterRowOnDblClick = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = #196'GARE/ORT'
            Width = 153
          end
          item
            Caption = 'LAGERBALANS NM3'
            Width = 135
          end
          item
            Caption = 'R'#214'RELSER NM3'
            Width = 95
          end
          item
            Caption = 'F'#214'R'#196'NDRING NM3'
            Width = 230
          end>
        object grdLagerBalansORTDBBandedTableView1PIPNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PIPNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          VisibleForCustomization = False
          Width = 35
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdLagerBalansORTDBBandedTableView1NM3_INGENDE: TcxGridDBBandedColumn
          Caption = 'ING'#197'ENDE'
          DataBinding.FieldName = 'NM3_ING'#197'ENDE'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 39
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdLagerBalansORTDBBandedTableView1NM3_UTGAENDE: TcxGridDBBandedColumn
          Caption = 'UTGAENDE'
          DataBinding.FieldName = 'NM3_UTGAENDE'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 39
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdLagerBalansORTDBBandedTableView1NM3_DIFF: TcxGridDBBandedColumn
          Caption = 'DIFF fg LB'
          DataBinding.FieldName = 'NM3_DIFF'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 68
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdLagerBalansORTDBBandedTableView1ORT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ORT'
          Width = 56
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdLagerBalansORTDBBandedTableView1NM3_RRELSE_IN: TcxGridDBBandedColumn
          Caption = 'IN'
          DataBinding.FieldName = 'NM3_R'#214'RELSE_IN'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 40
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdLagerBalansORTDBBandedTableView1NM3_RRELSE_UT: TcxGridDBBandedColumn
          Caption = 'UT'
          DataBinding.FieldName = 'NM3_R'#214'RELSE_UT'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 38
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdLagerBalansORTDBBandedTableView1GARE: TcxGridDBBandedColumn
          DataBinding.FieldName = #196'GARE'
          Width = 38
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdLagerBalansORTDBBandedTableView1NM3_INVENTERAT: TcxGridDBBandedColumn
          Caption = 'INVENTERAT'
          DataBinding.FieldName = 'NM3_INVENTERAT'
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdLagerBalansORTDBBandedTableView1NM3_DIFF_INVENT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NM3_DIFF_INVENT'
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
      end
      object grdLagerBalansORTLevel1: TcxGridLevel
        GridView = grdLagerBalansORTDBBandedTableView1
        object grdLagerBalansORTLevel2: TcxGridLevel
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 757
      Height = 249
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object grdSalesRegion: TcxGrid
        Left = 0
        Top = 0
        Width = 757
        Height = 249
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 0
        object grdSalesRegionDBBandedTableView1: TcxGridDBBandedTableView
          OnDblClick = grdSalesRegionDBBandedTableView1DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_LBSR
          DataController.KeyFieldNames = 'ClientNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,###,###,###.0'
              Kind = skSum
              FieldName = 'NM3_ING'#197'ENDE'
              Column = grdSalesRegionDBBandedTableView1NM3_INGENDE
            end
            item
              Format = '#,###,###,###.0'
              Kind = skSum
              FieldName = 'NM3_UTGAENDE'
              Column = grdSalesRegionDBBandedTableView1NM3_UTGAENDE
            end
            item
              Format = '#,###,###,###.0'
              Kind = skSum
              FieldName = 'IN_NM3'
              Column = grdSalesRegionDBBandedTableView1IN_NM3
            end
            item
              Format = '#,###,###,###.0'
              Kind = skSum
              FieldName = 'UT_NM3'
              Column = grdSalesRegionDBBandedTableView1UT_NM3
            end
            item
              Format = '#,###,###,###.0'
              Kind = skSum
              FieldName = 'NM3_DIFF'
              Column = grdSalesRegionDBBandedTableView1NM3_DIFF
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          Bands = <
            item
              Caption = 'REGION'
              Width = 115
            end
            item
              Caption = 'LAGERBALANS'
              Width = 133
            end
            item
              Caption = 'R'#214'RELSER'
              Width = 132
            end
            item
              Caption = 'F'#214'R'#196'NDRING'
              Width = 65
            end>
          object grdSalesRegionDBBandedTableView1REGION: TcxGridDBBandedColumn
            DataBinding.FieldName = 'REGION'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdSalesRegionDBBandedTableView1NM3_INGENDE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NM3_ING'#197'ENDE'
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdSalesRegionDBBandedTableView1NM3_UTGAENDE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NM3_UTGAENDE'
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdSalesRegionDBBandedTableView1IN_NM3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IN_NM3'
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdSalesRegionDBBandedTableView1UT_NM3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UT_NM3'
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdSalesRegionDBBandedTableView1NM3_DIFF: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NM3_DIFF'
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
        end
        object grdSalesRegionLevel1: TcxGridLevel
          GridView = grdSalesRegionDBBandedTableView1
        end
      end
    end
    object cxSplitter2: TcxSplitter
      Left = 1
      Top = 250
      Width = 757
      Height = 8
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      HotZoneClassName = 'TcxMediaPlayer8Style'
      AlignSplitter = salTop
      Control = Panel4
      Color = clMaroon
      ParentColor = False
    end
  end
  object mtFilter: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'ClientNo'
        DataType = ftInteger
      end
      item
        Name = 'StartDate'
        DataType = ftDate
      end
      item
        Name = 'EndDate'
        DataType = ftDate
      end
      item
        Name = 'PIPNo'
        DataType = ftInteger
      end
      item
        Name = 'LIPNo'
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
    Left = 352
    Top = 136
    object mtFilterClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object mtFilterStartDate: TDateField
      FieldName = 'StartDate'
    end
    object mtFilterEndDate: TDateField
      FieldName = 'EndDate'
    end
    object mtFilterVERK: TStringField
      FieldKind = fkLookup
      FieldName = 'VERK'
      LookupDataSet = cdsClient
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ClientNo'
      Size = 80
      Lookup = True
    end
    object mtFilterSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      OnChange = mtFilterSalesRegionNoChange
    end
    object mtFilterSalesRegion: TStringField
      FieldKind = fkLookup
      FieldName = 'SalesRegion'
      LookupDataSet = cds_SalesRegion
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'SalesRegionNo'
      Size = 80
      Lookup = True
    end
    object mtFilterLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
  end
  object dsFilter: TDataSource
    DataSet = mtFilter
    Left = 352
    Top = 184
  end
  object dsClient: TDataSource
    DataSet = cdsClient
    Left = 816
    Top = 248
  end
  object ds_PIP: TDataSource
    Left = 680
    Top = 256
  end
  object ds_LIP: TDataSource
    DataSet = cds_Lip
    Left = 752
    Top = 256
  end
  object ds_LagBal: TDataSource
    DataSet = cds_LagBal
    Left = 608
    Top = 256
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 416
    Top = 144
    object acRefresh: TAction
      Caption = '&Uppdatera'
      ImageIndex = 42
      OnExecute = acRefreshExecute
    end
    object acPrint: TAction
      Caption = 'Skriv ut'
      ImageIndex = 8
      OnExecute = acPrintExecute
    end
    object acGetCurrentMonth: TAction
      Caption = 'Aktuell m'#229'nad'
      OnExecute = acGetCurrentMonthExecute
    end
    object acGetPrevMonth: TAction
      Caption = 'F'#246'reg.'
      OnExecute = acGetPrevMonthExecute
    end
    object acGetNextMonth: TAction
      Caption = 'N'#228'sta'
      OnExecute = acGetNextMonthExecute
    end
    object acDetailInformation: TAction
      Caption = 'Information'
      ImageIndex = 30
    end
    object acClose: TAction
      Caption = 'St'#228'ng'
      ImageIndex = 1
      OnExecute = acCloseExecute
    end
    object acInventoryMissing: TAction
      Caption = 'Ej best'#228'mda'
      OnExecute = acInventoryMissingExecute
    end
    object acLBPerDay: TAction
      Caption = 'Lagerbalans per dag'
      OnExecute = acLBPerDayExecute
    end
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfFlat
    Left = 136
    Top = 432
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 152
    Top = 128
    Bitmap = {
      494C010109000D00040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADADAD00C6C6C600F7F7F700F7F7F700BDBDBD00ADAD
      FD005A5A5A006363630084848400ADADAD00CEC6C600E7DEDE00E7E7E700D6D6
      D600B5B5B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADADAD00BDB5B500E7E7E700FFFFFF00FFFFFF00EFEFEF00BDB5B500B5AD
      FD004A4A4A002121210031313100424242006363630084848400ADADAD00CECE
      CE00E7E7E700DEDEDE00ADA5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      FD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEFEF00B5B5B500B5B5
      B5009C949C006B6B6B004A4A4A00313131002929290031313100424242006363
      63008C8C8C00A5A5A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500CECECE00F7F7
      F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADADAD009C9C9C00A5A5
      A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A5A00393939002929
      290042424200A59C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500EFEFEF00F7F7
      F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6D600B5B5B500A5A5
      A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5B500A5A5A5008484
      84006B6B6B00A59C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500E7E7E700DED6
      D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7E700E7E7E700D6D6
      D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C9C00A5A5A500ADAD
      FD00B5B5B500A5A5A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500B5ADAD00A5A5
      A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7E700F7F7F700F7F7
      F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5B500ADA5A500A5A5
      A500A59C9C009C9C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500BDBDBD00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7F700C6C6C600C6BD
      C600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00C6C6
      C600BDBDBD00A5A5A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBDBD00ADB5AD0084C6
      8400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6D600DEDEDE00DEDE
      DE00D6D6D600ADADAD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00DEDE
      DE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBDBD00EFEFEF00D6F7
      D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5A500ADADAD00BDBD
      BD00BDBDBD00B5B5B50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7F700F7F7F700F7F7
      F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00ADA5
      A500A5A5A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A59C9C00BDBDBD00DEDEDE00CECECE00ADADAD00C6C6C600DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00C6C6C600BDB5
      B500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADADAD00F7F7F700F7F7F700DEDEDE00BDBDBD00BDBDBD00C6C6
      C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADADAD00BDB5B5000000
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
      00000000000000000000EFDEDE00FFE7DE00FFE7D600FFDED600F7DED600F7DE
      D600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C60000000000000000000000
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
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6B500FFC6AD00EFCECE000000000000000000000000000000
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
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
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
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
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
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7BDB500000000000000000000000000000000000000
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
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500F7BDB500F7BDB500000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFF7E700FFF7E700FFEF
      D600FFEFD600FFE7C600FFE7C600FFE7C600FFDEB500FFDEB500FFDEB500FFD6
      FD00FFD6AD00FFD6AD00CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      000042E7E7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFF7E700FFF7
      E700FFEFD600FFEFD600FFE7C600FFDEB500FFDEB500FFDEB500FFD6AD00FFD6
      FD00FFD6AD00FFD6AD00CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C5A29009C5A29009C5A
      29009C5A29009C5A29009C5A29009C5A29009C5A29009C5A29009C5A29009C5A
      29009C5A29009C5A290000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      000042E7E70042E7E70042E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700FFF7E700FFEFD600FFE7C600FFE7
      C600FFD6AD00FFDEB500CE630000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200000000000000
      000000000000000000000000000000000000000000009C5A2900E7CEB500B573
      2900B5732900B5732900B5732900B5732900B5732900B5732900B5732900F7E7
      D6009C5A2900B57329009C5A2900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042E7E70042E7E70042E7E70042E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7E700FFEFD600FFE7C600FFE7
      C600FFD6AD00FFDEB500CE630000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420000000000000000000000
      0000000000000000000000000000000000008484840042424200000000000000
      000000000000000000000000000000000000000000009C5A2900E7CEB500BD7B
      4A00BD7B4A00BD7B4A00BD7B4A00BD7B4A00BD7B4A00BD7B4A00BD7B4A00F7E7
      D6009C5A2900B5732900B57329009C5A29000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7
      E700000000000000000042E7E70042E7E70042E7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7E700FFEFD600FFEF
      D600FFE7C600FFE7C600CE630000000000000000000000000000000000000000
      0000000000008484840042424200424242004242420084848400000000000000
      0000000000000000000000000000000000000000000042424200000000000000
      000000000000000000000000000000000000000000009C5A2900E7CEB500BD7B
      4A00BD7B4A00BD7B4A00BD7B4A00BD7B4A00BD7B4A00BD7B4A00BD7B4A00F7E7
      D6009C5A2900B5732900B5732900B57329009C5A290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000042E7E70042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E70042E7E700000000000000000042E7E70042E7E70042E7E7000000
      0000000000000000000000000000000000000000000000000000DEBD9400DEBD
      9400DEBD9400DEBD9400DEBD9400DEBD9400CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700FFEFD600FFE7C600CE630000000000000000000000000000000000000000
      0000000000000000000084848400424242004242420042424200848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C5A290094949400E7CE
      B500DE9C7300DE9C7300DE9C7300DE9C7300DE9C7300DE9C7300DE9C7300F7E7
      D600949494009C5A2900B5732900B5732900B5732900394A9400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E7000000000042E7E70042E7E70042E7
      E700000000000000000000000000000000000000000000000000FFD6AD00FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E700CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      E700FFEFD600FFEFD600CE630000000000000000000000000000000000000000
      0000000000000000000000000000848484004242420042424200424242008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C5A2900E7CE
      B500E7CEB500E7CEB500E7CEB500E7CEB500E7CEB500F7E7D600F7E7D600E7E7
      E700E7CEB5009C5A2900B5732900B5732900B57329004A6B9C00394A94000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042E7E7000000000000000000000000000000000000000000FFD6AD00FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E700CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7E700FFEFD600CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840042424200424242004242
      4200848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C5A
      2900E7A57300E7A57300E7A57300E7A57300E7A57300E7A57300E7A57300E7A5
      7300E7A57300E7A573009C5A2900B5732900B57329007B94C6004A6B9C00394A
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000000042E7
      E700000000000000000000000000000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFEFD600CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400424242004242
      4200424242008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C5A2900E7A57300E7A57300E7A57300E7A57300E7A57300E7A57300E7A5
      7300E7A57300E7A57300E7A573009C5A2900B57329007B94C6007B94C6004A6B
      9C00394A94000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000000042E7
      E70042E7E70042E7E70000000000000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DE7B0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400424242004242
      4200424242004242420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C5A2900E7A57300E7A57300E7A57300E7A57300E7A57300E7A5
      7300E7A57300E7A57300E7A57300E7A573009C5A29004A6B9C007B94C6007B94
      C6004A6B9C00394A940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000042E7
      E70042E7E70042E7E70042E7E700000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840042424200424242004242
      4200848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C5A2900E7A57300E7A57300E7A57300E7A57300E7A5
      7300E7A57300E7A57300E7A57300E7A57300E7A57300394A94004A6B9C007B94
      C6007B94C6004A6B9C00394A9400000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      00000000000042E7E70042E7E70042E7E7000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000848484004242420042424200424242008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000394A9400ADCEE700ADCEE700ADCEE700ADCE
      E700ADCEE700ADCEE700ADCEE700ADCEE700ADCEE700ADCEE700394A94004A6B
      9C007B94C6007B94C600394A9400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E700000000000000000042E7E7000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D673100000000000000000000000000000000000000000000000
      0000000000000000000084848400424242004242420042424200848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000394A9400ADCEE700ADCEE700ADCE
      E700ADCEE700ADCEE700ADCEE700ADCEE700ADCEE700ADCEE700ADCEE700394A
      94004A6B9C007B94C600394A94000000000000000000000000000000000042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      000042E7E700000000000000000042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E700000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEBD940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840042424200424242004242420084848400000000000000
      0000000000000000000000000000000000000000000042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000394A9400ADCEE700ADCE
      E700ADCEE700ADCEE700ADCEE700ADCEE700ADCEE700ADCEE700ADCEE700ADCE
      E700394A94004A6B9C00394A94000000000000000000000000000000000042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      000042E7E70042E7E70042E7E700000000000000000042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E7000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEBD940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420000000000000000000000
      0000000000000000000000000000000000008484840042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000394A9400ADCE
      E700ADCEE700ADCEE700ADCEE700ADCEE700ADCEE700ADCEE700ADCEE700ADCE
      E700ADCEE700394A9400394A9400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042E7E70042E7E70042E7E70042E7E700000000000000000042E7
      E70042E7E70042E7E70042E7E70042E7E7000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEBD940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000394A
      9400ADCEE700ADCEE700ADCEE700ADCEE700ADCEE700ADCEE700ADCEE700ADCE
      E700ADCEE700ADCEE700394A9400000000000000000000000000000000000000
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
      00004A6B9C00394A9400394A9400394A9400394A9400394A9400394A9400394A
      9400394A94004A6B9C0000000000000000000000000000000000000000000000
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
      6300000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFE7CE00F7E7D600F7E7CE00F7DEC600EFDEB500009C0000109C1000009C
      0000009C0000009C0000009C0000009C000094BD5A00E7CE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      63000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6631800CE630000CE630000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B6B6B008484
      840000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7E7D600F7EFDE00F7E7D600F7E7CE00EFDEBD00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000C6C67B00EFCE9400EFCE
      9400EFCE9400B58C7B00000000000000000000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      6300000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE63000000000000C6631800000000000000000084848400525252008484
      84006B6B6B006B6B6B004A4A4A00A5A5A500737373006B6B6B00000000004A4A
      4A0000000000000000000000000000000000000000000000000000000000AD84
      7B00F7E7DE00F7EFDE00F7E7D600F7E7CE00E7DEC600009C0000009C0000009C
      000039AD3100C6CE8C00C6CE8C006BB54A00009C000039A52900EFCE9400EFCE
      9400EFCE9400B58C7B00000000000000000000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      63000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE630000C66318000000000000000000848484006B6B6B000000
      00007B7B7B007B7B7B006B6B6B00848484004A4A4A007B7B7B006B6B6B008484
      840000000000000000000000000000000000000000000000000000000000AD84
      7B00F7EFE700F7EFE700F7EFDE00F7E7D600EFE7C600009C0000009C0000009C
      000031A52100E7D6AD00E7D6A500E7D6A500A5C67300109C0800EFCE9C00EFCE
      9400EFCE9400B58C7B00000000000000000000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      6300000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700000000000000000000000000000000000000000000000000000000000000
      000000000000DE7B000000000000000000000000000000000000848484000000
      0000000000000000000000000000848484000000000000000000848484000000
      000000000000000000000000000000000000000000000000000000000000B58C
      7B00F7EFE700FFF7EF00F7EFE700F7EFDE00EFE7CE00009C0000009C0000009C
      0000009C0000009C0000E7D6AD00EFD6AD00EFD6AD00EFCEA5007BCE7B00EFCE
      9C00EFCE9400B58C7B00000000000000000000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      63000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E7000000000000000000000000000000000000000000000000000000
      0000CE630000CE630000C6631800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B58C
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700EFE7CE00EFE7CE00E7DEC600E7DE
      C600EFDEBD00EFDEB500E7D6AD00F7D6B500EFD6AD00EFD6AD007BCE7B00EFCE
      9C00EFCE9400B58C7B00000000000000000000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      6300000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD8C
      8400FFF7F700FFFFF700FFF7EF007BCE7B00F7EFE700F7EFDE00F7E7D600EFE7
      C600E7DEC600EFDEBD00EFDEB500E7D6AD00E7D6AD00E7D6A500EFD6AD00EFCE
      A500EFCE9C00B58C7B00000000000000000000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      63000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      0000CE630000C6631800C6631800000000000000000094949400A5A5A5009494
      9C00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD94
      8400FFF7F700FFFFFF00FFF7F7007BCE7B00F7EFE700F7EFE700F7EFDE00EFE7
      CE00009C0000009C0000009C0000009C0000009C0000E7D6AD00EFD6AD00EFD6
      FD00EFCEA500B58C7B00000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      6300000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000CE6300000000000000000000000000000000000000000000313131008C8C
      8C006B6B6B000000000084848400848484005A5A5A0052525200000000006363
      630063636300636363000000000000000000000000000000000000000000C694
      8400FFF7F700FFFFFF00FFFFFF00FFF7F700109C1000ADD6A500EFEFD600EFE7
      CE00EFE7CE0031AD2900009C0000009C0000009C0000E7D6AD00F7D6B500EFD6
      FD00EFCEA500B58C7B00000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      63000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000000000000000
      000000000000CE630000000000000000000000000000A5A5A500737373006363
      63005A5A5A006363630063636300A5A5A500636363004A4A4A006B6B6B006363
      6300737373005A5A5A000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF0039AD3900009C000073C66B00CEDE
      B500CEDEB50039AD3900009C0000009C0000009C0000EFDEB500F7DEBD00F7D6
      B500EFD6AD00B58C7B00000000000000000000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      0000CE63000000000000C66318000000000000000000000000008C8C8C000000
      0000A5A5A500949494000000000084848400525252008C8C8C00000000000000
      00007B7B7B00000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF00CEEFCE00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000EFDEBD00F7DEBD00EFDE
      BD00DEC6A5009C847B00000000000000000000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700C6C6C60000E7
      E70000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      0000CE630000C6631800C6631800000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00F7FFF7009CDE9C00009C0000009C
      0000009C0000009C0000009C0000109C1000009C0000E7DEC600EFDEBD00CEBD
      FD00B5AD94009C847B00000000000000000000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      630000000000000000000000000000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CEA5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFF700CEEFCE0073C6
      6B0039AD390039AD390073C66300EFE7CE00009C0000C6D6AD00CEBDAD00BDB5
      A500B5AD9C009C847B00000000000000000000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      63000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000000000000000
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6A5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFF7E700E7DEC600AD84730084845A00AD7B7300AD7B
      7300AD7B7300AD847300000000000000000000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      000000000000CE6300000000000000000000000000007B7B7B00000000004A4A
      4A00313131004A4A4A0042424200424242004242420000000000424242000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B58484000000000000000000000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      000000000000CE63000000000000000000000000000073737300737373005A5A
      5A00313131006363630000000000525252004242420042424200525252000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B58484000000000000000000000000000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000CE630000CE6300000000000000000000000000007B7B7B005A5A5A000000
      000000000000636363006363630063636300000000006B6B6B00636363000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      000000000000CE63000000000000000000000000000000000000000000000000
      0000000000006363630000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
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
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF00FFFFFF000000000000000000FF0C1F00
      0000000000000000FC0007000000000000000000F00001000000000000000000
      E000030000000000000000008000030000000000000000008000030000000000
      0000000080000300000000000000000080000300000000000000000080000300
      0000000000000000800003000000000000000000C00003000000000000000000
      E00007000000000000000000F8000F000000000000000000F8001F0000000000
      00000000FC007F000000000000000000FC00FF000000000000000000FC01FF00
      0000000000000000FC01FF000000000000000000FC01FF000000000000000000
      FC01FF000000000000000000F803FF000000000000000000F803FF0000000000
      00000000F007FF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0001FFFFFFFFFFFF
      8007FFFF0001FFFFFFFFFFFF8001FFFF0001FFFFFF8003FF8000FFFF0001F800
      3F8001FF80007FFF0001F87F3F8000FFC0001FFF0001F83FBF80007FF0000FC0
      0001FC1FFF80003FFC0007C00001FE0FFFC0001FFE0003C00001FF07FFE0000F
      FF0001C00001FF83FFF00007FF0000C00001FF83FFF80003FF0000C00001FF07
      FFFC0001FF8000C00001FE0FFFFE0001C00000C00003FC1FFFFF0001C00000C0
      007FF83FBFFF8001C00000C0007FF87F3FFFC001C00000C0007FF8003FFFE001
      F00000C0007FFFFFFFFFF003FC0000C0007FFFFFFFFFFFFFFF0000E000FFFFFF
      FFFFFFFFFFC000FFFFFFFFFFFFFFFFFFE00003FFFFFFFFFFFFFFFFFFE00003FF
      FFFFFFFFFFFFFFFFE00003FF1FFFFFFFFFFFFFFFE00003F8000F8000FFFFFFFF
      E00003E0000F80007FF1FFCFE00003C0000F80003FF5802FE00003C0000F8000
      1FF9900FE00003C0000F80000FFBDEDFE00003C0000F800007F1FFFFE00003C0
      000F800003FFFFFFE00003C0000F800001F18FFFE00003C0000F800001F7C423
      E00003C0000F800001FB8003E00003C0000F800001F5D237E00003C0000F8000
      01F1FF7FE00003C0000FC00001FFFFFFE00003C0000FE00001F1FFFFE00003C0
      000FF00001FBA05FE00003E0000FF80001FB821FE00007F8000FFC0001F3989F
      E0000FFE1FFFFE0001FBFBFFE0001FFFFFFFFF0001FFFFFFE0003FFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 136
    Top = 312
    PixelsPerInch = 120
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 136
    Top = 368
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = grdLagerBalans
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.CenterTitle.Strings = (
        '[Page # of Pages #]')
      PrinterPage.PageHeader.LeftTitle.Strings = (
        '[Machine Name][User Name]'
        '[Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 39265.827856053240000000
      BuiltInReportLink = True
    end
  end
  object ds_LagBalORT: TDataSource
    DataSet = cds_LagBalORT
    Left = 736
    Top = 368
  end
  object ds_LagGrupp: TDataSource
    DataSet = cds_LagGrupp
    Left = 816
    Top = 360
  end
  object ds_SalesRegion: TDataSource
    DataSet = cds_SalesRegion
    Left = 536
    Top = 248
  end
  object ds_LBSR: TDataSource
    DataSet = cds_LBSR
    Left = 864
    Top = 560
  end
  object pmLBPerDay: TPopupMenu
    Left = 344
    Top = 330
    object acLBPerDay1: TMenuItem
      Action = acLBPerDay
    end
  end
  object cds_Lip: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT LIP.LogicalInventoryPointNo AS LIPNo, LIP.LogicalInventor' +
        'yName AS LAGERGRUPP,'
      'LIP.PhysicalInventoryPointNo AS PIPNo'
      'FROM'
      'dbo.LogicalInventoryPoint AS LIP'
      'WHERE LIP.PhysicalInventoryPointNo = :PIPNo'
      '-- AND LIP.SequenceNo = 1'
      'Order By LIP.LogicalInventoryName')
    Left = 752
    Top = 200
    ParamData = <
      item
        Name = 'PIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LipLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      Required = True
    end
    object cds_LipLAGERGRUPP: TStringField
      FieldName = 'LAGERGRUPP'
      Origin = 'LAGERGRUPP'
      Size = 50
    end
    object cds_LipPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
  end
  object cds_PIP: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT PIP.PhysicalInventoryPointNo AS PIPNo, CY.CITYNAME AS ORT' +
        ', PIP.OwnerNo AS ClientNo'
      'FROM'
      'dbo.PhysicalInventoryPoint AS PIP'
      'Inner Join dbo.CITY CY ON CY.CITYNO = PIP.PhyInvPointNameNo'
      'WHERE PIP.OwnerNo = :ClientNo'
      '-- AND PIP.SequenceNo = 1'
      'Order By CY.CITYNAME')
    Left = 680
    Top = 200
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PIPPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      Required = True
    end
    object cds_PIPORT: TStringField
      FieldName = 'ORT'
      Origin = 'ORT'
      Size = 50
    end
    object cds_PIPClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
    end
  end
  object cds_LagBal: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select '#39'1) ING'#197'ENDE BALANS'#39' AS GRUPP,'
      #39'1.1) Ing'#229'ende lager'#39' AS ITEM,'
      'SUM(ins.AM3) AS AM3,'
      'SUM(ins.NM3) AS NM3,'
      '0.0 AS SubTotal, 1 AS SortOrder,'
      '0.0 AS V'#196'RDE,'
      'sum(ins.NoOfPkgs) AS Pkt'
      'FROM dbo.InvenStatusII ins'
      
        'Inner Join dbo.LogicalInventoryPoint AS LIP on lip.LogicalInvent' +
        'oryPointNo = ins.LogicalInventoryPointNo'
      'WHERE ins.InvDate >= :StartInBalDate'
      'AND ins.InvDate <= :EndInBalDate'
      'AND ins.OwnerNo = :ClientNo'
      'AND ((ins.LogicalInventoryPointNo = :LIPNo) or (-1 = :LIPNo))'
      'AND ((LIP.PhysicalInventoryPointNo = :PIPNo) or (-1 = :PIPNo))'
      '-- AND LIP.SequenceNo = 1'
      '-- Group By ins.RowNo'
      ''
      'UNION'
      ''
      
        'Select inv.GroupName, inv.Item, SUM(inv.AM3) AS AM3, SUM(inv.NM3' +
        ') AS NM3, 0.0 AS SubTotal, inv.SortOrder,'
      '0.0 AS V'#196'RDE, sum(inv.NoOfPkgs) AS Pkt'
      'FROM dbo.InvBalII inv'
      
        'Left Outer Join dbo.LogicalInventoryPoint AS LIP on lip.LogicalI' +
        'nventoryPointNo = inv.LIPNo'
      
        'WHERE ( (inv.[InvDate] >= :StartDate AND inv.[InvDate] <= :EndDa' +
        'te)'
      ' OR ((SortOrder = 71) OR (SortOrder = 72)) )'
      'AND inv.VerkNo  = :ClientNo'
      'AND ((inv.LIPNo = :LIPNo) or (-1 = :LIPNo))'
      'AND ((inv.PIPNo = :PIPNo) or (-1 = :PIPNo))'
      '-- AND ((LIP.SequenceNo = 1) or (LIP.SequenceNo is null))'
      'Group By inv.GroupName, inv.Item, inv.SortOrder'
      ''
      '')
    Left = 608
    Top = 200
    ParamData = <
      item
        Name = 'STARTINBALDATE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'ENDINBALDATE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'STARTDATE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'ENDDATE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object cds_LagBalGRUPP: TStringField
      FieldName = 'GRUPP'
      Origin = 'GRUPP'
      ReadOnly = True
    end
    object cds_LagBalITEM: TStringField
      FieldName = 'ITEM'
      Origin = 'ITEM'
      ReadOnly = True
      Size = 30
    end
    object cds_LagBalSubTotal: TBCDField
      FieldName = 'SubTotal'
      Origin = 'SubTotal'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,###,###,###.0'
      Precision = 1
      Size = 1
    end
    object cds_LagBalNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_LagBalSortOrder: TIntegerField
      FieldName = 'SortOrder'
      Origin = 'SortOrder'
      ReadOnly = True
    end
    object cds_LagBalVÄRDE: TBCDField
      FieldName = 'V'#196'RDE'
      Origin = '[V'#196'RDE]'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,###,###,###.0'
      Precision = 1
      Size = 1
    end
    object cds_LagBalAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_LagBalPkt: TIntegerField
      FieldName = 'Pkt'
      Origin = 'Pkt'
      ReadOnly = True
    end
  end
  object cdsClient: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select Distinct C.ClientNo, C.ClientName FROM dbo.Client C'
      'Inner Join dbo.ClientRole rt on rt.ClientNo = C.ClientNo'
      'WHERE C.SalesRegionNo = :SalesRegionNo'
      'AND (rt.RoleType = 9 or rt.RoleType = 7)'
      'Order by C.ClientName')
    Left = 816
    Top = 200
    ParamData = <
      item
        Name = 'SALESREGIONNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsClientClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClientClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
  end
  object cds_SalesRegion: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'select C.ClientNo, C.ClientName from dbo.Client C'
      'Inner Join dbo.ClientRole rt on rt.ClientNo = C.ClientNo'
      'WHERE rt.RoleType = 7'
      'Order by C.ClientName')
    Left = 536
    Top = 200
    object cds_SalesRegionClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SalesRegionClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
  end
  object cds_LagGrupp: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select LP.GRPNAMN, LIP.PhysicalInventoryPointNo AS PIPNo,'
      'LIP.LogicalInventoryPointNo AS LIPNo'
      ''
      'FROM dbo.LagerPlatser LP'
      
        'Inner Join dbo.LogicalInventoryPoint AS LIP on lip.LogicalInvent' +
        'oryPointNo = LP.LIPNo'
      ''
      ''
      'WHERE'
      'LIP.PhysicalInventoryPointNo = :PIPNo'
      '-- AND LIP.SequenceNo = 1'
      
        'Group By LP.GRPNAMN,  LIP.PhysicalInventoryPointNo, LIP.LogicalI' +
        'nventoryPointNo'
      'Order By LIP.PhysicalInventoryPointNo'
      ''
      '')
    Left = 816
    Top = 312
    ParamData = <
      item
        Name = 'PIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LagGruppGRPNAMN: TStringField
      FieldName = 'GRPNAMN'
      Origin = 'GRPNAMN'
      Size = 50
    end
    object cds_LagGruppPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
    object cds_LagGruppLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      Required = True
    end
  end
  object cds_LagBalORT: TFDQuery
    OnCalcFields = cds_LagBalORTCalcFields
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select ins.OwnerNo, SR.SearchName AS '#196'GARE, LP.ORT, LIP.Physical' +
        'InventoryPointNo AS PIPNo,'
      'SUM(ins.NM3) AS NM3_ING'#197'ENDE,'
      ''
      '(Select SUM(inv.NM3)'
      'FROM dbo.InvBalII inv'
      'Left Outer Join dbo.LagerPlatser LP2 on LP2.LIPNo = inv.LIPNo'
      'WHERE inv.[InvDate] >= :StartDate AND inv.[InvDate] <= :EndDate'
      ''
      'AND inv.VerkNo  = ins.OwnerNo'
      'AND (inv.PIPNo = LIP.PhysicalInventoryPointNo)'
      'AND inv.Typ = 1'
      'Group By Typ)AS NM3_R'#214'RELSE_IN,'
      ''
      '(Select SUM(inv.NM3)'
      'FROM dbo.InvBalII inv'
      'Left Outer Join dbo.LagerPlatser LP2 on LP2.LIPNo = inv.LIPNo'
      
        'WHERE ((inv.[InvDate] >= :StartDate AND inv.[InvDate] <= :EndDat' +
        'e)'
      ' OR (SortOrder = 71) OR (SortOrder = 72))'
      'AND inv.VerkNo  = ins.OwnerNo'
      'AND (inv.PIPNo = LIP.PhysicalInventoryPointNo)'
      'AND inv.Typ = -1'
      'Group By Typ)AS NM3_R'#214'RELSE_UT,'
      ''
      '(Select SUM(pt.Totalm3Nominal)'
      'FROM dbo.Inven_Al_VW ia'
      'inner join dbo.InvControlGrp icg on icg.IC_grpno = ia.IC_GroupNo'
      'inner join dbo.InvenRow inv on inv.IC_GrpNo = icg.IC_grpno'
      
        'Inner Join dbo.LogicalInventoryPoint AS LIP2 on lip2.LogicalInve' +
        'ntoryPointNo = inv.LogicalInventoryPointNo'
      
        'inner join dbo.PackageType pt on pt.PackageTypeNo = inv.PackageT' +
        'ypeNo'
      
        'WHERE ia.IC_SetNo = :SetNo and  LIP2.PhysicalInventoryPointNo = ' +
        'LIP.PhysicalInventoryPointNo) AS NM3_INVENTERAT'
      ''
      'FROM dbo.InvenStatusII ins'
      'Inner Join dbo.Client SR on SR.ClientNo = ins.OwnerNo'
      
        'Inner Join dbo.LogicalInventoryPoint AS LIP on lip.LogicalInvent' +
        'oryPointNo = ins.LogicalInventoryPointNo'
      
        'Left Outer Join dbo.LagerPlatser LP on LP.LIPNo = LIP.LogicalInv' +
        'entoryPointNo'
      ''
      'WHERE ins.InvDate >= :StartInBalDate'
      'AND ins.InvDate <= :EndInBalDate'
      'AND SR.SalesRegionNo = :ClientNo'
      
        'Group By SR.SearchName, LP.ORT,  LIP.PhysicalInventoryPointNo, i' +
        'ns.OwnerNo'
      'Order By SR.SearchName, LP.ORT'
      ''
      '')
    Left = 736
    Top = 312
    ParamData = <
      item
        Name = 'STARTDATE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'ENDDATE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'SETNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'STARTINBALDATE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'ENDINBALDATE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LagBalORTPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
    object cds_LagBalORTNM3_INGÅENDE: TFloatField
      FieldName = 'NM3_ING'#197'ENDE'
      Origin = '[NM3_ING'#197'ENDE]'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_LagBalORTNM3_DIFF: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NM3_DIFF'
      DisplayFormat = '#,###,###,###.0'
      Calculated = True
    end
    object cds_LagBalORTORT: TStringField
      FieldName = 'ORT'
      Origin = 'ORT'
      Size = 50
    end
    object cds_LagBalORTNM3_RÖRELSE_IN: TFloatField
      FieldName = 'NM3_R'#214'RELSE_IN'
      Origin = '[NM3_R'#214'RELSE_IN]'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_LagBalORTNM3_RÖRELSE_UT: TFloatField
      FieldName = 'NM3_R'#214'RELSE_UT'
      Origin = '[NM3_R'#214'RELSE_UT]'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_LagBalORTNM3_UTGAENDE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NM3_UTGAENDE'
      DisplayFormat = '#,###,###,###.0'
      Calculated = True
    end
    object cds_LagBalORTOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object cds_LagBalORTÄGARE: TStringField
      FieldName = #196'GARE'
      Origin = '['#196'GARE]'
      Size = 80
    end
    object cds_LagBalORTNM3_INVENTERAT: TFloatField
      FieldName = 'NM3_INVENTERAT'
      Origin = 'NM3_INVENTERAT'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_LagBalORTNM3_DIFF_INVENT: TFloatField
      DisplayLabel = 'MOT INVENTERING'
      FieldKind = fkCalculated
      FieldName = 'NM3_DIFF_INVENT'
      DisplayFormat = '#,###,###,###.0'
      Calculated = True
    end
  end
  object cds_LBSR: TFDQuery
    OnCalcFields = cds_LBSRCalcFields
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select SR.ClientNo, SR.ClientName AS REGION, SUM(ins.NM3) AS NM3' +
        '_ING'#197'ENDE,'
      ''
      '(Select SUM(inv.NM3)'
      'FROM dbo.InvBalII inv'
      'Left Outer Join dbo.LagerPlatser LP2 on LP2.LIPNo = inv.LIPNo'
      'Inner Join dbo.Client C2 on C2.ClientNo = inv.VerkNo'
      'WHERE inv.[InvDate] >= :StartDate AND inv.[InvDate] <= :EndDate'
      'and c2.SalesRegionNo = C.SalesRegionNo'
      'AND inv.Typ = 1'
      'and LP2.AGARENO = c.SalesRegionNo'
      '-- AND ((LP2.SequenceNo = 1) or (LP2.SequenceNo is null))'
      'Group By Typ)AS IN_NM3,'
      ''
      '(Select SUM(inv.NM3)'
      'FROM dbo.InvBalII inv'
      'Left Outer Join dbo.LagerPlatser LP2 on LP2.LIPNo = inv.LIPNo'
      'Inner Join dbo.Client C2 on C2.ClientNo = inv.VerkNo'
      
        'WHERE ((inv.[InvDate] >= :StartDate AND inv.[InvDate] <= :EndDat' +
        'e)'
      ' OR (SortOrder = 71) OR (SortOrder = 72))'
      'and c2.SalesRegionNo = C.SalesRegionNo'
      'AND inv.Typ = -1'
      'and LP2.AGARENO = c.SalesRegionNo'
      '-- AND ((LP2.SequenceNo = 1) or (LP2.SequenceNo is null))'
      'Group By Typ)AS UT_NM3'
      ''
      'FROM dbo.InvenStatusII ins'
      'Inner Join dbo.Client C on C.ClientNo = ins.OwnerNo'
      'Inner Join dbo.Client SR on SR.ClientNo = C.SalesRegionNo'
      
        '-- Left Outer Join dbo.PackageType pt on pt.PackageTypeNo = ins.' +
        'PackageTypeNo'
      
        'Inner Join dbo.LogicalInventoryPoint AS LIP on lip.LogicalInvent' +
        'oryPointNo = ins.LogicalInventoryPointNo'
      
        'Left Outer Join dbo.LagerPlatser LP on LP.LIPNo = LIP.LogicalInv' +
        'entoryPointNo'
      ''
      'WHERE ins.InvDate >= :StartInBalDate'
      'AND ins.InvDate <= :EndInBalDate'
      '-- AND ((LP.SequenceNo = 1) or (LP.SequenceNo is null))'
      'Group By SR.ClientName, C.SalesRegionNo, SR.ClientNo'
      'Order By SR.ClientName'
      '')
    Left = 864
    Top = 504
    ParamData = <
      item
        Name = 'STARTDATE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'ENDDATE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'STARTINBALDATE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'ENDINBALDATE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object cds_LBSRREGION: TStringField
      FieldName = 'REGION'
      Origin = 'REGION'
      Size = 80
    end
    object cds_LBSRNM3_INGÅENDE: TFloatField
      FieldName = 'NM3_ING'#197'ENDE'
      Origin = '[NM3_ING'#197'ENDE]'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_LBSRIN_NM3: TFloatField
      FieldName = 'IN_NM3'
      Origin = 'IN_NM3'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_LBSRUT_NM3: TFloatField
      FieldName = 'UT_NM3'
      Origin = 'UT_NM3'
      ReadOnly = True
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_LBSRClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      Required = True
    end
    object cds_LBSRNM3_UTGAENDE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NM3_UTGAENDE'
      DisplayFormat = '#,###,###,###.0'
      Calculated = True
    end
    object cds_LBSRNM3_DIFF: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NM3_DIFF'
      DisplayFormat = '#,###,###.0'
      Calculated = True
    end
  end
  object siLangLinked_fLagerBalans: TsiLangLinked
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
    Top = 344
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004C006100670065007200420061006C0061006E00
      730001004C006100670065007200420061006C0061006E007300010001000100
      0D000A004C006100620065006C00390001004600F60072007300E4006C006A00
      6E0069006E006700730072006500670069006F006E003A000100010001000D00
      0A004C006100620065006C0031003100010050004500520049004F0044002000
      200046004F004D000100010001000D000A004C006100620065006C0034000100
      54004F004D000100010001000D000A004C006100620065006C0032000100C400
      67006100720065003A000100010001000D000A004C006100620065006C003300
      01004D00E5006E002F00C50072003A000100010001000D000A004C0061006200
      65006C003500010044006100740075006D003A000100010001000D000A004200
      69007400420074006E003600010045006A0020006200650073007400E4006D00
      6400610020006C00610067006500720067007200750070007000650072000100
      010001000D000A0042007500740074006F006E0031000100730071005F004C00
      4200530052000100010001000D000A0042007500740074006F006E0032000100
      730071005F004C0061006700420061006C004F00520054000100010001000D00
      0A0042007500740074006F006E0033000100730071005F004C00610067004200
      61006C000100010001000D000A006700720064004C0061006700650072004200
      61006C0061006E007300440042005400610062006C0065005600690065007700
      3100470052005500500050000100470052005500500050000100010001000D00
      0A006700720064004C006100670065007200420061006C0061006E0073004400
      42005400610062006C006500560069006500770031004900540045004D000100
      4200450053004B005200490056004E0049004E0047000100010001000D000A00
      6700720064004C006100670065007200420061006C0061006E00730044004200
      5400610062006C006500560069006500770031004E004D00330001004E004D00
      33000100010001000D000A006700720064004C00610067006500720042006100
      6C0061006E007300440042005400610062006C00650056006900650077003100
      53007500620054006F00740061006C000100530055004200200054004F005400
      41004C000100010001000D000A006700720064004C0061006700650072004200
      61006C0061006E007300440042005400610062006C0065005600690065007700
      3100560052004400450001005600C4005200440045000100010001000D000A00
      6700720064004C006100670065007200420061006C0061006E00730044004200
      5400610062006C0065005600690065007700310050006B007400010050006B00
      74000100010001000D000A00500061006E0065006C0032000100500061006E00
      65006C0032000100010001000D000A006700720064004C006100670065007200
      420061006C0061006E0073004F0052005400440042005400610062006C006500
      560069006500770032004700520050004E0041004D004E0001004C0041004700
      45005200470052005500500050000100010001000D000A006700720064004C00
      6100670065007200420061006C0061006E0073004F0052005400440042005400
      610062006C006500560069006500770032005000490050004E006F0001005000
      490050004E006F000100010001000D000A006700720064004C00610067006500
      7200420061006C0061006E0073004F0052005400440042005400610062006C00
      6500560069006500770032004C00490050004E006F0001004C00490050004E00
      6F000100010001000D000A006700720064004C00610067006500720042006100
      6C0061006E0073004F005200540044004200420061006E006400650064005400
      610062006C006500560069006500770031005000490050004E006F0001005000
      490050004E006F000100010001000D000A006700720064004C00610067006500
      7200420061006C0061006E0073004F005200540044004200420061006E006400
      650064005400610062006C006500560069006500770031004E004D0033005F00
      49004E00470045004E0044004500010049004E004700C50045004E0044004500
      0100010001000D000A006700720064004C006100670065007200420061006C00
      61006E0073004F005200540044004200420061006E0064006500640054006100
      62006C006500560069006500770031004E004D0033005F005500540047004100
      45004E00440045000100550054004700410045004E0044004500010001000100
      0D000A006700720064004C006100670065007200420061006C0061006E007300
      4F005200540044004200420061006E006400650064005400610062006C006500
      560069006500770031004E004D0033005F004400490046004600010044004900
      4600460020006600670020004C0042000100010001000D000A00670072006400
      4C006100670065007200420061006C0061006E0073004F005200540044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4F005200540001004F00520054000100010001000D000A006700720064004C00
      6100670065007200420061006C0061006E0073004F0052005400440042004200
      61006E006400650064005400610062006C006500560069006500770031004E00
      4D0033005F005200520045004C00530045005F0049004E00010049004E000100
      010001000D000A006700720064004C006100670065007200420061006C006100
      6E0073004F005200540044004200420061006E00640065006400540061006200
      6C006500560069006500770031004E004D0033005F005200520045004C005300
      45005F00550054000100550054000100010001000D000A006700720064004C00
      6100670065007200420061006C0061006E0073004F0052005400440042004200
      61006E006400650064005400610062006C006500560069006500770031004700
      4100520045000100C40047004100520045000100010001000D000A0067007200
      6400530061006C006500730052006500670069006F006E004400420042006100
      6E006400650064005400610062006C0065005600690065007700310052004500
      470049004F004E00010052004500470049004F004E000100010001000D000A00
      670072006400530061006C006500730052006500670069006F006E0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4E004D0033005F0049004E00470045004E004400450001004E004D0033005F00
      49004E004700C50045004E00440045000100010001000D000A00670072006400
      530061006C006500730052006500670069006F006E0044004200420061006E00
      6400650064005400610062006C006500560069006500770031004E004D003300
      5F00550054004700410045004E004400450001004E004D0033005F0055005400
      4700410045004E00440045000100010001000D000A0067007200640053006100
      6C006500730052006500670069006F006E0044004200420061006E0064006500
      64005400610062006C0065005600690065007700310049004E005F004E004D00
      3300010049004E005F004E004D0033000100010001000D000A00670072006400
      530061006C006500730052006500670069006F006E0044004200420061006E00
      6400650064005400610062006C00650056006900650077003100550054005F00
      4E004D0033000100550054005F004E004D0033000100010001000D000A006700
      72006400530061006C006500730052006500670069006F006E00440042004200
      61006E006400650064005400610062006C006500560069006500770031004E00
      4D0033005F00440049004600460001004E004D0033005F004400490046004600
      0100010001000D000A0061006300520065006600720065007300680001002600
      5500700070006400610074006500720061000100010001000D000A0061006300
      5000720069006E007400010053006B0072006900760020007500740001000100
      01000D000A0061006300470065007400430075007200720065006E0074004D00
      6F006E0074006800010041006B007400750065006C006C0020006D00E5006E00
      610064000100010001000D000A00610063004700650074005000720065007600
      4D006F006E007400680001004600F6007200650067002E000100010001000D00
      0A00610063004700650074004E006500780074004D006F006E00740068000100
      4E00E4007300740061000100010001000D000A00610063004400650074006100
      69006C0049006E0066006F0072006D006100740069006F006E00010049006E00
      66006F0072006D006100740069006F006E000100010001000D000A0061006300
      43006C006F0073006500010053007400E4006E0067000100010001000D000A00
      6100630049006E00760065006E0074006F00720079004D006900730073006900
      6E006700010045006A0020006200650073007400E4006D006400610001000100
      01000D000A00610063004C00420050006500720044006100790001004C006100
      670065007200620061006C0061006E0073002000700065007200200064006100
      67000100010001000D000A006400780043006F006D0070006F006E0065006E00
      74005000720069006E0074006500720031004C0069006E006B00310001004E00
      650077005200650070006F00720074000100010001000D000A00630078004C00
      6100620065006C003100010049006E00760065006E0074006500720069006E00
      670073007300650074003A000100010001000D000A0063006200460069006C00
      7400650072005A00650072006F0073000100460069006C007400720065007200
      6100200062006F0072007400200030003A006F0072000100010001000D000A00
      6700720064004C006100670065007200420061006C0061006E0073004F005200
      540044004200420061006E006400650064005400610062006C00650056006900
      6500770031004E004D0033005F0049004E00560045004E005400450052004100
      5400010049004E00560045004E00540045005200410054000100010001000D00
      0A006700720064004C006100670065007200420061006C0061006E0073004F00
      5200540044004200420061006E006400650064005400610062006C0065005600
      69006500770031004E004D0033005F0044004900460046005F0049004E005600
      45004E00540001004D004F005400200049004E00560045004E00540045005200
      49004E0047000100010001000D000A0073007400480069006E00740073005F00
      55006E00690063006F00640065000D000A007300740044006900730070006C00
      610079004C006100620065006C0073005F0055006E00690063006F0064006500
      0D000A006D007400460069006C0074006500720043006C00690065006E007400
      4E006F00010043006C00690065006E0074004E006F00010001000D000A006D00
      7400460069006C00740065007200530074006100720074004400610074006500
      0100530074006100720074004400610074006500010001000D000A006D007400
      460069006C0074006500720045006E0064004400610074006500010045006E00
      64004400610074006500010001000D000A006D007400460069006C0074006500
      72005600450052004B0001005600450052004B00010001000D000A006D007400
      460069006C00740065007200530061006C006500730052006500670069006F00
      6E004E006F000100530061006C006500730052006500670069006F006E004E00
      6F00010001000D000A006D007400460069006C00740065007200530061006C00
      6500730052006500670069006F006E000100530061006C006500730052006500
      670069006F006E00010001000D000A006D007400460069006C00740065007200
      4C00490050004E006F0001004C00490050004E006F00010001000D000A006300
      640073005F004C00690070004C00490050004E006F0001004C00490050004E00
      6F00010001000D000A006300640073005F004C00690070004C00410047004500
      52004700520055005000500001004C0041004700450052004700520055005000
      5000010001000D000A006300640073005F004C00690070005000490050004E00
      6F0001005000490050004E006F00010001000D000A006300640073005F005000
      490050005000490050004E006F0001005000490050004E006F00010001000D00
      0A006300640073005F005000490050004F005200540001004F00520054000100
      01000D000A006300640073005F0050004900500043006C00690065006E007400
      4E006F00010043006C00690065006E0074004E006F00010001000D000A006300
      640073005F004C0061006700420061006C004700520055005000500001004700
      5200550050005000010001000D000A006300640073005F004C00610067004200
      61006C004900540045004D0001004900540045004D00010001000D000A006300
      640073005F004C0061006700420061006C0053007500620054006F0074006100
      6C00010053007500620054006F00740061006C00010001000D000A0063006400
      73005F004C0061006700420061006C004E004D00330001004E004D0033000100
      01000D000A006300640073005F004C0061006700420061006C0053006F007200
      74004F007200640065007200010053006F00720074004F007200640065007200
      010001000D000A006300640073005F004C0061006700420061006C005600C400
      52004400450001005600C400520044004500010001000D000A00630064007300
      5F004C0061006700420061006C0041004D003300010041004D00330001000100
      0D000A006300640073005F004C0061006700420061006C0050006B0074000100
      50006B007400010001000D000A0063006400730043006C00690065006E007400
      43006C00690065006E0074004E006F00010043006C00690065006E0074004E00
      6F00010001000D000A0063006400730043006C00690065006E00740043006C00
      690065006E0074004E0061006D006500010043006C00690065006E0074004E00
      61006D006500010001000D000A006300640073005F00530061006C0065007300
      52006500670069006F006E0043006C00690065006E0074004E006F0001004300
      6C00690065006E0074004E006F00010001000D000A006300640073005F005300
      61006C006500730052006500670069006F006E0043006C00690065006E007400
      4E0061006D006500010043006C00690065006E0074004E0061006D0065000100
      01000D000A006300640073005F004C0061006700470072007500700070004700
      520050004E0041004D004E0001004700520050004E0041004D004E0001000100
      0D000A006300640073005F004C00610067004700720075007000700050004900
      50004E006F0001005000490050004E006F00010001000D000A00630064007300
      5F004C0061006700470072007500700070004C00490050004E006F0001004C00
      490050004E006F00010001000D000A006300640073005F004C00610067004200
      61006C004F00520054005000490050004E006F0001005000490050004E006F00
      010001000D000A006300640073005F004C0061006700420061006C004F005200
      54004E004D0033005F0049004E004700C50045004E004400450001004E004D00
      33005F0049004E004700C50045004E0044004500010001000D000A0063006400
      73005F004C0061006700420061006C004F00520054004E004D0033005F004400
      49004600460001004E004D0033005F004400490046004600010001000D000A00
      6300640073005F004C0061006700420061006C004F00520054004F0052005400
      01004F0052005400010001000D000A006300640073005F004C00610067004200
      61006C004F00520054004E004D0033005F005200D600520045004C0053004500
      5F0049004E0001004E004D0033005F005200D600520045004C00530045005F00
      49004E00010001000D000A006300640073005F004C0061006700420061006C00
      4F00520054004E004D0033005F005200D600520045004C00530045005F005500
      540001004E004D0033005F005200D600520045004C00530045005F0055005400
      010001000D000A006300640073005F004C0061006700420061006C004F005200
      54004E004D0033005F00550054004700410045004E004400450001004E004D00
      33005F00550054004700410045004E0044004500010001000D000A0063006400
      73005F004C0061006700420061006C004F00520054004F0077006E0065007200
      4E006F0001004F0077006E00650072004E006F00010001000D000A0063006400
      73005F004C0061006700420061006C004F0052005400C4004700410052004500
      0100C4004700410052004500010001000D000A006300640073005F004C004200
      5300520052004500470049004F004E00010052004500470049004F004E000100
      01000D000A006300640073005F004C004200530052004E004D0033005F004900
      4E004700C50045004E004400450001004E004D0033005F0049004E004700C500
      45004E0044004500010001000D000A006300640073005F004C00420053005200
      49004E005F004E004D003300010049004E005F004E004D003300010001000D00
      0A006300640073005F004C00420053005200550054005F004E004D0033000100
      550054005F004E004D003300010001000D000A006300640073005F004C004200
      5300520043006C00690065006E0074004E006F00010043006C00690065006E00
      74004E006F00010001000D000A006300640073005F004C004200530052004E00
      4D0033005F00550054004700410045004E004400450001004E004D0033005F00
      550054004700410045004E0044004500010001000D000A006300640073005F00
      4C004200530052004E004D0033005F00440049004600460001004E004D003300
      5F004400490046004600010001000D000A006300640073005F004C0061006700
      420061006C004F00520054004E004D0033005F0049004E00560045004E005400
      450052004100540001004E004D0033005F0049004E00560045004E0054004500
      5200410054000100010001000D000A006300640073005F004C00610067004200
      61006C004F00520054004E004D0033005F0044004900460046005F0049004E00
      560045004E00540001004D004F005400200049004E00560045004E0054004500
      520049004E0047000100010001000D000A007300740046006F006E0074007300
      5F0055006E00690063006F00640065000D000A00540066004C00610067006500
      7200420061006C0061006E00730001004D0053002000530061006E0073002000
      5300650072006900660001004D0053002000530061006E007300200053006500
      72006900660001005400610068006F006D0061000D000A00500061006E006500
      6C004C0061006700650072004E0061006D006E0001004D005300200053006100
      6E007300200053006500720069006600010001005400610068006F006D006100
      0D000A00630078005300740079006C006500310001004D005300200053006100
      6E007300200053006500720069006600010001005400610068006F006D006100
      0D000A006400780043006F006D0070006F006E0065006E007400500072006900
      6E0074006500720031004C0069006E006B0031000100540069006D0065007300
      20004E0065007700200052006F006D0061006E00010001005400610068006F00
      6D0061000D000A00730074004D0075006C00740069004C0069006E0065007300
      5F0055006E00690063006F00640065000D000A00630062004D006F006E007400
      6800530074006100720074002E00500072006F00700065007200740069006500
      73002E004900740065006D007300010031002C0032002C0033002C0034002C00
      35002C0036002C0037002C0038002C0039002C00310030002C00310031002C00
      31003200010001000D000A006300620059006500610072005300740061007200
      74002E00500072006F0070006500720074006900650073002E00490074006500
      6D007300010032003000300037002C0032003000300038002C00320030003000
      39002C003200300031003000010001000D000A00630062005900650061007200
      45006E0064002E00500072006F0070006500720074006900650073002E004900
      740065006D007300010032003000300037002C0032003000300038002C003200
      3000300039002C003200300031003000010001000D000A00630062004D006F00
      6E007400680045006E0064002E00500072006F00700065007200740069006500
      73002E004900740065006D007300010031002C0032002C0033002C0034002C00
      35002C0036002C0037002C0038002C0039002C00310030002C00310031002C00
      31003200010001000D000A007300740053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A004900440053005F00310001004C00
      4100470045005200420041004C0041004E00530020000100010001000D000A00
      4900440053005F003200010050006500720069006F0064002000010001000100
      0D000A004900440053005F00330001004C006100670065007200200001000100
      01000D000A004900440053005F00340001002F0045006A002000620065007300
      7400E4006D006400610020006C00610067006500720067007200750070007000
      650072000100010001000D000A004900440053005F00350001004C0061006700
      65007200620061006C0061006E00730020006C006F0067006700200001000100
      01000D000A00730074004F00740068006500720053007400720069006E006700
      73005F0055006E00690063006F00640065000D000A00630062004D006F006E00
      74006800530074006100720074002E0054006500780074000100310030000100
      01000D000A00630062005900650061007200530074006100720074002E005400
      65007800740001003200300030003700010001000D000A006300620059006500
      6100720045006E0064002E005400650078007400010032003000300037000100
      01000D000A00630062004D006F006E007400680045006E0064002E0054006500
      78007400010031003000010001000D000A006400780043006F006D0070006F00
      6E0065006E0074005000720069006E0074006500720031004C0069006E006B00
      31002E00440065007300690067006E0065007200430061007000740069006F00
      6E00010046006F0072006D006100740020005200650070006F00720074000100
      01000D000A007400650049006E00760065006E0074006500720069006E006700
      73005300650074002E0054006500780074000100320031000100010001000D00
      0A007300740043006F006C006C0065006300740069006F006E0073005F005500
      6E00690063006F00640065000D000A006700720064004C006100670065007200
      420061006C0061006E0073004F005200540044004200420061006E0064006500
      64005400610062006C006500560069006500770031002E00420061006E006400
      73005B0030005D002E00430061007000740069006F006E000100C40047004100
      520045002F004F0052005400010001000D000A006700720064004C0061006700
      65007200420061006C0061006E0073004F005200540044004200420061006E00
      6400650064005400610062006C006500560069006500770031002E0042006100
      6E00640073005B0031005D002E00430061007000740069006F006E0001004C00
      4100470045005200420041004C0041004E00530020004E004D00330001000100
      0D000A006700720064004C006100670065007200420061006C0061006E007300
      4F005200540044004200420061006E006400650064005400610062006C006500
      560069006500770031002E00420061006E00640073005B0032005D002E004300
      61007000740069006F006E0001005200D600520045004C005300450052002000
      4E004D003300010001000D000A006700720064004C0061006700650072004200
      61006C0061006E0073004F005200540044004200420061006E00640065006400
      5400610062006C006500560069006500770031002E00420061006E0064007300
      5B0033005D002E00430061007000740069006F006E0001004600D6005200C400
      4E004400520049004E00470020004E004D003300010001000D000A0067007200
      6400530061006C006500730052006500670069006F006E004400420042006100
      6E006400650064005400610062006C006500560069006500770031002E004200
      61006E00640073005B0030005D002E00430061007000740069006F006E000100
      52004500470049004F004E00010001000D000A00670072006400530061006C00
      6500730052006500670069006F006E0044004200420061006E00640065006400
      5400610062006C006500560069006500770031002E00420061006E0064007300
      5B0031005D002E00430061007000740069006F006E0001004C00410047004500
      5200420041004C0041004E005300010001000D000A0067007200640053006100
      6C006500730052006500670069006F006E0044004200420061006E0064006500
      64005400610062006C006500560069006500770031002E00420061006E006400
      73005B0032005D002E00430061007000740069006F006E0001005200D6005200
      45004C00530045005200010001000D000A00670072006400530061006C006500
      730052006500670069006F006E0044004200420061006E006400650064005400
      610062006C006500560069006500770031002E00420061006E00640073005B00
      33005D002E00430061007000740069006F006E0001004600D6005200C4004E00
      4400520049004E004700010001000D000A007300740043006800610072005300
      6500740073005F0055006E00690063006F00640065000D000A00540066004C00
      6100670065007200420061006C0061006E007300010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A00500061006E006500
      6C004C0061006700650072004E0061006D006E00010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A006300780053007400
      79006C00650031000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A006400780043006F006D0070006F006E0065006E00
      74005000720069006E0074006500720031004C0069006E006B00310001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F0043004800410052005300450054000D000A00}
  end
end
