object fInvCreateManyCtrlList: TfInvCreateManyCtrlList
  Left = 235
  Top = 116
  Caption = 'Skapa inventeringar'
  ClientHeight = 739
  ClientWidth = 1266
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1266
    Height = 161
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1266
      161)
    object bRefresh: TcxButton
      Left = 14
      Top = 5
      Width = 90
      Height = 47
      Action = acRefresh
      OptionsImage.Layout = blGlyphTop
      TabOrder = 0
    end
    object bCloseForm: TcxButton
      Left = 1168
      Top = 5
      Width = 84
      Height = 47
      Action = acClose
      Anchors = [akTop, akRight]
      OptionsImage.Layout = blGlyphTop
      TabOrder = 13
    end
    object deStartPeriod: TcxDBDateEdit
      Left = 330
      Top = 115
      DataBinding.DataField = 'StartFilterOnMaxDate'
      DataBinding.DataSource = dmInvCtrl.ds_InvCtrlSet
      Properties.Kind = ckDateTime
      TabOrder = 16
      Visible = False
      OnExit = deStartPeriodExit
      Width = 161
    end
    object deEndPeriod: TcxDBDateEdit
      Left = 330
      Top = 137
      DataBinding.DataField = 'EndFilterOnMaxDate'
      DataBinding.DataSource = dmInvCtrl.ds_InvCtrlSet
      Properties.Kind = ckDateTime
      TabOrder = 17
      Visible = False
      OnExit = deEndPeriodExit
      Width = 161
    end
    object cxLabel1: TcxLabel
      Left = 330
      Top = 96
      Caption = 'Urval p'#229' maxdatum'
      Visible = False
    end
    object bCreateInventeringar: TcxButton
      Left = 14
      Top = 55
      Width = 90
      Height = 49
      Action = acCreateMarkeradeInventeringar
      OptionsImage.Layout = blGlyphTop
      TabOrder = 3
    end
    object cxLabel2: TcxLabel
      Left = 793
      Top = 114
      Anchors = [akTop, akRight]
      Caption = 
        'Skapa inventeringar genom att markera lagergrupper i listan och ' +
        'klicka p'#229' "Skapa inventeringar"'
    end
    object cxLabel3: TcxLabel
      Left = 793
      Top = 129
      Anchors = [akTop, akRight]
      Caption = 'F'#246'r verk samlas alla lagergrupper i en inventering.'
    end
    object cxLabel4: TcxLabel
      Left = 1016
      Top = 129
      Caption = 'F'#246'r VW skapas en inventering per lagergrupp.'
    end
    object cxLabel5: TcxLabel
      Left = 330
      Top = 39
      Caption = 'Maxdatum:'
    end
    object bOpenInventoryCount: TcxButton
      Left = 992
      Top = 5
      Width = 89
      Height = 47
      Action = acOpenInv
      Anchors = [akTop, akRight]
      ModalResult = 1
      OptionsImage.Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000220B0000220B00000001000000000000006B00000073
        080008730800087B080008731000087B100008841000088C1000089410001084
        180008941800089C180008A5180008AD180010AD210018AD290021AD310021AD
        390021BD390029AD4A0029BD4A0031BD4A0029C64A0031AD520039BD5A0039C6
        5A0039BD630042CE6B004AD66B004AD67B0052DE84005AE78C005AEF940010A5
        D60018A5D60021A5D60021ADD60029ADD60029ADDE0031ADDE0029B5DE0031B5
        DE0039B5DE0042B5DE0039BDDE004ABDDE0039BDE70042BDE7004ABDE7005ABD
        E70063BDE7004AC6E70052C6E7005AC6E70063C6E70073C6E70052CEE7005ACE
        E7007BCEE70052CEEF005ACEEF007BCEEF008CCEEF005AD6EF0063D6EF0084D6
        EF0094D6EF0063DEEF005ACEF70063D6F7006BD6F70063DEF70073DEF700ADDE
        F7007BE7F70094E7F700BDE7F70094EFF700BDEFF700FF00FF0073DEFF007BE7
        FF0084E7FF007BEFFF0084EFFF008CEFFF009CEFFF0084F7FF008CF7FF0094F7
        FF009CF7FF00A5F7FF00B5F7FF00C6F7FF00CEF7FF008CFFFF0094FFFF009CFF
        FF00A5FFFF00B5FFFF00BDFFFF00C6FFFF00CEFFFF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004F4F4F4F4F4F
        4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F
        4F4F4F4F4F4F4F4F4F4F4F232323352F2523224F4F4F4F4F4F4F4F4F4F4F4F4F
        4F4F4F2249636159554A46342B2523224F4F4F4F4F4F4F4F4F4F4F2132665859
        595959595855483C33292322224F4F4F4F4F4F232B4E61595959595858585959
        55555240274F4F4F4F4F4F25354263585959595858555555555555523C234F4F
        4F4F4F254A365D5859595958585555555555554A482C4F4F4F4F4F254D384C61
        5959595858555555555555485040224F4F4F4F2556433E645859595858555555
        555555484855254F4F4F4F254D582D5E6259585858555555555555480509334F
        4F4F4F254D613F324C4E5D5D645A5455555555021A1D09224F4F4F2556605940
        38353636374C5C54555500171F1F18044F4F4F255660596160595554402B495D
        590213201E1C1011024F4F255660595959595959594A2F3A021017181B191410
        10014F255A605959595959585859553F020202041515020202024F255B605959
        5959595858585559555354021112024F4F4F4F255C6059595959595656565656
        56565A040F0E024F4F4F4F223A63606059595427272A2B2B2D2D31060E0B024F
        4F4F4F4F23414B4B565B39214F4F4F4F4F4F020B0E06024F4F4F4F4F4F222323
        2525234F4F4F4F4F4F060B0C07024F4F4F4F4F4F4F4F4F4F4F4F4F4F4F020209
        0A0A0A05024F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F02040202024F4F4F4F4F
        4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F}
      OptionsImage.Layout = blGlyphTop
      TabOrder = 11
    end
    object bPrint: TcxButton
      Left = 1083
      Top = 5
      Width = 83
      Height = 47
      Action = acPrint
      Anchors = [akTop, akRight]
      OptionsImage.Layout = blGlyphTop
      TabOrder = 12
    end
    object bExportExcel: TcxButton
      Left = 776
      Top = 5
      Width = 107
      Height = 47
      Action = acExportToExcel
      Anchors = [akTop, akRight]
      OptionsImage.Layout = blGlyphTop
      TabOrder = 9
    end
    object lcOWNER: TcxDBLookupComboBox
      Left = 497
      Top = 115
      DataBinding.DataField = 'OWNER'
      DataBinding.DataSource = dsUserProp
      Properties.ClearKey = 46
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 14
      Visible = False
      Width = 201
    end
    object cxLabel6: TcxLabel
      Left = 497
      Top = 96
      Caption = 'Urval p'#229' '#228'gare'
      Visible = False
    end
    object bGenerateValues: TcxButton
      Left = 110
      Top = 55
      Width = 90
      Height = 49
      Action = acCollectPackageValues
      TabOrder = 4
      WordWrap = True
    end
    object icStatus: TcxDBImageComboBox
      Left = 497
      Top = 137
      DataBinding.DataField = 'LengthFormatNo'
      DataBinding.DataSource = dsUserProp
      Properties.Items = <
        item
          Description = 'Ny'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Aktiv'
          Value = 1
        end
        item
          Description = 'Godk'#228'nd'
          Value = 2
        end
        item
          Description = 'Godk'#228'nd + prissatt '
          Value = 3
        end
        item
          Description = 'Ej inventerade'
          Value = 4
        end
        item
          Description = 'Alla'
          Value = 5
        end>
      TabOrder = 15
      Visible = False
      Width = 201
    end
    object bExportLagerformat: TcxButton
      Left = 884
      Top = 5
      Width = 107
      Height = 47
      Action = acExportInventory
      Anchors = [akTop, akRight]
      OptionsImage.Layout = blGlyphTop
      TabOrder = 10
    end
    object bNewFromMall: TcxButton
      Left = 206
      Top = 6
      Width = 107
      Height = 46
      Action = acNewInvenSET
      OptionsImage.Layout = blGlyphTop
      TabOrder = 2
      WordWrap = True
    end
    object bInvMALL: TcxButton
      Left = 110
      Top = 5
      Width = 90
      Height = 47
      Action = acSetMall
      OptionsImage.Layout = blGlyphTop
      TabOrder = 1
    end
    object deMaxDatum: TcxDBDateEdit
      Left = 440
      Top = 38
      DataBinding.DataField = 'MaxDatum'
      DataBinding.DataSource = dmInvCtrl.ds_InvCtrlSet
      TabOrder = 24
      OnExit = deMaxDatumExit
      Width = 184
    end
    object teSETNo: TcxDBTextEdit
      Left = 440
      Top = 11
      DataBinding.DataField = 'IC_SETNo'
      DataBinding.DataSource = dmInvCtrl.ds_InvCtrlSet
      TabOrder = 25
      Width = 65
    end
    object cxLabel8: TcxLabel
      Left = 330
      Top = 15
      Caption = 'Inventerings gruppnr:'
    end
    object bShowPricegroups: TcxButton
      Left = 206
      Top = 55
      Width = 107
      Height = 49
      Action = acPriceGroups
      OptionsImage.Layout = blGlyphTop
      TabOrder = 5
    end
    object bCopyKalkPriceToNM3: TcxButton
      Left = 14
      Top = 110
      Width = 90
      Height = 47
      Action = acCopyCalcPriceToNM3
      OptionsImage.Layout = blGlyphTop
      TabOrder = 6
      WordWrap = True
    end
    object bUpdateAvgPrice: TcxButton
      Left = 110
      Top = 108
      Width = 90
      Height = 49
      Action = aUpdateAvgPrice
      TabOrder = 7
      WordWrap = True
    end
    object bSelectInventorySet: TcxButton
      Left = 664
      Top = 5
      Width = 106
      Height = 47
      Action = acSelectInventorySET
      TabOrder = 8
      WordWrap = True
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 440
      Top = 65
      DataBinding.DataField = 'Note'
      DataBinding.DataSource = dmInvCtrl.ds_InvCtrlSet
      TabOrder = 27
      Width = 184
    end
    object cxLabel7: TcxLabel
      Left = 330
      Top = 66
      Caption = 'Notering:'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 161
    Width = 1266
    Height = 559
    Align = alClient
    TabOrder = 1
    object grdCreateInvs: TcxGrid
      Left = 1
      Top = 1
      Width = 1264
      Height = 557
      Align = alClient
      TabOrder = 0
      object grdCreateInvsView: TcxGridDBBandedTableView
        PopupMenu = dxBarPopupMenu1
        Navigator.Buttons.CustomButtons = <>
        OnEditing = grdCreateInvsViewEditing
        DataController.DataSource = dmInvCtrl.ds_CreateInvs
        DataController.KeyFieldNames = 'InvNr;LIPNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#########'
            Kind = skSum
            FieldName = 'ResultalistaPkt'
            Column = grdCreateInvsViewResultalistaPkt
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'ResultatlistaNM3'
            Column = grdCreateInvsViewResultatlistaNM3
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'KontrollistaNM3'
            Column = grdCreateInvsViewKontrollistaNM3
          end
          item
            Format = '#########'
            Kind = skSum
            FieldName = 'KontrollistaPkt'
            Column = grdCreateInvsViewKontrollistaPkt
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'NM3'
            Column = grdCreateInvsViewNM3
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'V'#228'rde'
            Column = grdCreateInvsViewVrde
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.Indicator = True
        Bands = <
          item
            Caption = 'Inventering/Lager'
            Width = 688
          end
          item
            Caption = 'Lager/Kontrollista'
            Width = 138
          end
          item
            Caption = 'Resultat volym'
            Width = 138
          end
          item
            Caption = 'Resultat v'#228'rde'
          end>
        object grdCreateInvsViewInvNr: TcxGridDBBandedColumn
          DataBinding.FieldName = 'InvNr'
          PropertiesClassName = 'TcxTextEditProperties'
          Width = 26
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdCreateInvsViewgare: TcxGridDBBandedColumn
          DataBinding.FieldName = #196'gare'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 73
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdCreateInvsViewLS: TcxGridDBBandedColumn
          Caption = 'Lagerst'#228'lle'
          DataBinding.FieldName = 'LS'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 86
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object grdCreateInvsViewLG: TcxGridDBBandedColumn
          Caption = 'Lagergrupp'
          DataBinding.FieldName = 'LG'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 68
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object grdCreateInvsViewKontrollistaPkt: TcxGridDBBandedColumn
          DataBinding.FieldName = 'KontrollistaPkt'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ReadOnly = True
          Width = 64
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdCreateInvsViewKontrollistaNM3: TcxGridDBBandedColumn
          DataBinding.FieldName = 'KontrollistaNM3'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ReadOnly = True
          Width = 99
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdCreateInvsViewResultalistaPkt: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ResultalistaPkt'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ReadOnly = True
          Width = 58
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdCreateInvsViewResultatlistaNM3: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ResultatlistaNM3'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ReadOnly = True
          Width = 104
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdCreateInvsViewLIPNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LIPNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          VisibleForCustomization = False
          Width = 32
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object grdCreateInvsViewInventera: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Inventera'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 33
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdCreateInvsViewIntVerk: TcxGridDBBandedColumn
          Caption = 'Verk'
          DataBinding.FieldName = 'IntVerk'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 43
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object grdCreateInvsViewOwnerNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'OwnerNo'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object grdCreateInvsViewPIPNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PIPNo'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object grdCreateInvsViewInventeringsdatum: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Inventeringsdatum'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = True
          Width = 54
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object grdCreateInvsViewStatus: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Status'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = 'Ej inventerad'
              ImageIndex = 0
              Value = -1
            end
            item
              Description = 'Ny'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'Aktiv'
              Value = 1
            end
            item
              Description = 'Godk'#228'nd'
              Value = 2
            end
            item
              Description = 'Godk'#228'nd && prissatt'
              Value = 3
            end>
          Properties.ReadOnly = True
          Width = 63
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object grdCreateInvsViewSkapadAv: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SkapadAv'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 89
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object grdCreateInvsViewmaxdatum: TcxGridDBBandedColumn
          DataBinding.FieldName = 'maxdatum'
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object grdCreateInvsViewVrde: TcxGridDBBandedColumn
          DataBinding.FieldName = 'V'#228'rde'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ReadOnly = True
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdCreateInvsViewNM3: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NM3'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ReadOnly = True
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdCreateInvsViewMedelpris: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Medelpris'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ReadOnly = True
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
      end
      object grdCreateInvsLevel1: TcxGridLevel
        GridView = grdCreateInvsView
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 720
    Width = 1266
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object ActionList1: TActionList
    Images = imglistActions
    Left = 152
    Top = 232
    object acClose: TAction
      Caption = 'St'#228'ng F12'
      ImageIndex = 0
      ShortCut = 123
      OnExecute = acCloseExecute
    end
    object acRefresh: TAction
      Caption = 'Uppdatera F9'
      ImageIndex = 1
      ShortCut = 120
      OnExecute = acRefreshExecute
    end
    object acCreateMarkeradeInventeringar: TAction
      Caption = 'Skapa invent.'
      ImageIndex = 22
      OnExecute = acCreateMarkeradeInventeringarExecute
    end
    object acPrint: TAction
      Caption = 'Skriv ut'
      ImageIndex = 4
      OnExecute = acPrintExecute
    end
    object acExportToExcel: TAction
      Caption = 'Exportera (excel)'
      ImageIndex = 3
      OnExecute = acExportToExcelExecute
    end
    object acOpenInv: TAction
      Caption = #214'ppna'
      ImageIndex = 2
      OnExecute = acOpenInvExecute
      OnUpdate = acOpenInvUpdate
    end
    object aUpdateAvgPrice: TAction
      Caption = 'Uppdatera medelpris'
      ImageIndex = 25
      OnExecute = aUpdateAvgPriceExecute
    end
    object acSetAllToBeInventera: TAction
      Caption = 'Markera alla rader i gridden'
      OnExecute = acSetAllToBeInventeraExecute
    end
    object acSetMarkedAsConfirmed: TAction
      Caption = 'S'#228'tt status till godk'#228'nd p'#229' markerade inventeringar'
      OnExecute = acSetMarkedAsConfirmedExecute
    end
    object acSetMarkedAsConfirmedAndPriceConfirmed: TAction
      Caption = 
        'S'#228'tt status till godk'#228'nd och prissatta p'#229' markerade inventeringa' +
        'r'
      OnExecute = acSetMarkedAsConfirmedAndPriceConfirmedExecute
    end
    object acSetMarkedRowsToBeInventerade: TAction
      Caption = 'S'#228'tt markerade rader "att bli inventerade"'
      OnExecute = acSetMarkedRowsToBeInventeradeExecute
    end
    object acCreateResult: TAction
      Caption = 'Skapa resultlista p'#229' markerade inventeringar'
      OnExecute = acCreateResultExecute
    end
    object acExportInventory: TAction
      Caption = 'Export lagerformat'
      OnExecute = acExportInventoryExecute
    end
    object acNewInvenSET: TAction
      Caption = 'Ny inven. fr'#229'n mall'
      ImageIndex = 17
      OnExecute = acNewInvenSETExecute
    end
    object acSetMall: TAction
      Caption = 'Inventeringsmall'
      OnExecute = acSetMallExecute
    end
    object acPriceGroups: TAction
      Caption = 'Visa Prisgrupper'
      OnExecute = acPriceGroupsExecute
    end
    object acCollectPackageValues: TAction
      Caption = 'Generera lagerv'#228'rde (packagecost)'
      OnExecute = acCollectPackageValuesExecute
    end
    object acCopyCalcPriceToNM3: TAction
      Caption = 'Kopiera kalkylpris till NM3 pris'
      OnExecute = acCopyCalcPriceToNM3Execute
    end
    object acSelectInventorySET: TAction
      Caption = 'V'#228'lj inventeringsgruppnr'
      OnExecute = acSelectInventorySETExecute
    end
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
        Name = 'SalesRegionNo'
        DataType = ftInteger
      end
      item
        Name = 'VolumeUnitNo'
        DataType = ftInteger
      end
      item
        Name = 'LengthFormatNo'
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
        Name = 'LengthVolUnitNo'
        DataType = ftInteger
      end
      item
        Name = 'SurfacingNo'
        DataType = ftInteger
      end
      item
        Name = 'NOMTHICK'
        DataType = ftFloat
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
        Name = 'ShipperNo'
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
    Left = 144
    Top = 336
    object mtUserPropVerkNo: TIntegerField
      FieldName = 'VerkNo'
    end
    object mtUserPropOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
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
      LookupDataSet = dm_UserProps.cds_LIP
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LIPName'
      KeyFields = 'LIPNo'
      Size = 50
      Lookup = True
    end
    object mtUserPropPIPNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'PIPNAME'
      LookupDataSet = dm_UserProps.cds_PIP
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
      LookupDataSet = dm_UserProps.cds_InvClient
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'OwnerNo'
      Size = 80
      Lookup = True
    end
    object mtUserPropVERK: TStringField
      FieldKind = fkLookup
      FieldName = 'VERK'
      LookupDataSet = dm_UserProps.cds_Verk
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
    object mtUserPropSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
    end
    object mtUserPropVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
    end
    object mtUserPropLengthFormatNo: TIntegerField
      FieldName = 'LengthFormatNo'
    end
    object mtUserPropForm: TStringField
      FieldName = 'Form'
      Size = 50
    end
    object mtUserPropUserID: TIntegerField
      FieldName = 'UserID'
    end
    object mtUserPropLengthVolUnitNo: TIntegerField
      FieldName = 'LengthVolUnitNo'
    end
    object mtUserPropSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object mtUserPropNOMTHICK: TFloatField
      FieldName = 'NOMTHICK'
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
    object mtUserPropShipperNo: TIntegerField
      FieldName = 'ShipperNo'
    end
    object mtUserPropStartPeriod: TDateTimeField
      FieldName = 'StartPeriod'
    end
    object mtUserPropEndPeriod: TDateTimeField
      FieldName = 'EndPeriod'
    end
    object mtUserPropFilter1: TStringField
      FieldName = 'Filter1'
      Size = 50
    end
    object mtUserPropFilter2: TStringField
      FieldName = 'Filter2'
      Size = 255
    end
  end
  object dsUserProp: TDataSource
    DataSet = mtUserProp
    Left = 144
    Top = 392
  end
  object imglistActions: TImageList
    Height = 24
    Width = 24
    Left = 240
    Top = 224
    Bitmap = {
      494C01011B001D00040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000A8000000010020000000000000FC
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
      0000527BC600527BC60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005A739C0039528C00394A
      730039426300000000000000000000000000637B9C003963BD003973CE003942
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000527BC6001873F700527BC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000528C
      F7004A84EF004273E7003973CE00314A8C003963BD004273E7003973DE003152
      FD0021397B002939630039528C004263A5003973CE003973DE004273E7004273
      CE00394263000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600CE63000000000000000000000000000000000000000000000000
      0000527BC6000073FF000073F700296BC600527BC60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008CB5FF007BBD
      FF0073ADFF005A9CFF00528CF7002952A5004A84EF0063A5FF004A8CFF003973
      DE003152A500294A94003963BD003963CE003973CE003973DE004273E7003973
      DE005273A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      0000527BC6000073FF00007BFF000073F700186BD600527BC600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5BDE700639C
      FF005294F7004A84EF004273DE00315AAD0073B5FF00B5FFFF007BB5FF00427B
      EF003963CE003963CE003963BD00315AB500294A9C0029428C00294A9C00315A
      B500395AAD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00CE636300FFF7EF00FFF7EF00CE636300CE636300FFF7EF00CE63
      6300CE636300FFF7EF00CE636300CE636300FFF7EF00CE636300CE636300FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      0000527BC6000084FF000084FF000084FF000084FF00107BEF00527BC6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A84
      EF004273DE004273DE003963CE003152A5004A84DE0094DEFF0073B5FF004284
      F7003973DE003973DE003973DE003163C6003152AD00294A9400213163002131
      63004A527B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      000000000000527BC600009CFF00008CFF00008CFF00008CFF000884F700527B
      C600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007BBDFF0073B5
      FF0063A5FF005A9CFF004A8CFF003963BD0031529C005294FF005294FF004284
      F7004284F7004284F7004273E7003973DE00315ABD00294A9C00213973002131
      5200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      00000000000000000000527BC60000B5FF00009CFF00008CFF000094FF000894
      F700527BC600527BC60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDFFFF0094DE
      FF0084BDFF0073ADFF005294FF003963CE00395AAD005294FF005294FF004A8C
      FF004A8CFF004A8CFF00427BEF003973DE003163C6003152A500214284002131
      5200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00CE636300FFF7EF00FFF7EF00FF9C9C00FF9C9C00FFF7EF00FF9C
      9C00FF9C9C00FFF7EF00FF9C9C00FF9C9C00FFF7EF00FF9C9C00FF9C9C00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000527BC60000C6FF0000B5FF000094FF00009C
      FF00009CFF001084EF00527BC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003973
      DE003163C6003963BD00315AB50031529C00528CF7005A9CFF004A94FF005294
      FF00529CFF005294FF00528CF7004273DE003163C6003152AD00294284002131
      5200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000527BC60000D6FF0008C6FF0000A5
      FF00009CFF00009CFF000894F700527BC6000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084BDFF007BB5
      FF0063A5FF005A9CFF00528CF700315ABD003152A5005A9CFF00529CFF0063AD
      FF007BB5FF0063A5FF004A8CFF004273E7003163C6003152A50021397B002131
      5200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00CE636300FFF7EF00FFF7EF00FF9C9C00FF9C9C00FFF7EF00FF9C
      9C00FF9C9C00FFF7EF00FF9C9C00FF9C9C00FFF7EF00FF9C9C00FF9C9C00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000527BC60000E7FF0018DE
      FF0008BDFF0000ADFF0000A5FF00009CFF00527BC60000000000000000000000
      0000000000000000000000000000000000000000000000000000C6FFFF00A5E7
      FF008CC6FF007BB5FF005A9CFF003963CE00395AAD005AA5FF0063ADFF0094DE
      FF00A5E7FF007BB5FF005294FF004273E7003163C6003152A500213973003142
      5A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000527BC60008F7
      FF0029F7FF0021D6FF0000B5FF0000A5FF0000A5FF00527BC6004A7BB5000000
      0000000000000000000000000000000000000000000000000000000000005294
      F7004A84DE00427BDE003973CE003963BD00639CFF0063ADFF007BC6FF00C6FF
      FF00BDFFFF007BBDFF004A8CFF004273DE003963BD00294A9C00213163003942
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00CE636300FFF7EF00FFF7EF00FF9C9C00FF9C9C00FFF7EF00FF9C
      9C00FF9C9C00FFF7EF00FF9C9C00FF9C9C00FFF7EF00FF9C9C00FF9C9C00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      000000000000527BC600527BC600527BC600527BC600527BC600527BC60000EF
      FF0008FFFF0031F7FF0039E7FF0010BDFF0000ADFF0000A5FF000894F700527B
      C6000000000000000000000000000000000000000000000000007BB5FF0063A5
      FF005A94FF00528CF7004273E7003152AD004273BD0063ADFF0073BDFF00A5E7
      FF00A5E7FF0073B5FF004A8CFF003973DE00315AB50029428C00394263000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      000000000000527BC60029ADFF0000C6FF0000DEFF0000EFFF0000F7FF0000E7
      FF0000F7FF0000FFFF0021FFFF004AEFFF0018CEFF0000ADFF0000A5FF00009C
      FF00527BC6000000000000000000000000000000000000000000C6FFFF00ADEF
      FF008CCEFF007BB5FF005A9CFF003963CE003152A5005A9CFF005294FF004A8C
      FF00528CF700528CF700427BEF003963CE003152A50029427300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      000000000000527BC60031ADFF0000C6FF0000DEFF0000F7FF0000FFFF0000F7
      FF0000E7FF0000F7FF0000FFFF0008FFFF0039FFFF0029DEFF0000B5FF0000A5
      FF000094FF00527BC600000000000000000000000000000000000000000094C6
      FF007BB5FF0073A5FF005A94FF00527BBD004A73B5005294FF0063ADFF005294
      FF003973DE003152AD003973DE00315ABD00314A8C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      000000000000527BC60039A5FF0000C6FF0000DEFF0000EFFF0000F7FF0000F7
      FF0000EFFF0000DEFF0000FFFF0000FFFF0000FFFF0021FFFF0039EFFF0008C6
      FF00009CFF00527BC60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5C6F7007BBDFF0084BDFF00528C
      F7003163C60029428400315ABD00425A94000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FF9C9C00FF9C9C00FFF7EF00FF9C
      9C00FF9C9C00FFF7EF00FF9C9C00FF9C9C00FFF7EF00FF9C9C00FF9C9C00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      000000000000527BC6006BB5FF0008C6FF0018E7FF0039E7FF004AEFFF005AF7
      FF0042F7FF0018FFFF0008FFFF0000FFFF0000FFFF0000FFFF0008FFFF0021FF
      FF0010D6FF00527BC60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008CB5F700C6FFFF007BB5FF00427B
      EF003152A50042527B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D66B0000FFFF
      FF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      00000000000000000000527BC600527BC60084B5FF0018DEFF0008F7FF0008FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000F7FF0000EFFF0018DE
      F70063DEF700527BC60000000000000000000000000000000000000000000000
      00000000000000000000000000000000000094CEFF00C6FFFF0063A5FF003973
      DE00294284000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D66B0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFEFD600CE63000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000527BC600527BC60084B5FF0031D6
      FF0008F7FF0000FFFF0000FFFF0000F7FF0000D6FF0000BDFF0000B5FF0018A5
      F700527BC6000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008CB5F700C6FFFF00ADEFFF005294FF003963
      BD00294273000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000527BC600527B
      C600527BC60084B5FF0018E7FF0000F7FF0000EFFF0000CEFF0000ADFF0000A5
      FF0010A5FF00527BC60000000000000000000000000000000000000000000000
      00000000000000000000000000008CB5F700C6FFFF00A5E7FF005294FF003163
      C60029427300525A630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A5630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000527BC600527BC60084B5FF0029DEFF0000EFFF0000DEFF0000B5
      FF0000A5FF0084B5FF00527BC600000000000000000000000000000000000000
      00000000000000000000000000008CB5F70094DEFF0094DEFF005A9CFF004273
      E700315AB50029428400525A7300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D67B21000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000527BC600527BC60084B5FF0042DEFF0010D6
      FF0000B5FF005AA5FF00527BC600000000000000000000000000000000000000
      0000000000000000000000000000000000008CB5F70073B5FF005AA5FF004A8C
      FF004273DE003152AD004A527B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000527BC600527BC60084B5
      FF006BC6FF0052A5FF00527BC600000000000000000000000000000000000000
      000000000000000000000000000000000000000000008CB5F7005294FF00528C
      F7004273DE005A7BAD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000527B
      C600527BC600527BC60000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000AD73
      8400EFDEC600527BC600F7DEBD00F7DEB500F7D6B500F7D6AD00F7D6A500EFCE
      9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400EFDEC600317BEF00527BC600296BC600F7D6B500F7D6AD00F7D6AD00EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400F7DECE00397BE700007BFF000073F700527BC600F7D6B500F7D6AD00F7D6
      FD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400085A940008426300084263000842630000314A0084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000BDC60000BDC60000BDC60000BD
      C60000BDC60000BDC60000BDC600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400F7E7CE00F7E7D600009CFF00008CFF00008CFF00527BC600F7D6B500F7D6
      FD00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000000000
      000084848400085A9400084263000842630000314A0084848400000000004ABD
      FF00D6FFFF00BDFFFF008CF7FF008CF7FF00299CEF00107BCE00000000000000
      000000000000000000000000000000000000000000000000000084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E7000000
      000084E7E7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000BDC60000BDC60000BDC60000BD
      C60000BDC60000BDC60000BDC6006BFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400F7E7D600DEDEDE009C9C9C0000B5FF00008CFF000094FF00527BC600527B
      C6009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00EFCE9400B584840000000000000000000000000000000000000000000000
      00004ABDFF00D6FFFF00BDFFFF008CF7FF00299CEF00107BCE00000000008484
      84004ABDFF004ABDFF004ABDFF004ABDFF004ABDFF0084848400084263000031
      4A0000000000000000000000000000000000000000000000000084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E7000000
      000084E7E70084E7E70084E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000B5BD0000B5BD0000BDC6000000000000BDC60000BDC60000BDC6000000
      000000BDC60000BDC60000BDC6006BFFFF0000C6CE0000C6CE0000BDC6000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      8400F7E7DE00F7EFDE00F7E7D600F7E7CE0000B5FF0008C6FF00009CFF00009C
      FF00527BC600F7DEC600F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000000000
      0000848484004ABDFF004ABDFF004ABDFF004ABDFF0084848400000000000000
      0000000000000000000084A5FF0094E7FF00BDFFFF007BCEDE004AA5C6002984
      BD005A5ACE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084E7E70084E7E70084E7E70084E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000B5BD0000B5BD0000B5BD0000BDC60000BDC60000BDC60000BDC6006BFF
      FF0000BDC60000BDC60000BDC60000BDC60000C6CE0000C6CE0000C6CE0000BD
      C60000000000000000000000000000000000000000000000000000000000B57B
      8400F7EFE700F7EFE700F7EFDE00F7E7D600F7E7CE0000B5FF0008BDFF0000AD
      FF00009CFF00527BC600F7DEC600F7DEC600EFCEA500EFCE9C00EFCE9C00EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C94FF008CCEEF00BDFFFF006BBDD600429CC6002184
      C6004A5ADE00000000000000000000000000000000000000000084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7
      E700000000000000000084E7E70084E7E70084E7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000B5BD0000B5BD0000B5BD006BFFFF0000BDC60000BDC60000BDC6006BFF
      FF0000BDC60000BDC60000BDC6006BFFFF0000C6CE0000C6CE0000C6CE006BFF
      FF0000BDC600000000000000000000000000000000000000000000000000B584
      8400F7EFE700DEDEDE00527BC600527BC600527BC60000C6FF0008FFFF0031F7
      FF0010BDFF0000ADFF00527BC600527BC6009C9C9C009C9C9C009C9C9C009C9C
      9C00EFCE9400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000085A94000842630008426300084263000031
      4A000000000000000000000000000000000000000000000000000000000084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7
      E70084E7E70084E7E7000000000084E7E70084E7E70084E7E70084E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000B5BD0000B5BD0000B5BD006BFFFF0000BDC60000BDC60000BDC6006BFF
      FF0000BDC60000BDC60000BDC6006BFFFF0000C6CE0000C6CE0000C6CE006BFF
      FF006BFFFF0000BDC6000000000000000000000000000000000000000000BD84
      8400F7EFEF00FFF7EF0029ADFF0000C6FF0000EFFF0000F7FF0000F7FF0000FF
      FF004AEFFF0018CEFF0000A5FF00527BC600F7DEC600F7D6AD00EFCEA500EFCE
      9C00EFCE9400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B9CEF008CCEEF00BDFFFF006BBDD600429CC6002184
      C6003963CE000000000000000000000000000000000000000000000000000000
      00000000000084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7
      E70084E7E70084E7E70084E7E700000000000000000084E7E70084E7E70084E7
      E700000000000000000000000000000000000000000000B5B50000BDC6000000
      000000B5BD0000B5BD0000B5BD006BFFFF0000BDC60000BDC60000BDC6006BFF
      FF0000BDC60000BDC60000BDC6006BFFFF0000C6CE0000C6CE0000C6CE006BFF
      FF0000CED60000BDC60000BDC60000000000000000000000000000000000BD84
      8C00FFF7F700FFFFF70039A5FF0000C6FF0000EFFF0000F7FF0000EFFF0000DE
      FF0000FFFF0000FFFF0039EFFF0008C6FF00527BC600F7DEC600F7D6AD00EFCE
      A500EFCE9C00B584840000000000000000000000000000000000007B0000007B
      0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B000073B5D60094DEEF00BDFFFF006BBDD600429CC6002184
      C6001873AD00007B0000007B0000007B00000000000000000000000000000000
      00000000000000000000FFFFFF0084E7E70084E7E70084E7E70084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E7000000000084E7E70084E7
      E70084E7E7000000000000000000000000000000000000B5B50000B5B50000BD
      C60000B5BD0000B5BD0000B5BD006BFFFF0000BDC60000BDC60000BDC6006BFF
      FF0000BDC60000BDC60000BDC6006BFFFF0000C6CE0000C6CE0000C6CE006BFF
      FF0000CED60000CED60000BDC60000BDC600000000000000000000000000C68C
      8C00FFF7F700DEDEDE009C9C9C0008C6FF0039E7FF004AEFFF0042F7FF0018FF
      FF0000FFFF0000FFFF0008FFFF0021FFFF00527BC6009C9C9C009C9C9C009C9C
      9C00EFCEA500B584840000000000000000000000000000000000007B00000094
      000000940000009400000094000000C60000A5FFA500C6FFC600C6FFC600C6FF
      C600C6FFC600C6FFC600C6FFC6005AA5CE000842630008426300084263000031
      4A00009400000094000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084E7E70084E7E70084E7E700000000000000000000B5B50000B5B50000F7
      F70000B5BD0000B5BD0000B5BD006BFFFF0000BDC60000BDC60000BDC6006BFF
      FF0000BDC60000BDC60000BDC6006BFFFF0000C6CE0000C6CE0000C6CE006BFF
      FF0000CED60000CED6006BFFFF0000BDC600000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFFFFF00FFF7F700FFF7EF0031D6FF0008F7FF0000FF
      FF0000F7FF0000D6FF0000B5FF00527BC600F7DEC600F7DEC600F7DEC600F7D6
      FD00F7D6AD00B584840000000000000000000000000000000000007B00000094
      0000009400000094000000C60000A5FFA500C6FFC600C6FFC600C6FFC6006363
      630063636300636363007BBDD60073C6DE00BDFFFF006BC6D60042A5C6002184
      C60010849C000094000000940000007B0000000000000000000000000000A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A5000000
      0000000000000000000084E7E70084E7E7000000000000B5B50000B5B50000F7
      F70000B5BD0000B5BD0000B5BD006BFFFF0000BDC60000BDC60000BDC6006BFF
      FF0000BDC60000BDC60000BDC6006BFFFF0000C6CE0000C6CE0000C6CE006BFF
      FF0000CED60000CED6006BFFFF006BFFFF00000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7EF00F7EFE70031D6
      FF0000F7FF0000EFFF0000ADFF0000A5FF00527BC600F7DEC600F7DEC600F7DE
      C600F7D6AD00B584840000000000000000000000000000000000007B00000094
      00000094000000C60000A5FFA500C6FFC600C6FFC600C6FFC60063636300C6FF
      FF00C6C6C600C6FFFF008CCEEF009CE7FF00BDFFFF007BE7FF0052C6F70039A5
      E70021949C000094000000940000007B0000000000000000000000000000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF000000
      0000FFFFFF000000000084E7E70084E7E7000000000000B5B50000B5B50000F7
      F70000B5BD0000B5BD0000B5BD006BFFFF0000BDC60000BDC60000BDC6006BFF
      FF0000BDC60000BDC60000BDC6006BFFFF0000C6CE0000C6CE0000C6CE006BFF
      FF0000CED60000CED6006BFFFF006BFFFF00000000000000000000000000CE94
      8C00FFF7F700DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C0031D6FF0042DEFF0010D6FF005AA5FF00527BC6009C9C9C008C84
      7B0084847B00B584840000000000000000000000000000000000007B00000094
      000000C60000A5FFA500C6FFC600C6FFC600C6FFC60063636300C6FFFF00C6C6
      C600C6C6C600C6C6C600C6C6C6004ABDFF004ABDFF004ABDFF004ABDFF004ABD
      FF00C6FFC60000C6000000940000007B0000000000000000000000000000C6C6
      C600A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A5000000
      0000FFFFFF00000000000000000084E7E7000000000000BDC60000F7F70000F7
      F70000B5BD0000B5BD0000B5BD006BFFFF0000BDC60000BDC60000BDC6006BFF
      FF0000BDC60000BDC60000BDC6006BFFFF0000C6CE0000C6CE0000C6CE006BFF
      FF0000BDC6006BFFFF006BFFFF006BFFFF00000000000000000000000000CE94
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7
      EF00F7EFE700F7EFE700F7EFDE0031D6FF0052A5FF00527BC600F7DEC600F7D6
      FD00F7D6AD00B584840000000000000000000000000000000000007B00000094
      000000C60000C6FFC600C6FFC600C6FFC600C6FFC60063636300C6FFFF00C6FF
      FF00C6C6C600C6C6C600C6FFFF00C6FFFF0063636300C6FFC600C6FFC600C6FF
      C600C6FFC60000C6000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042E7E70042E7E70000000000000000000000000000BDC60000F7
      F70000B5BD0000B5BD0000B5BD006BFFFF0000BDC60000BDC60000BDC6006BFF
      FF0000BDC60000BDC60000BDC6006BFFFF0000C6CE0000C6CE0000C6CE006BFF
      FF006BFFFF0000BDC6006BFFFF006BFFFF00000000000000000000000000D69C
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      F700FFF7EF00F7EFE700F7EFDE00F7EFDE00F7EFDE00E7DECE00CEBDAD009C94
      8C00E7CEB500B584840000000000000000000000000000000000007B00000094
      000000C60000A5FFA500C6FFC600C6FFC600C6FFC600C6FFC60063636300C6C6
      C600C6C6C600C6C6C600C6C6C60063636300C6FFC600C6FFC600C6FFC600C6FF
      C600A5FFA50000C6000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042E7E70042E7E70042E7E70084E7
      E70042E7E70042E7E70042E7E70042E7E70000000000000000000000000000BD
      C60000B5BD0000B5BD0000B5BD006BFFFF0000BDC60000BDC60000BDC6006BFF
      FF0000BDC60000BDC60000BDC6006BFFFF0000C6CE0000C6CE0000C6CE006BFF
      FF006BFFFF006BFFFF0000BDC6006BFFFF00000000000000000000000000D69C
      9400FFF7F700DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C00EFDED600B5847300AD847300AD7B7300B584
      8400B5848400B584840000000000000000000000000000000000007B00000094
      00000094000000C60000A5FFA500C6FFC600C6FFC600C6FFC600C6FFC6006363
      6300636363006363630063636300C6FFC600C6FFC600C6FFC600C6FFC600A5FF
      A50000C600000094000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E7000000000000000000000000000000
      000000BDC60000BDC60000BDC6006BFFFF0000BDC60000BDC60000BDC6006BFF
      FF0000BDC60000BDC60000BDC6006BFFFF0000BDC60000F7F70000F7F7006BFF
      FF006BFFFF006BFFFF006BFFFF0000BDC600000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B584840000000000000000000000000000000000007B00000094
      0000009400000094000000C60000A5FFA500C6FFC600C6FFC600C6FFC600C6FF
      C600C6FFC600C6FFC600C6FFC600C6FFC600C6FFC600C6FFC600A5FFA50000C6
      0000009400000094000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042E7E70042E7E70042E7E70042E7E7000000000000000000000000000000
      00000000000000F7F70000F7F70000BDC60000BDC60000BDC60000BDC60000BD
      C60000BDC60000BDC60000BDC6006BFFFF006BFFFF0000BDC60000F7F70000F7
      F7006BFFFF006BFFFF006BFFFF006BFFFF00000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B58484000000000000000000000000000000000000000000007B00000094
      000000940000009400000094000000C60000C6FFC600C6FFC600C6FFC600C6FF
      C600C6FFC600C6FFC600C6FFC600C6FFC600C6FFC600A5FFA50000C600000094
      0000009400000094000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000042E7E70042E7E7000000000000000000000000000000
      0000000000000000000000F7F70000F7F70000BDC60000BDC60000BDC60000BD
      C60000BDC60000BDC60000BDC6006BFFFF006BFFFF006BFFFF0000BDC60000F7
      F70000F7F7006BFFFF006BFFFF006BFFFF00000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      8400000000000000000000000000000000000000000000000000007B0000007B
      0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B0000007B0000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000F7F70000F7F70000F7F70000F7F70000F7
      F70000F7F70000F7F70000F7F7006BFFFF006BFFFF006BFFFF006BFFFF0000BD
      C60000F7F70000F7F7006BFFFF006BFFFF00000000000000000000000000DEA5
      9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000F7F70000F7F70000F7
      F70000F7F70000F7F70000F7F70000F7F7006BFFFF006BFFFF006BFFFF006BFF
      FF0000BDC60000F7F70000F7F7006BFFFF00000000000000000000000000DEA5
      8C00E7CEBD00EFD6BD00EFD6BD00EFCEC600E7CEBD00E7CEBD00E7CEBD00E7CE
      BD00DEC6BD00DEC6BD00DEC6BD00CEADA500B5847300B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000F7F70000F7
      F70000F7F70000F7F70000F7F70000F7F70000F7F7006BFFFF006BFFFF006BFF
      FF006BFFFF0000BDC60000F7F70000F7F7000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000218429002184
      2900218429002184290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042636300846363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042636300846363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A563006BAD840094DE
      8C0039B5520031A54A0021842900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484004221210042636300426363008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484004221210042636300426363008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A56300A5E79C0094DE
      8C0039B5520031AD520021842900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000422121004221210042424200C6A5A5008442420042212100422121000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000422121004221210042424200C6A5A5008442420042212100422121000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A56300A5E79C0094DE
      8C0039B5520031AD520021842900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008463
      630084636300C6A5A500F7CEA500F7CEA500C663630042212100422121004200
      0000426384004263630042424200424242004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008463
      630084636300C6A5A500F7CEA500F7CEA500C663630042212100422121004200
      0000426384004263630042424200424242004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A56300A5E79C0094DE
      8C0039B5520031AD520021842900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6A5
      A500F7CEA500F7CEA500C684840084636300C663630042212100422121004221
      210000FFFF004263A50000000000426363004242420000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6A5
      A500F7CEA500F7CEA500C684840084636300C663630042212100422121004221
      2100002184004263A50000000000426363004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A56300A5E79C0094DE
      8C0039B5520031AD520021842900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6A5
      A50084848400424242004263630042424200C684840042212100422121000000
      000000FFFF0000FFFF0000214200422121004221210042424200000000008463
      630042636300000000000000000000000000000000000000000084848400C6A5
      A50084848400424242004263630042424200C684840042212100422121000000
      0000002184000021840000214200422121004221210042424200000000008463
      6300426363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A56300A5E79C0094DE
      8C0039B5520031AD520021842900000000000000000000000000000000000000
      000000000000000000000000000000000000002142000000000084848400C6A5
      A50042424200424242004242420084636300C6A5A50084212100422121000000
      00008484840000FFFF0000FFFF00002142000042630042638400002142004242
      420042636300848484000000000000000000002142000000000084848400C6A5
      A50042424200424242004242420084636300C6A5A50084212100422121000000
      0000002184000021840000218400002142000042630042638400002142004242
      4200426363008484840000000000000000000000000000000000000000000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A50000000000000000000000000000000000000000002184
      2900218429002184290021842900218429002184290021842900A5E79C0094DE
      8C0039B5520031AD520021842900218429002184290021842900218429002184
      2900218429002184290000000000000000000021420000214200000000008463
      63008463630084636300C6C6C600F7CEA500C6A5A500C6848400844242004200
      000000FFFF008484840000FFFF0000FFFF004263A5004263A500004263004221
      2100846363000021420000000000000000000021420000214200000000008463
      63008463630084636300C6C6C600F7CEA500C6A5A500C6848400844242004200
      0000002184000021840000218400002184004263A5004263A500004263004221
      21008463630000214200000000000000000000000000000000000021A5000021
      D6000021D6000021D6000021D6000021D6000021D6000021D6000021D6000021
      D6000021D6000021D6000021D6000021D6000021D6000021D6000021D6000021
      D6000021D6000021D6000021A50000000000000000000000000063A5630031A5
      4A0031AD520031AD520031AD520031AD520031AD520031AD520031AD520031AD
      520039B5520031AD520031AD520031AD520031AD520031AD520031AD520031AD
      520031AD520031A54A002184290000000000002142000021E7000021E7004263
      6300F7FFFF00F7CEA500C6A5A500C6A5A500C6A5A50084636300424242000021
      420000FFFF0000FFFF008484840000FFFF0000FFFF004263A500426384000021
      420042212100004263004242420000000000002142000021E7000021E7004263
      6300F7FFFF00F7CEA500C6A5A500C6A5A500C6A5A50084636300424242000021
      420000218400002184000021840000218400002184004263A500426384000021
      42004221210000426300424242000000000000000000000000000021A5000029
      E7000029E7000029E7000029E7000029E7000029E7000029E7000029E7000029
      E7000029E7000029E7000029E7000029E7000029E7000029E7000029E7000029
      E7000029E7000029E7000021A50000000000000000000000000063A5630039B5
      520039B5520039B5520039B5520039B5520039B5520039B5520039B5520039B5
      520039B5520039B5520039B5520039B5520039B5520039B5520039B5520039B5
      520039B5520039B5520021842900000000000021E7000021E7000021E7008463
      630084636300C6848400C6C6C60084424200422142000042630000E7E70000E7
      E70000FFFF0000FFFF0000FFFF008484840000FFFF0000218400424284004263
      8400004284004263A50042424200000000000021E7000021E7000021E7008463
      630084636300C6848400C6C6C600844242004221420000426300002184000021
      8400002184000021840000218400002184000021840000218400424284004263
      8400004284004263A500424242000000000000000000000000000021A500B5C6
      FF00B5C6FF009CBDFF009CBDFF009CBDFF009CB5FF009CB5FF00739CFF00739C
      FF00638CF700638CF700638CF7005284F7005284F7005284F700526BF700526B
      F700526BF700526BF7000021A50000000000000000000000000063A5630094DE
      8C0094DE8C0094DE8C0094DE8C0094DE8C0094DE8C0094DE8C0094DE8C0094DE
      8C0039B5520039B5520094DE8C0094DE8C0094DE8C0094DE8C0094DE8C0094DE
      8C0094DE8C0094DE8C0021842900000000000021E7000021E7000021E7000021
      E7000021E7004221210042424200002142008484840000E7E70000E7E70000E7
      E70000FFFF0000FFFF0000FFFF0000FFFF00848484000021840000FFFF0000FF
      FF00426384004263A50042424200000000000021E7000021E7000021E7000021
      E7000021E7004221210042424200002142008484840000000000424242004242
      4200002184000021840000218400002184000021840000218400002184000021
      8400426384004263A500424242000000000000000000000000000021A50094AD
      FF00B5C6FF00B5C6FF00B5C6FF00B5C6FF009CBDFF009CBDFF009CB5FF009CB5
      FF00739CFF00739CFF00739CFF00638CF700638CF700638CF7005284F7005284
      F7005284F7005284F7000021A50000000000000000000000000063A563006BAD
      8400A5E79C00A5E79C00A5E79C00A5E79C00A5E79C00A5E79C00A5E79C0094DE
      8C0039B5520031AD5200A5E79C00A5E79C00A5E79C00A5E79C00A5E79C00A5E7
      9C00A5E79C006BAD84002184290000000000000000000021E7000021E7000021
      E7000021E7004242420000E7E70000E7E70000E7E7008484840000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00004242008484840000FF
      FF0000FFFF00002184004242420000000000000000000021E7000021E7000021
      E7000021E7004242420000E7E70000E7E70000E7E70000000000000000004242
      4200424242004242420000218400002184000021840000218400002184000021
      8400002184000021840042424200000000000000000000000000000000000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A500000000000000000000000000000000000000000063A5
      630063A5630063A5630063A5630063A5630063A5630063A56300A5E79C0094DE
      8C0039B5520031AD520021842900218429002184290021842900218429002184
      290021842900218429000000000000000000000000000021E7000021E7000000
      00000000000000E7E70000E7E70084C6E70084E7E70000FFFF00848484008484
      840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF004263A50000FFFF008484
      840000FFFF0000FFFF004242420000000000000000000021E7000021E7000000
      00000000000000E7E70000E7E70084C6E70084E7E70000FFFF00000000000000
      0000000000004242420042424200002184000021840000218400002184000021
      8400002184004242420042424200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A56300A5E79C0094DE
      8C0039B5520031AD520021842900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000021E7000021E7000000
      0000000000008484840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF008484
      84008484840000FFFF0000FFFF0000FFFF0084A5E70000FFFF0000FFFF0000FF
      FF008484840000FFFF0000FFFF0000000000000000000021E7000021E7000000
      0000000000008484840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000042424200002184000021840000218400424242004242
      4200424242000000000000000000420021000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A56300A5E79C0094DE
      8C0039B5520031AD520021842900000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000021E7000021
      E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0084848400848484004284A5004284C60000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF000000000000000000000000000021E7000021
      E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000424242004242420042424200424242000000
      0000000000004242420042424200424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A56300A5E79C0094DE
      8C0039B5520031AD520021842900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000021E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF004284A500848484008484840000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0084848400000000000000000000000000000000000000
      00000021E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000004200
      21004200210042424200424242000042A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A56300A5E79C0094DE
      8C0039B5520031AD520021842900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000FFFF0000FFFF0000FF
      FF0084A5C60000FFFF0000FFFF00848484008484840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000004242
      420042424200424242000042A5000042A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A56300A5E79C0094DE
      8C0039B5520031AD520021842900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000000000000000008484
      840000FFFF0000FFFF0000FFFF0000FFFF00848484008484840000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      420042424200424242000042A5000042A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A56300A5E79C0094DE
      8C0039B5520031AD520021842900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042424200424242000042A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A563006BAD840094DE
      8C0039B5520031A54A0021842900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000042424200424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000063A5630063A5
      630063A5630063A5630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000424242000000000000000000000000000000
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
      000000000000000000000000000000000000000000005A5A5A00636B7300C69C
      9400000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000ADADA5003973A5002173B5007384
      9400CE9C94000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5420800A5420800A542080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006394B50039A5FF00218CEF002173
      B5007B849400CE9C940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5420800B5520000BD5A0000A54208009C390800000000000000
      0000000000000000000000000000000000000000000021A5D60021A5D60021A5
      D6005AC6E70042BDE70029ADD60021A5D60018A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004AB5FF005ABDFF0042A5FF00218C
      EF002173B5007B849400CE9C9400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5390800BD5A0000D66B0000BD5A0000A5420800A54208000000
      0000000000000000000000000000000000000000000018A5D6005ACEEF00B5FF
      FF009CFFFF0094F7FF008CEFFF007BE7F7006BD6F70052C6E70042B5DE0029AD
      D60021A5D60018A5D60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000636B
      6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B
      6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B
      6B000000000000000000000000000000000031A5FF0052BDFF005ABDFF0042A5
      FF00218CEF002173B5007B849400CE9C94000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5420800A5420800C65A0000D66B0000BD5A0000A5420800A542
      0800000000000000000000000000000000000000000010A5D6009CEFFF00CEFF
      FF008CF7FF0094F7FF0094F7FF008CEFFF008CEFFF007BE7F70073DEF7005AE7
      FF0073DEF7005ACEEF004AC6E70031B5DE0021A5D60018A5D600000000000000
      0000000000000000000000000000000000000000000000000000000000008C8C
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C8C
      8C00000000000000000000000000000000000000000031A5FF0052BDFF005ABD
      FF0042A5FF00218CEF002173B50084849400CE9C940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C390800A5420800C6630000CE6B0000B55200009C39
      08009C3908000000000000000000000000000000000021A5D6009CEFFF0094F7
      FF0094F7FF0094F7FF0094F7FF008CF7FF008CEFFF008CEFFF0084EFFF0073EF
      FF0063E7FF005ADEFF005ADEFF005ADEFF0073DEF7005ACEEF004AC6E70031B5
      DE0018A5D6000000000000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB5
      6B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFFFFF009494
      940000000000000000000000000000000000000000000000000031A5FF0052BD
      FF005ABDFF0042A5FF00218CEF002173B50084849400CE9C9400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A54208009C3908009C3908009C39
      08009C3908009C3908009C3908009C3908009C3908009C3908009C3908009C39
      0800A542080000000000000000009C390800AD4A0800CE630000CE6B0000AD4A
      08009C3908009C39080000000000000000000000000029ADD6009CEFFF0094F7
      FF0094F7FF0094F7FF0094F7FF008CF7FF008CEFFF008CEFFF0084EFFF007BEF
      FF0073EFFF006BE7FF0063E7FF0063E7FF005ADEFF005ADEFF005ADEFF005ADE
      FF005ADEFF0018A5D60000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFFFFF00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFF
      FF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFFFFF00FFB56B00FFFFFF009494
      94000000000000000000000000000000000000000000000000000000000031A5
      FF0052BDFF005ABDFF0042A5FF00218CEF002173B50084849400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5420800B55A1000B55A1000B552
      0800AD4A0800AD4A0800AD4A0800AD4A0800AD4A0800AD4A0800B54A0000AD4A
      0800A5420800A542080000000000000000009C390800AD4A0800CE6B0000C663
      0000A54208009C39080000000000000000000000000029ADD6009CEFFF0094F7
      FF0094F7FF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF0084EF
      FF0084EFFF007BEFFF0073EFFF006BE7FF0063E7FF005ADEFF005ADEFF005ADE
      FF005ADEFF0018A5D60000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFFFFF00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFF
      FF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFFFFF00FFB56B00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000000000
      000031A5FF0052BDFF005ABDFF0039A5FF003184D60052636B00000000000000
      00009C6B6B00B58C8400CEA59C00D6B5A500D6ADA500CE9C9C00C69494000000
      000000000000000000000000000000000000AD4A1000EF943100E78C2900DE7B
      1000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D66B
      0000B55208009C3908000000000000000000000000009C390800B5520800CE6B
      0000BD5A00009C3908009C390800000000000000000029ADD60094EFF70094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CEFFF008CEFFF008CEF
      FF008CEFFF0084EFFF0084EFFF0073EFFF006BE7FF0063E7FF005ADEFF005ADE
      FF005ADEFF0018A5D60000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFFFFF00FFFFFF0031313100A5633900B5B5B500FFFF
      FF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFFFFF00FFB56B00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000000000
      00000000000031A5FF0052BDFF007BC6FF00C6CEDE009C9C9C00846B6B00AD8C
      8400E7D6BD00FFF7CE00FFFFD600FFFFDE00FFFFD600FFFFD600EFDEC600CEA5
      9C0000000000000000000000000000000000AD4A1000F7A54200F7A53900E78C
      2900DE841800CE630800B5520000B5520000B5520000B5520000B5520000B552
      0800A5420800A5420800000000000000000000000000000000009C390800BD5A
      0000CE6B0000AD4A08009C390800000000000000000029ADD6009CEFFF0094F7
      FF0094F7FF0094F7FF008CF7FF0094F7FF0094F7FF008CF7FF008CEFFF008CEF
      FF008CEFFF008CEFFF008CEFFF0084EFFF007BEFFF006BE7FF0063E7FF005ADE
      FF005ADEFF0018A5D60000000000000000000000000000000000000000009C9C
      9400FFFFFF00F7A55A00F7A55A00F7A55A007B5A4A003929180029637B005263
      6B00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00FFFFFF009C9C
      9400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFE700C6ADAD00CEA59400FFF7
      CE00FFFFD600FFFFDE00FFFFD600FFFFD600FFFFD600FFFFDE00FFFFDE00FFFF
      DE00D6B5A500A57373000000000000000000AD4A1000F7AD4A00FFAD4A00E794
      3900EF943100DE7B1800A54208009C3908009C3908009C3908009C3908009C39
      0800A542080000000000000000000000000000000000000000009C390800AD4A
      0800CE6B0000BD5A00009C3908009C3908000000000029ADD60094EFF70094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF0084EFFF0073EFFF006BE7FF001084
      18005ADEFF0018A5D60000000000000000000000000000000000000000009C9C
      9C00FFFFFF00F7A55A00FFFFFF00FFFFFF00D6D6D6008CB5C6008CF7FF002973
      F70021526B00F7A55A00FFFFFF00FFFFFF00FFFFFF00F7A55A00FFFFFF009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6ADAD00CEA59400FFEFBD00FFE7
      BD00FFF7CE00FFFFD600FFFFD600FFFFD600FFFFDE00FFFFDE00FFFFE700FFFF
      FF00FFFFFF00C6A5A5000000000000000000AD4A1000F7A54200FFB55200C66B
      2100DE8C3100F79C3100D6731800A54208009C39080000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A542
      0800CE630000C6630000A54208009C3908000000000029ADD60094EFF70094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF007BEFFF0073EFFF001084
      18005ADEFF0018A5D6000000000000000000000000000000000000000000A5A5
      A500FFFFFF00F7A55A00FFFFFF00FFFFFF00FFFFFF006BC6FF008CF7FF002973
      F7002973F70008426300FFFFFF00FFFFFF00FFFFFF00F7A55A00FFFFFF00A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD8C8C00EFDEB500FFE7B500F7D6
      FD00FFF7CE00FFFFD600FFFFD600FFFFDE00FFFFE700FFFFEF00FFFFF700FFFF
      FF00FFFFFF00F7EFDE00A57B730000000000AD4A1000F7A54200FFBD5200BD5A
      1800AD4A1000F7A54200F7A53900CE731800A53908009C390800000000000000
      000000000000000000000000000000000000000000000000000000000000A542
      0800C6630000C6630000A54208009C3908000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF008CF7FF008CEFFF008CEFFF008CEFFF008CEFFF0084EFFF007BEFFF001084
      18005AE7FF0018A5D6000000000000000000000000000000000000000000A5A5
      A500F7F7F700EF9C2100F7F7F700F7F7F700F7F7F700EF9C210010A5D60042E7
      F7002973F7002973F70021526B00F7F7F700F7F7F700EF9C2100F7F7F700A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6B5A500FFEFBD00F7CE9C00F7D6
      A500FFF7CE00FFFFD600FFFFD600FFFFDE00FFFFEF00FFFFF700FFFFFF00FFFF
      F700FFFFEF00FFFFDE00BDA5940000000000AD4A1000F7A54200FFBD5200BD63
      180094290000BD631800F7AD4A00F7A53900CE731800A54208009C3908000000
      000000000000000000000000000000000000000000000000000000000000A542
      0800C6630000C6630000A54208009C3908000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF001084180094F7FF008CEFFF008CEFFF00108418001084
      18008CEFFF0018A5D6000000000000000000000000000000000000000000A5A5
      A500F7F7F700EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C210010A5
      D60042E7F7002973F7002973F70018425A00EF9C2100EF9C2100EFEFEF00A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6949400E7CEAD00FFEFBD00F7C68C00F7CE
      9C00FFEFC600FFFFD600FFFFD600FFFFDE00FFFFEF00FFFFF700FFFFF700FFFF
      EF00FFFFDE00FFFFDE00D6C6AD00C6949400AD4A1000F7A54200FFB55200BD63
      18009C3900009C390000C66B2100FFAD4A00F7A53900D67B2100A54208009C39
      08000000000000000000000000000000000000000000000000009C390800AD4A
      0800CE6B0000C6630000A54208009C3908000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF00108418001084180094F7FF0010841800108418000894
      18008CEFFF0018A5D6000000000000000000000000000000000000000000ADAD
      FD00EFEFEF00EF9C2100EFEFEF00EFEFEF00EFEFEF00EF9C2100EFEFEF00EFEF
      EF0010A5D60042E7F7002973F7002973F70021526B00EF9C2100EFEFEF00ADAD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6949400EFD6B500FFE7B500EFBD8400F7C6
      8C00F7DEB500FFFFD600FFFFD600FFFFDE00FFFFE700FFFFEF00FFFFEF00FFFF
      E700FFFFDE00FFFFDE00E7D6BD00BD9C8C00AD4A1000F7A54200FFB55200BD63
      18009C390000000000009C390000C6632100F7AD4A00FFAD4200DE842100AD4A
      08009C39080000000000000000000000000000000000A54208009C390800BD5A
      0000CE6B0000BD5A00009C390800000000000000000029ADD6009CF7FF00BDE7
      F700BDEFF700C6F7FF00C6F7FF00C6F7FF009CF7FF008CF7FF008CF7FF0094F7
      FF0094F7FF0094F7FF001084180031AD52001084180010841800089418008CEF
      FF008CEFFF0018A5D6000000000000000000000000000000000000000000ADAD
      FD00E7E7E700EF9C2100E7E7E700E7E7E700E7E7E700EF9C2100E7E7E700E7E7
      E700E7E7E70010A5D60042E7F7002973F7002973F70008426300E7E7E700ADAD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6949400EFD6B500FFEFBD00F7BD8C00EFBD
      8400F7CE9C00FFEFC600FFFFD600FFFFDE00FFFFDE00FFFFDE00FFFFDE00FFFF
      DE00FFFFD600FFFFDE00E7D6BD00BD9C8C00AD4A1000F7A54200FFB55200BD63
      18009C39000000000000000000009C310000BD5A1800F7A54200FFAD4200E78C
      2900B55210009C3908009C3908009C3908009C3908009C390800B5520000CE6B
      0000CE6B0000AD4208009C390800000000000000000029ADD60031ADDE0031AD
      DE0031ADDE0031ADDE0031ADDE0031ADDE007BCEE7008CF7FF008CF7FF008CF7
      FF008CEFFF0094F7FF001084180031AD520039C65A001084180094F7FF0094F7
      FF0094F7FF0018A5D6000000000000000000000000000000000000000000ADAD
      FD00E7E7E700EF9C2100E7E7E700E7E7E700E7E7E700EF9C2100E7E7E700E7E7
      E700E7E7E700EF9C210010A5D60042E7F7002973F7003139BD0031313100ADAD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6949400E7CEAD00FFEFBD00F7CE9C00EFBD
      8400F7C69400F7D6A500FFEFC600FFFFD600FFFFDE00FFFFD600FFFFD600FFFF
      D600FFFFD600FFFFDE00D6C6AD00C6949400AD4A1000F7A54200FFB55200BD63
      18009C3900000000000000000000000000009C390000AD4A1000E7943900FFAD
      4200F79C3100CE731800B55A1000AD4A0800AD4A0800BD5A0000CE6B0000CE6B
      0000B55208009C39080000000000000000000000000029ADD600B5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0031ADDE007BCEE7009CEFFF009CEF
      FF009CEFFF009CEFFF00108418004AD67B0021AD390021AD3900108418009CEF
      FF005ACEEF0018A5D6000000000000000000000000000000000000000000ADB5
      B500DEDEDE00EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C210010A5D60042A5DE008C847B0084847B003131
      3100000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6ADA500FFEFBD00FFE7BD00F7DE
      FD00F7CE9C00F7CE9C00F7D6A500F7E7BD00FFF7CE00FFFFD600FFFFD600FFFF
      D600FFFFD600FFFFD600BD9C8C0000000000AD4A1000F7AD4A00FFBD5200BD63
      18009C390000000000000000000000000000000000009C3900009C390800C66B
      2100E7943900F79C3100EF942900DE7B1000D6730000CE6B0000C65A0000AD4A
      08009C3908000000000000000000000000000000000018A5D6007BCEE700B5FF
      FF0094FFFF0094FFFF0094F7FF0094F7FF0084EFFF0031ADDE0031ADDE0039B5
      DE0042B5DE0042B5DE0010841800108418001084180010841800108418001084
      180039BDE700000000000000000000000000000000000000000000000000B5B5
      B500D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600846B5A00FFFFFF00F7EFE7007363
      520021214A000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD8C8C00EFDEB500FFFFDE00FFFF
      EF00F7EFDE00F7CE9C00F7CE9400F7C69400F7D6AD00F7E7BD00F7E7BD00FFEF
      C600FFFFD600EFDEC600A573730000000000A5420800D6842900E7943900AD4A
      10009C39080000000000000000000000000000000000000000009C3908009C39
      0000A5420800B55A1000C6631800BD631800B5520800A5420800A54208009C39
      080000000000000000000000000000000000000000000000000021A5D60084D6
      EF0094E7F70094E7F7009CEFFF00A5F7FF005ACEE70010A5D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B5009C948C00E7CEB5002963
      7B002973F7003139BD0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C69C8C00FFF7E700FFFF
      FF00FFFFFF00F7DEBD00F7C69400EFBD8400F7BD8C00F7C69400F7D6AD00FFEF
      BD00FFEFC600BD9C8C000000000000000000000000009C3908009C3908009C39
      0800000000000000000000000000000000000000000000000000000000000000
      00009C3908009C3908009C3908009C3908009C3908009C390800000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D60021A5D60021A5D60029ADD60029ADD60021A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A6B9C00299C
      EF002973F7003139BD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD9C9C00EFEF
      E700FFFFEF00FFF7CE00FFE7B500F7DEAD00F7DEAD00FFE7B500FFEFBD00F7E7
      BD00C69C94000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000010
      E7000010E7000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A57B
      7300D6BDA500F7E7BD00FFEFBD00FFEFBD00FFEFBD00F7E7BD00E7C6AD00C694
      9400000000000000000000000000000000000000000000000000000000000000
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
      000000000000AD847B00C69C8C00CEA59C00CEA59C00C69C9400000000000000
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
      0000000000000000000039ADDE0039ADDE0039ADDE0039ADDE0039ADDE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031DE000031DE00000000000000000021A5D60021A5D60021A5
      D6005AC6E70042BDE70029ADD60021A5D60018A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000039ADDE0094DEEF007BE7F7005AD6EF0052C6E70052C6
      E70042BDDE0029ADD60018A5D600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C66B6B00CE636300B552
      52009C6B6B00B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500CE6363008C420800843910000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE000031DE00000000000000000018A5D600ADDEF700B5FF
      FF009CFFFF0094F7FF008CEFFF007BE7F7006BD6F70052C6E70042B5DE0029AD
      D60021A5D60018A5D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000021A5D600A5DEF700BDFFFF0094FFFF009CFFFF008CEF
      FF007BE7F70073DEF7005ACEEF004AC6E70039B5DE0029ADD60029ADDE000000
      000000000000000000000000000000000000B5847300C66B6B00CE636300BD5A
      5A009C6B6B00A58C8C0094292900B5736B00DECECE00C6CEC600F7F7F700FFFF
      FF00E7E7E700CE636300A5392100C65A5A009C4A4A0000000000000000000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE0000000000000000000000000010A5D60063BDE700CEFF
      FF008CF7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CEF
      FF0073DEF7005ACEEF004AC6E70031B5DE0021A5D60018A5D60018A5D6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000018A5D6006BC6E700BDFFFF0094FFFF0094F7FF0094F7
      FF0094FFFF009CF7FF0094F7FF0094F7FF0084EFFF007BE7F7006BDEF70052C6
      E70021A5D600000000000000000000000000B5847300C66B6B00CE636300BD5A
      5A00A5737300A5848400942121008C181800B5736B00EFE7E700D6DEDE00F7F7
      F700FFFFFF00CE636300B5393100C65A5A009C4A4A004A0052009C4A4A000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031DE000000000000000000000000000000000021A5D60042B5DE00BDEF
      F7009CFFFF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF0094F7FF0094F7FF008CEFFF008CEFFF0084E7FF0063D6EF0031ADDE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000029ADD6005AC6E700A5E7F700A5FFFF008CF7FF0094F7
      FF008CF7FF008CF7FF008CF7FF0094F7FF0094F7FF0094F7FF0094F7FF006BCE
      E70042BDE700000000000000000000000000B5847300C66B6B00CE636300B552
      5200A5737300AD8C8C00942929009429290094313100B5B5B500EFE7E700D6E7
      DE00F7F7F700CE636300B5393900C65A5A009C4A4A0021210000C65A5A009C4A
      4A000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031DE000031
      DE00000000000000000000000000000000000000000029ADD6005AC6E70094D6
      EF00B5FFFF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF7005ACEEF0021A5
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000039B5DE005AC6E70094DEEF00A5FFFF008CF7FF0094F7
      FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF006BCE
      E7006BD6F70029ADD6000000000000000000B5847300C66B6B00CE636300B552
      5200B5737300C6ADAD00BD9C9C00BD9C9C00BDA5A500BDA5A500B5B5B500EFE7
      E700C6CEC600CE636300B5393900C65A5A009C4A4A00B5524200C65A5A009C4A
      4A00000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000000
      0000000000000000000000000000000000000000000029ADD6007BE7F70063C6
      E700C6F7FF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70084E7FF0039BD
      DE00000000000000000000000000000000000000000039ADDE0039ADDE0039AD
      DE0039ADDE0039ADDE0039B5DE007BE7F7005AC6E700ADEFF70094FFFF008CF7
      FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF006BCE
      E7007BE7F7004AC6E7000000000000000000B5847300C66B6B00CE636300CE63
      6300CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE63
      6300CE636300CE636300B54A4A00C65A5A009C4A4A00CE5A5200C65A5A009C4A
      4A004A0052009C4A4A0000000000000000000000000000000000000000000000
      00000031FF000031DE000031DE000031DE000031DE0000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      0000000000000000000000000000000000000000000029ADD60094EFF70052CE
      E700BDE7F7009CFFFF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70084E7FF0063D6
      EF0018A5D6000000000000000000000000000000000039ADDE0094DEEF007BE7
      F7005AD6EF0052C6E70039B5DE008CEFFF005AC6E700ADE7F700A5FFFF008CF7
      FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF006BCE
      E70084EFFF006BD6F7000000000000000000B5847300AD4A4A00AD4A4A00CE8C
      8C00CE737300CE737300CE737300CE737300CE737300CE737300CE737300CE73
      7300DE7B7B00D66B6B00AD424200CE6363009C4A4A00C6525200C65A5A009C4A
      4A0021210000C65A5A009C4A4A00000000000000000000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      00000031DE000031DE000031DE000031DE000031DE0000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CEFFF0063DE
      EF008CCEEF00BDFFFF008CF7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70084E7FF008CEF
      FF0029ADD6000000000000000000000000000000000021A5D60084DEF70063D6
      EF0063D6EF0073E7F70039B5DE0094F7FF0073E7F7006BC6E700A5E7F700ADEF
      F700A5EFF700ADEFF700A5F7FF008CF7FF0084EFFF008CEFFF008CEFFF006BCE
      E70084EFFF008CEFFF0031B5DE0000000000B5847300A5423900C6847B00F7F7
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00EFE7E700E7949400AD313100CE6363009C4A4A00B5525200C65A5A009C4A
      4A00B5524200C65A5A009C4A4A00000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD60094EFF7008CF7
      FF004ABDDE00CEF7FF00A5FFFF0094F7FF008CF7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70084E7FF00A5F7
      FF004AC6E7000000000000000000000000000000000018A5D6006BCEE70073E7
      F70073E7F7007BE7F70039B5DE0094F7FF0094FFFF005AC6E7005AC6E7005AC6
      E7005AC6E7005AC6E700A5DEF700ADF7FF0094F7FF008CEFFF0084EFFF006BCE
      E70073E7FF009CFFFF0052C6E70000000000B5847300A5423900C6848400FFFF
      FF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700EFE7E700E7949400AD313100CE6363009C4A4A00B54A4A00C65A5A009C4A
      4A00C65A4A00C65A5A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031FF000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD60094EFF7009CFF
      FF005AD6EF0063BDE700BDE7F700BDEFF700C6F7FF00C6F7FF00BDFFFF009CF7
      FF0084EFFF008CEFFF008CEFFF008CEFFF008CEFFF0063D6F70084E7FF00A5F7
      FF00A5F7FF0021A5D60000000000000000000000000029ADD6005AC6E7008CEF
      FF0084EFFF008CF7FF0042B5DE0094EFF70094FFFF009CFFFF0094FFFF008CF7
      FF0084EFFF0073E7F7005AC6E7005AC6E700ADE7F700ADF7FF00A5F7FF008CE7
      FF0094EFFF00B5FFFF0094EFF70029ADD600B5847300A5423900C6847B00FFFF
      FF00CEC6C600D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00C6C6C600E7E7
      E700EFE7E700E7949400AD313100BD5A5A009C4A4A00B5525200CE6363009C4A
      4A00B5524200C65A5A009C4A4A00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031FF000031DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0063D6EF0052CEE7005AC6E70063C6E70063C6E70073C6E700BDE7
      F700B5F7FF0084EFFF008CEFFF008CEFFF008CEFFF0063D6F70084E7FF0094F7
      FF0094F7FF0042BDE70000000000000000000000000039B5DE005AC6E70094EF
      F70094FFFF0094F7FF0039B5DE0094F7FF0094FFFF0094F7FF0094F7FF0094F7
      FF0094F7FF009CF7FF0084F7FF005AC6E7005AC6E70094DEEF009CDEF70094DE
      EF009CDEF700A5E7F700A5E7F70042B5DE00B5847300A5423900C6847B00FFFF
      FF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700FFF7
      F700EFE7E700E7949400AD313100BD5A5A009C4A4A00B5525200CE6363009C4A
      4A00B5524200C65A5A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031DE000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF009CFFFF0094FFFF0094F7FF008CEFFF0084EFFF0063D6EF0042B5
      DE00ADDEF700C6F7FF0094F7FF008CEFFF008CEFFF007BDEFF0094EFFF00A5F7
      FF00A5F7FF006BD6EF0018A5D600000000000000000039B5DE007BE7F7005ACE
      EF0094FFFF0094FFFF0042B5DE0094F7FF0094FFFF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF007BEFF7005AC6E7005AC6E7005AC6
      E70029ADD60029ADD60039ADDE0029ADD600B5847300A5423900C6847B00FFFF
      FF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700FFF7
      F700EFE7E700E7949400AD313100BD5A5A009C4A4A00B5525200CE6363009C4A
      4A00B5524200C65A5A009C4A4A00000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031FF000031DE000031
      FF000031FF000031FF000031DE000031FF000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF007BE7
      F70042BDE7007BCEE700BDE7F700BDE7F700BDE7F700BDE7F700CEEFF700CEEF
      F700CEEFF700C6EFFF0029ADD600000000000000000039B5DE008CEFFF005AC6
      E700A5EFF7009CFFFF0042B5DE00A5F7FF009CFFFF0094F7FF0094F7FF008CF7
      FF0094EFFF0094EFF70094EFF70094EFF70094EFFF0094EFFF009CF7FF0063D6
      EF0000000000000000000000000000000000B5847300A5423900C6847B00FFFF
      FF00CEC6C600D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00C6C6C600E7E7
      E700EFE7E700E7949400AD313100BD5A5A009C4A4A00B5525200BD5A5A009C4A
      4A00B5524200CE6363009C4A4A00000000000000000000000000000000000000
      000000000000000000000031FF000031FF000031FF000031DE000031FF000000
      0000000000000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CF7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF0094F7
      FF008CEFFF005AD6EF005AD6EF005AD6EF005AD6EF0031B5DE0021A5D60029AD
      D60029ADD60029ADD60021A5D600000000000000000039B5DE0094F7FF0073E7
      F7006BC6E700A5E7F700ADEFF70029ADD600B5FFFF009CFFFF00A5FFFF009CFF
      FF005ACEEF0039ADDE0042B5DE0042B5DE0042B5DE004ABDE70052C6E70042B5
      DE0000000000000000000000000000000000B5847300A5423900C6847B00FFFF
      FF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700EFE7E700E7949400AD313100BD5A5A009C4A4A00B5525200BD5A5A009C4A
      4A00B5524200CE6363009C4A4A00000000000000000000000000000000000000
      0000000000000031FF000031FF000031DE000031FF000031FF00000000000000
      000000000000000000000031FF000031FF000031FF000031FF00000000000000
      0000000000000000000000000000000000000000000029ADD600A5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF008CEFFF0094F7FF008CEFFF007BEFFF0084EFFF0039BDE700000000000000
      0000000000000000000000000000000000000000000039B5DE0094F7FF0094FF
      FF005AC6E7005AC6E7005AC6E70029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60084EFFF006BCEE70073E7FF009CFFFF0052C6E700000000000000
      000000000000000000000000000000000000B58C5A009C5A2100B58C6B00C6CE
      CE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600BD7B730094100800841010009C4A4A00BD525200BD5A5A009C4A
      4A00B5524200CE6363009C4A4A00000000000000000000000000000000000000
      00000031FF000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000031FF000031FF000031FF000000
      0000000000000000000000000000000000000000000029ADD600B5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF009CEFFF009CEFFF009CEF
      FF009CEFFF009CEFFF009CEFFF009CEFFF009CF7FF0039B5DE00000000000000
      0000000000000000000000000000000000000000000042B5DE0094EFF70094FF
      FF009CFFFF0094FFFF008CF7FF0084EFFF0073E7F7005AC6E7005AC6E700ADE7
      F700ADF7FF00A5F7FF008CE7FF0094EFFF00B5FFFF0094EFF70029ADD6000000
      000000000000000000000000000000000000000000000000000000000000B584
      7300A5523100C6847B00FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700CE636B00B5424200BD5A5A009C4A
      4A00B5524200BD5A5A009C4A4A00000000000000000000000000000000000031
      FF000031FF000031FF000031FF000031FF000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000018A5D6007BCEE700B5FF
      FF0094FFFF0094FFFF0094F7FF0094F7FF0084EFFF0031ADDE0031ADDE0039B5
      DE0042B5DE0042B5DE004ABDDE004ABDDE005ABDE70021A5D600000000000000
      0000000000000000000000000000000000000000000039B5DE0094F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF009CF7FF0084F7FF005AC6E7005AC6
      E70094DEEF009CDEF70094DEEF009CDEF700A5E7F700A5E7F70042B5DE000000
      000000000000000000000000000000000000000000000000000000000000B584
      7300A5523100C6847B00FFFFFF00CEC6C600D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00FFF7F700E7949400AD313100BD5A5A009C4A
      4A00B5524200BD5A5A009C4A4A000000000000000000000000000031FF000031
      FF000031FF000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF0000000000000000000000000000000000000000000000000021A5D60084D6
      EF0094E7F70094E7F7009CEFFF00A5F7FF005ACEE70010A5D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042B5DE0094F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF007BEF
      F7005AC6E7005AC6E7005AC6E70029ADD60029ADD60039ADDE0029ADD6000000
      000000000000000000000000000000000000000000000000000000000000B584
      7300945A0800B5846300FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700C67B7B0094100800841010009C4A
      4A00B55A4200BD5A5A009C4A4A0000000000000000000031FF000031FF000031
      FF000031FF000031FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D60021A5D60021A5D60029ADD60029ADD60021A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042B5DE00A5F7FF009CFF
      FF0094F7FF0094F7FF008CF7FF0094EFFF0094EFF70094EFF70094EFF70094EF
      FF0094EFFF009CF7FF0063D6EF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B58C
      6B00945A0800B58C6B00C6CECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600D6ADAD00BD7B7300BD737300CE63
      6B00B54A3900BD5A5A009C4A4A0000000000000000000031FF000031FF000031
      FF000031FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000029ADD600B5FF
      FF009CFFFF00A5FFFF009CFFFF005ACEEF0039ADDE0042B5DE0042B5DE0042B5
      DE004ABDE70052C6E70042B5DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B5847300A54A2900C6847B00FFFFFF00CEC6C600CEC6
      C600CEC6C600CEC6C600CEC6C600CEC6C600CEC6C600CEC6C600FFF7F700E794
      9400A5392100BD5A5A009C4A4A0000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000029ADD60029AD
      D60029ADD60029ADD60029ADD60029ADD6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B5847300A54A2900BD7B7300FFFFFF00FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700CE8C
      8C009C311800BD5A5A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B5847300945A0800B57B7300C6CECE00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600BD84
      7B0094311800943131009C4A4A00000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADADAD00BDB5B500E7E7E700FFFFFF00FFFFFF00EFEFEF00BDB5B500B5AD
      FD004A4A4A002121210031313100424242006363630084848400ADADAD00CECE
      CE00E7E7E700DEDEDE00ADA5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      FD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEFEF00B5B5B500B5B5
      B5009C949C006B6B6B004A4A4A00313131002929290031313100424242006363
      63008C8C8C00A5A5A50000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      FD00FFD6A500CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500CECECE00F7F7
      F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADADAD009C9C9C00A5A5
      A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A5A00393939002929
      290042424200A59C9C0000000000000000000000000000000000000000000000
      0000FFFFFF006B73FF003131B5003131BD003131BD003131BD003131C6003131
      C6003131BD003131BD003131B5003131B5003131AD003131A5006363FF00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      FD00FFD6AD00CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      00000000000000000000000000000000000000000000A5A5A500EFEFEF00F7F7
      F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6D600B5B5B500A5A5
      A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5B500A5A5A5008484
      84006B6B6B00A59C9C0000000000000000000000000000000000000000000000
      0000FFFFFF003131C6003131DE003131EF003131F7003131F7003131EF003131
      F7003131EF003131EF003131EF003131E7003131DE003131C60031319C00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      EF00FFF7EF00FFEFE700FFEFD600FFE7C600FFE7C600FFE7C600FFDEB500FFDE
      B500FFD6AD00CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      00000000000000000000000000000000000000000000A5A5A500E7E7E700DED6
      D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7E700E7E7E700D6D6
      D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C9C00A5A5A500ADAD
      FD00B5B5B500A5A5A50000000000000000000000000000000000000000000000
      0000FFFFFF003131D6003131EF003139FF003139FF003139FF003139FF003139
      FF003139FF003139FF003139FF003139FF003131E7003131CE003131AD00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E7000000000000000000000000000000000000000000A5A5A500B5ADAD00A5A5
      A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7E700F7F7F700F7F7
      F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5B500ADA5A500A5A5
      A500A59C9C009C9C9C0000000000000000000000000000000000000000000000
      0000FFFFFF003131E7003139FF003139FF003139FF003139FF003139FF003139
      FF003139FF003139FF003139FF003139FF003131F7003131DE003131B500FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7EF00FFF7EF00FFEFE700FFEFD600FFEFD600FFE7C600FFE7
      C600FFEFD600CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E70000000000000000000000000000000000A5A5A500BDBDBD00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7F700C6C6C600C6BD
      C600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00C6C6
      C600BDBDBD00A5A5A50000000000000000000000000000000000000000000000
      0000FFFFFF003131EF003139FF003139FF003139FF003139FF003139FF003139
      FF003139FF003139FF003139FF003139FF003139FF003131E7003131BD00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700000000000000000000000000A5A5A500D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBDBD00ADB5AD0084C6
      8400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6D600DEDEDE00DEDE
      DE00D6D6D600ADADAD0000000000000000000000000000000000000000000000
      0000FFFFFF003139FF003139FF003139FF003139FF003139FF003139FF003139
      FF003139FF003139FF003139FF003139FF003139FF003131EF003131C600FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF007B8CC60031398C0031398C00396B9400FFE7
      C600FFEFD600CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000BDBDBD00DEDE
      DE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBDBD00EFEFEF00D6F7
      D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5A500ADADAD00BDBD
      BD00BDBDBD00B5B5B50000000000000000000000000000000000000000000000
      0000FFFFFF003139FF003139FF00848CFF00848CFF00848CFF00848CFF00848C
      FF00848CFF00848CFF00848CFF00848CFF003131F7003131EF003131CE00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFFFFF00085A94003184FF003184FF00085A9400FFEF
      D600FFEFD600CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000000000B5B5
      B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7F700F7F7F700F7F7
      F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00ADA5
      A500A5A5A5000000000000000000000000000000000000000000000000000000
      0000FFFFFF003139FF003139FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003131EF003131EF003131CE00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00085A940042B5F70042B5F700085A9400FFEF
      D600FFEFD600CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000000000000000
      000000000000A59C9C00BDBDBD00DEDEDE00CECECE00ADADAD00C6C6C600DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00C6C6C600BDB5
      B500000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF003139FF003942FF003942FF003139FF003139FF003139FF003139
      FF003139FF003139FF003139FF003131F7003131EF003131EF003131CE00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00298CBD000873B5000873B500085A940042B5F70042B5F7000873B5000873
      B500085A94007B8CC60000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      000000000000ADADAD00F7F7F700F7F7F700DEDEDE00BDBDBD00BDBDBD00C6C6
      C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADADAD00BDB5B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF003139FF005252FF005252FF003942FF003139FF003139FF003139
      FF003139FF003139FF003139FF003131F7003131EF003131EF003131CE00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000873B5008CD6F70042B5F70042B5F70042B5F70042B5F70042B5F70042B5
      F7008CD6F7000873B50000000000000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700C6C6C60000E7
      E70000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      00000000000000000000EFDEDE00FFE7DE00FFE7D600FFDED600F7DED600F7DE
      D600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF003942FF006B6BFF006363FF00424AFF003942FF003942FF003139
      FF003139FF003139FF003139FF003139FF003131F7003131F7003131CE00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00216BF700B5DEF700B5DEF700B5DEF7008CD6F7008CD6F700B5DEF700B5DE
      F700B5DEF700216BF7000000000000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6B500FFC6AD00EFCECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF005252FF00848CFF006B6BFF005252FF004A4AFF00424AFF00424A
      FF003139FF003139FF003139FF003139FF003139FF003131F7003131CE00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF005AB5E7003184FF003184FF003184FF008CD6F7008CD6F7003184FF003184
      FF003184FF005AB5E700000000000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF006363FF009C9CFF00848CFF006B6BFF006363FF005252FF004A4A
      FF00424AFF003942FF003139FF003139FF003139FF003131F7003131BD00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF003184FF008CD6F7008CD6F7003184FF00FFF7
      E700FFF7E700CE63000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00C6CEFF006363FF004A4AFF003942FF003139FF003139FF003139
      FF003139FF003139FF003139FF003139FF003131F7003131DE007B84FF00FFFF
      FF00000000000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B00003184FF00B5DEF700B5DEF7003184FF00DE7B
      0000DE7B0000CE63000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE6300005AB5E7003184FF003184FF005AB5E700CE63
      0000CE630000E7A5630000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500F7BDB500F7BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B21000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      000000000000E7C6C600FFEFE700FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFCEB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
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
      0000000000000000000000000000000000008C63630042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEC600F7DEBD00BDCE8C00E7D6A500E7D6A500EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000021A5D60021A5D60021A5
      D6005AC6E70042BDE70029ADD60021A5D60018A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000008C6363004242420042424200B55A0000B55A0000424242008C63
      63008C6363008C6363008C6363008C6363008C6363008C6363008C6363008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7DECE00F7E7CE00F7DEC600F7DEC600CED69C00009C0000E7D6A5006BB5
      4A0039A5290039A529006BB54A00C6C67B00E7CE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000018A5D600ADDEF700B5FF
      FF009CFFFF0094F7FF008CEFFF007BE7F7006BD6F70052C6E70042B5DE0029AD
      D60021A5D60018A5D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFE7CE00F7E7D600F7E7CE00F7DEC600EFDEB500009C0000109C1000009C
      0000009C0000009C0000009C0000009C000094BD5A00E7CE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000010A5D60063BDE700CEFF
      FF008CF7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CEF
      FF0073DEF7005ACEEF004AC6E70031B5DE0021A5D60018A5D60018A5D6000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7E7D600F7EFDE00F7E7D600F7E7CE00EFDEBD00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000C6C67B00EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000021A5D60042B5DE00BDEF
      F7009CFFFF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF0094F7FF0094F7FF008CEFFF008CEFFF0084E7FF0063D6EF0031ADDE000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      630000000000000000000000000000000000000000000000000000000000AD84
      7B00F7E7DE00F7EFDE00F7E7D600F7E7CE00E7DEC600009C0000009C0000009C
      000039AD3100C6CE8C00C6CE8C006BB54A00009C000039A52900EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000029ADD6005AC6E70094D6
      EF00B5FFFF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0084E7FF005ACEEF0021A5
      D600000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      630000000000000000000000000000000000000000000000000000000000AD84
      7B00F7EFE700F7EFE700F7EFDE00F7E7D600EFE7C600009C0000009C0000009C
      000031A52100E7D6AD00E7D6A500E7D6A500A5C67300109C0800EFCE9C00EFCE
      9400EFCE9400B58C7B0000000000000000000000000029ADD6007BE7F70063C6
      E700C6F7FF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF007BE7F70073DEF70039BD
      DE00000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      630000000000000000000000000000000000000000000000000000000000B58C
      7B00F7EFE700FFF7EF00F7EFE700F7EFDE00EFE7CE00009C0000009C0000009C
      0000009C0000009C0000E7D6AD00EFD6AD00EFD6AD00EFCEA5007BCE7B00EFCE
      9C00EFCE9400B58C7B0000000000000000000000000029ADD60094EFF70052CE
      E700BDE7F7009CFFFF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEFF0063D6
      EF0018A5D6000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      630000000000000000000000000000000000000000000000000000000000B58C
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700EFE7CE00EFE7CE00E7DEC600E7DE
      C600EFDEBD00EFDEB500E7D6AD00F7D6B500EFD6AD00EFD6AD007BCE7B00EFCE
      9C00EFCE9400B58C7B0000000000000000000000000029ADD6009CEFFF0063DE
      EF008CCEEF00BDFFFF008CF7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEF7008CEF
      FF0029ADD6000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      630000000000000000000000000000000000000000000000000000000000BD8C
      8400FFF7F700FFFFF700FFF7EF007BCE7B00F7EFE700F7EFDE00F7E7D600EFE7
      C600E7DEC600EFDEBD00EFDEB500E7D6AD00E7D6AD00E7D6A500EFD6AD00EFCE
      A500EFCE9C00B58C7B0000000000000000000000000029ADD60094EFF7008CF7
      FF004ABDDE00CEF7FF00A5FFFF0094F7FF008CF7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF700087B10001084
      18004AC6E7000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      630000000000000000000000000000000000000000000000000000000000BD94
      8400FFF7F700FFFFFF00FFF7F7007BCE7B00F7EFE700F7EFE700F7EFDE00EFE7
      CE00009C0000009C0000009C0000009C0000009C0000E7D6AD00EFD6AD00EFD6
      FD00EFCEA500B58C7B0000000000000000000000000029ADD60094EFF7009CFF
      FF005AD6EF0063BDE700BDE7F700BDEFF700C6F7FF00C6F7FF00BDFFFF009CF7
      FF0084EFFF008CEFFF008CEFFF008CEFFF008CEFFF000873080039BD63004AD6
      7B001084180018A5D60000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C694
      8400FFF7F700FFFFFF00FFFFFF00FFF7F700109C1000ADD6A500EFEFD600EFE7
      CE00EFE7CE0031AD2900009C0000009C0000009C0000E7D6AD00F7D6B500EFD6
      FD00EFCEA500B58C7B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0063D6EF0052CEE7005AC6E70063C6E70063C6E70073C6E700BDE7
      F700B5F7FF0084EFFF008CEFFF008CEFFF00006B000031AD52005AE78C005AE7
      8C0039BD5A000873100000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF0039AD3900009C000073C66B00CEDE
      B500CEDEB50039AD3900009C0000009C0000009C0000EFDEB500F7DEBD00F7D6
      B500EFD6AD00B58C7B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF009CFFFF0094FFFF0094F7FF008CEFFF0084EFFF0063D6EF0042B5
      DE00ADDEF700C6F7FF0094F7FF000873080029AD4A005AEF940052DE84004AD6
      6B0021AD310021AD390008730800000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF00CEEFCE00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000EFDEBD00F7DEBD00EFDE
      BD00DEC6A5009C847B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF007BE7
      F70042BDE7007BCEE7000873080021AD310031AD520039BD5A0042CE6B0039C6
      5A0029BD4A0021AD310021AD3100007308000000000000000000CE630000F7FF
      FF005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      630000000000000000000000000000000000000000000000000000000000CE9C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00F7FFF7009CDE9C00009C0000009C
      0000009C0000009C0000009C0000109C1000009C0000E7DEC600EFDEBD00CEBD
      FD00B5AD94009C847B0000000000000000000000000029ADD6009CF7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF0094F7
      FF008CEFFF005AD6EF000873080008730800087308000873100031BD4A0031BD
      4A00087308000873080008730800087308000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE630000000000000000000000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      630000000000000000000000000000000000000000000000000000000000CEA5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFF700CEEFCE0073C6
      6B0039AD390039AD390073C66300EFE7CE00009C0000C6D6AD00CEBDAD00BDB5
      A500B5AD9C009C847B0000000000000000000000000029ADD600A5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF008CEFFF0094F7FF008CEFFF007BEFFF0084EFFF000873080021AD390021BD
      3900087308000000000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE630000000000000000000000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000D6A5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFF7E700E7DEC600AD84730084845A00AD7B7300AD7B
      7300AD7B7300AD84730000000000000000000000000029ADD600B5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF009CEFFF009CEFFF009CEF
      FF009CEFFF009CEFFF009CEFFF009CEFFF009CF7FF000873100018AD290010AD
      2100087308000000000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE6300000000000000000000000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B584840000000000000000000000000018A5D6007BCEE700B5FF
      FF0094FFFF0094FFFF0094F7FF0094F7FF0084EFFF0031ADDE0031ADDE0039B5
      DE0042B5DE0042B5DE004ABDDE004ABDDE005ABDE7000884100010AD2100089C
      1800087308000000000000000000000000000000000000000000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE63000000000000000000000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      840000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B5848400000000000000000000000000000000000000000021A5D60084D6
      EF0094E7F70094E7F7009CEFFF00A5F7FF005ACEE70010A5D600000000000000
      00000000000000000000000000000000000008730800089C180010AD21000884
      1000087308000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      84000000000000000000000000000000000000000000000000000000000018A5
      D60021A5D60021A5D60029ADD60029ADD60021A5D60000000000000000000000
      000000000000000000000000000008841000089C180008A51800088C10000873
      080000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D67310000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000873
      08000873080010841800089418000894180008941800087B1000087308000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400B5847300B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000087308000873100008730800087308000873080000000000000000000000
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
      2800000060000000A80000000100010000000000E00700000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFF000000FFFFFFF3
      FFFFFF870F000000C00003F1FFFFE00007000000C00003F07FFFC00007000000
      C00003F03FFFC00007000000C00003F01FFFE00007000000C00003F80FFFC000
      0F000000C00003FC03FFC0000F000000C00003FE01FFE0000F000000C00003FF
      00FFC0000F000000C00003FF807FC0000F000000C00003FFC01FE0000F000000
      C00003F8000FC0001F000000C00003F80007C0003F000000C00003F80003E000
      7F000000C00003F80003FF00FF000000C00003F80003FF03FF000000C00003FC
      0003FF07FF000000C00003FF0007FE07FF000000C00003FFC003FE03FF000000
      C00003FFF801FE01FF000000E00007FFFE01FF01FF000000FFFFFFFFFF81FF83
      FF000000FFFFFFFFFFE3FFFFFF000000FFFFFFFFFFFFE00003FFFFFFFFFFFFFF
      FFFFE00003FFFFFFFFFFFFFFFFFFE00003FFFFFFFFFFFFFFFFFFE00003FFE03F
      8007FFFF01FFE00003F0203F8001FFFF00FFE00003F0200F8000FFF1101FE000
      03F03C0780007FF0000FE00003FFFC0780001FF00007E00003FFFE0FC0000FF0
      0003E00003FFFC07E00007900001E00003C00000F80001800000E00003C00000
      E00000800000E00003C00000C00000800000E00003C00000C00000800000E000
      03C00000C00000800000E00003C00000E00000C00000E00003C00000FFFE00E0
      0000E00003C00000FFFF00F00000E00003C00000FFFFC0F80000E00007C00000
      FFFFF0FC0000E0000FC00000FFFFFCFE0000E0001FFFFFFFFFFFFFFF8000E000
      3FFFFFFFFFFFFFFFC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFC3FFFF9FFFFF9FFFFFFFFFFF81FFFE0FFFFE0FFF
      FFFFFFFF81FFF00FFFF00FFFFFFFFFFF81FFE0007FE0007FFFFFFFFF81FFC000
      7FC0007FFFFFFFFF81FFC00027C00027FFFFFFFF81FF400003400003E00003E0
      0003200003200003C00001C00001000001000001C00001C00001000001000001
      C00001C00001000001004001C00001C00001800001806001E00003E000039800
      01983801FFFFFFFF81FF980001981C06FFFFFFFF81FFC00001C00E18FFFFFFFF
      81FFF00001F00FE0FFFFFFFF81FFFD0001FD0FE0FFFFFFFF81FFFD6007FD7FE0
      FFFFFFFF81FFFF781FFF7FF8FFFFFFFF81FFFF7E7FFF7FFCFFFFFFFFC3FFFFFF
      FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF8FFFFFFFFFFFFFFFFFFFFFFF07FFFFFF
      FC7FFFFFFFFFFFFF03FFFFFFF83F807FFFFFFFFF01FFFFFFF81F8003FFE0000F
      00FFFFFFF80F80003FE0000F807FFFFFFC07800007E0000FC03FFF0006038000
      03E0000FE03FFF000303800003E0000FF0301F000381800003E0000FF8000F00
      03C1800003E0000FFF00030007C0800003E0000FFF0003007FE0800003E0000F
      FF0001003FE0800003E0000FFF0001001FE0800003E0000FFE0000000FC08000
      03E0000FFE0000040781800003E0000FFE0000060001800003E0000FFE000007
      0003800003E0000FFF0001078007800007E00007FF000107C00FC03FFFE00003
      FF80038FF03FE07FFFFFFFC3FFC007FFFFFFFFFFFFFFFFE7FFE00FFFFFFFFFFF
      FFFFFFFFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
      1FFFFFFFFFFFFFF9807FFFFC01FF8000FFFFFFF18003FFFC001F00007FC7FFE3
      80001FFC000700001FC3FF8780001FFC000700000FC1FF0F80000FFC00030000
      0FE0FE1F80000F800003000003F07C3F800007800003000001FC307F80000780
      0001000001FE00FF800007800001000001FF01FF800003800000000001FF83FF
      800003800000000001FF01FF800001800000000001FE00FF80000180000F0000
      01FC187F80000180000F000001F83C3F80003F80003F000001F07F1F80003F80
      001FE00001E0FF8F80003F80001FE00001C1FFEFC03FFF80001FE0000183FFFF
      E07FFF8001FFE0000187FFFFFFFFFFC001FFFC00018FFFFFFFFFFFC0FFFFFC00
      01FFFFFFFFFFFFFFFFFFFC0001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C1FFF
      FFFFFFFFFFFFFFFFFC0007FFFFFFC00003FFFFFFF00001FFFFFFC000038000FF
      E00003F8001FC0000380007F800003F0000FC0000380003F800003F0000FC000
      0380001F800003F0000FC0000380000F800003F0000FC00003800007800003F0
      000FC00003800003800003F0000FC00003800001C00003F0000FC00003800001
      E00007F0000FC00003800001F8000FF0000FC00003800001F8001FF0000FC000
      03800001FC007FF0000FC00003C00001FC00FFF0000FC00003E00001FC01FFF0
      000FC00003F00001FC01FFF0000FC00003F80001FC01FFF8001FC00003FC0001
      FC01FFFFFFFFE00007FE0001F803FFFFFFFFFFFFFFFF0001F803FFFFFFFFFFFF
      FFFFFFFFF007FFFFFFFFFFFFFFFFFFFFFFFFFFE00003FFFFFFFFFFFFFFFFFFE0
      0003FFFFFFFFFFFFFF1FFFE00003807FFFC00003F8000FE000038003FFC00003
      E0000FE0000380001FC00003C0000FE0000380001FC00003C0000FE000038000
      0FC00003C0000FE0000380000FC00003C0000FE00003800007C00003C0000FE0
      0003800007C00003C0000FE00003800007C00003C0000FE00003800003C00003
      C0000FE00003800003C00003C0000FE00003800001C00003C0000FE000038000
      00C00003C0000FE00003800000C00003C0000FE00003800007C00003C0000FE0
      0003800007C00003E0000FE00003800007C00003F8000FE00007C03F07C00003
      FE1FFFE0000FE07E0FE00007FFFFFFE0001FFFE01FFFFFFFFFFFFFE0003FFFF0
      7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 488
    Top = 465
    PixelsPerInch = 96
    object cxStyle1Inventering: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clYellow
      TextColor = clBlack
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdCreateInvs
    PopupMenus = <>
    Left = 488
    Top = 225
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 488
    Top = 273
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = grdCreateInvs
      PrinterPage.DMPaper = 256
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageHeader.RightTitle.Strings = (
        '[User Name][Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  object SaveDialog2: TSaveDialog
    Left = 488
    Top = 342
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end>
    UseOwnFont = False
    Left = 304
    Top = 358
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
    Left = 488
    Top = 406
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton1: TdxBarButton
      Action = acSetAllToBeInventera
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = acSetMarkedAsConfirmed
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = acSetMarkedAsConfirmedAndPriceConfirmed
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = acSetMarkedRowsToBeInventerade
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = acCreateResult
      Category = 0
    end
  end
  object FDm_SelectedRows: TkbmMemTable
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
    Left = 144
    Top = 462
    object FDm_SelectedRowsInventeringsNr: TIntegerField
      FieldName = 'InventeringsNr'
    end
    object FDm_SelectedRowsLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object FDm_SelectedRowsStatus: TIntegerField
      FieldName = 'Status'
    end
  end
  object siLangLinked_fInvCreateManyCtrlList: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 2
    ActiveLanguage = 2
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Base'
      'Swedish')
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
    Left = 624
    Top = 376
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660049006E0076004300720065006100740065004D00
      61006E0079004300740072006C004C00690073007400010053006B0061007000
      6100200069006E00760065006E0074006500720069006E006700610072000100
      01000D000A00630078004C006100620065006C00310001005500720076006100
      6C0020007000E50020006D006100780064006100740075006D00010001000D00
      0A00630078004C006100620065006C003200010053006B006100700061002000
      69006E00760065006E0074006500720069006E00670061007200200067006500
      6E006F006D00200061007400740020006D00610072006B006500720061002000
      6C00610067006500720067007200750070007000650072002000690020006C00
      69007300740061006E0020006F006300680020006B006C00690063006B006100
      20007000E5002000220053006B00610070006100200069006E00760065006E00
      74006500720069006E006700610072002200010001000D000A00630078004C00
      6100620065006C00330001004600F600720020007600650072006B0020007300
      61006D006C0061007300200061006C006C00610020006C006100670065007200
      670072007500700070006500720020006900200065006E00200069006E007600
      65006E0074006500720069006E0067002E00010001000D000A00630078004C00
      6100620065006C00340001004600F6007200200056005700200073006B006100
      700061007300200065006E00200069006E00760065006E007400650072006900
      6E006700200070006500720020006C0061006700650072006700720075007000
      70002E00010001000D000A00630078004C006100620065006C00350001004D00
      6100780064006100740075006D003A00010001000D000A00630078004C006100
      620065006C003600010055007200760061006C0020007000E5002000E4006700
      610072006500010001000D000A00630078004C006100620065006C0038000100
      49006E00760065006E0074006500720069006E00670073002000670072007500
      700070006E0072003A00010001000D000A00630078004C006100620065006C00
      370001004E006F0074006500720069006E0067003A00010001000D000A006700
      7200640043007200650061007400650049006E00760073005600690065007700
      49006E0076004E007200010049006E0076004E007200010001000D000A006700
      7200640043007200650061007400650049006E00760073005600690065007700
      67006100720065000100C4006700610072006500010001000D000A0067007200
      640043007200650061007400650049006E007600730056006900650077004C00
      530001004C00610067006500720073007400E4006C006C006500010001000D00
      0A0067007200640043007200650061007400650049006E007600730056006900
      650077004C00470001004C006100670065007200670072007500700070000100
      01000D000A0067007200640043007200650061007400650049006E0076007300
      56006900650077004B006F006E00740072006F006C006C006900730074006100
      50006B00740001004B006F006E00740072006F006C006C006900730074006100
      50006B007400010001000D000A00670072006400430072006500610074006500
      49006E007600730056006900650077004B006F006E00740072006F006C006C00
      69007300740061004E004D00330001004B006F006E00740072006F006C006C00
      69007300740061004E004D003300010001000D000A0067007200640043007200
      650061007400650049006E007600730056006900650077005200650073007500
      6C00740061006C00690073007400610050006B00740001005200650073007500
      6C00740061006C00690073007400610050006B007400010001000D000A006700
      7200640043007200650061007400650049006E00760073005600690065007700
      52006500730075006C007400610074006C0069007300740061004E004D003300
      010052006500730075006C007400610074006C0069007300740061004E004D00
      3300010001000D000A0067007200640043007200650061007400650049006E00
      7600730056006900650077004C00490050004E006F0001004C00490050004E00
      6F00010001000D000A0067007200640043007200650061007400650049006E00
      76007300560069006500770049006E00760065006E0074006500720061000100
      49006E00760065006E007400650072006100010001000D000A00670072006400
      43007200650061007400650049006E0076007300560069006500770049006E00
      74005600650072006B0001005600650072006B00010001000D000A0067007200
      640043007200650061007400650049006E007600730056006900650077004F00
      77006E00650072004E006F0001004F0077006E00650072004E006F0001000100
      0D000A0067007200640043007200650061007400650049006E00760073005600
      6900650077005000490050004E006F0001005000490050004E006F0001000100
      0D000A0067007200640043007200650061007400650049006E00760073005600
      69006500770049006E00760065006E0074006500720069006E00670073006400
      6100740075006D00010049006E00760065006E0074006500720069006E006700
      730064006100740075006D00010001000D000A00670072006400430072006500
      61007400650049006E0076007300560069006500770053007400610074007500
      73000100530074006100740075007300010001000D000A006700720064004300
      7200650061007400650049006E0076007300560069006500770053006B006100
      70006100640041007600010053006B0061007000610064004100760001000100
      0D000A0067007200640043007200650061007400650049006E00760073005600
      6900650077006D006100780064006100740075006D0001006D00610078006400
      6100740075006D00010001000D000A0067007200640043007200650061007400
      650049006E00760073005600690065007700560072006400650001005600E400
      720064006500010001000D000A00670072006400430072006500610074006500
      49006E007600730056006900650077004E004D00330001004E004D0033000100
      01000D000A0067007200640043007200650061007400650049006E0076007300
      56006900650077004D006500640065006C00700072006900730001004D006500
      640065006C007000720069007300010001000D000A006100630043006C006F00
      73006500010053007400E4006E0067002000460031003200010001000D000A00
      6100630052006500660072006500730068000100550070007000640061007400
      650072006100200046003900010001000D000A00610063004300720065006100
      740065004D00610072006B006500720061006400650049006E00760065006E00
      74006500720069006E00670061007200010053006B0061007000610020006900
      6E00760065006E0074002E00010001000D000A00610063005000720069006E00
      7400010053006B00720069007600200075007400010001000D000A0061006300
      4500780070006F007200740054006F0045007800630065006C00010045007800
      70006F00720074006500720061002000280065007800630065006C0029000100
      01000D000A00610063004F00700065006E0049006E0076000100D60070007000
      6E006100010001000D000A006100550070006400610074006500410076006700
      5000720069006300650001005500700070006400610074006500720061002000
      6D006500640065006C007000720069007300010001000D000A00610063005300
      6500740041006C006C0054006F004200650049006E00760065006E0074006500
      7200610001004D00610072006B00650072006100200061006C006C0061002000
      720061006400650072002000690020006700720069006400640065006E000100
      01000D000A00610063005300650074004D00610072006B006500640041007300
      43006F006E006600690072006D006500640001005300E4007400740020007300
      740061007400750073002000740069006C006C00200067006F0064006B00E400
      6E00640020007000E50020006D00610072006B00650072006100640065002000
      69006E00760065006E0074006500720069006E00670061007200010001000D00
      0A00610063005300650074004D00610072006B00650064004100730043006F00
      6E006600690072006D006500640041006E006400500072006900630065004300
      6F006E006600690072006D006500640001005300E40074007400200073007400
      61007400750073002000740069006C006C00200067006F0064006B00E4006E00
      640020006F006300680020007000720069007300730061007400740061002000
      7000E50020006D00610072006B0065007200610064006500200069006E007600
      65006E0074006500720069006E00670061007200010001000D000A0061006300
      5300650074004D00610072006B006500640052006F007700730054006F004200
      650049006E00760065006E0074006500720061006400650001005300E4007400
      740020006D00610072006B006500720061006400650020007200610064006500
      720020002200610074007400200062006C006900200069006E00760065006E00
      7400650072006100640065002200010001000D000A0061006300430072006500
      61007400650052006500730075006C007400010053006B006100700061002000
      72006500730075006C0074006C00690073007400610020007000E50020006D00
      610072006B0065007200610064006500200069006E00760065006E0074006500
      720069006E00670061007200010001000D000A00610063004500780070006F00
      7200740049006E00760065006E0074006F007200790001004500780070006F00
      7200740020006C00610067006500720066006F0072006D006100740001000100
      0D000A00610063004E006500770049006E00760065006E005300450054000100
      4E007900200069006E00760065006E002E00200066007200E5006E0020006D00
      61006C006C00010001000D000A00610063005300650074004D0061006C006C00
      010049006E00760065006E0074006500720069006E00670073006D0061006C00
      6C00010001000D000A006100630050007200690063006500470072006F007500
      7000730001005600690073006100200050007200690073006700720075007000
      700065007200010001000D000A006100630043006F006C006C00650063007400
      5000610063006B00610067006500560061006C00750065007300010047006500
      6E006500720065007200610020006C0061006700650072007600E40072006400
      6500200028007000610063006B0061006700650063006F007300740029000100
      01000D000A006100630043006F0070007900430061006C006300500072006900
      6300650054006F004E004D00330001004B006F00700069006500720061002000
      6B0061006C006B0079006C0070007200690073002000740069006C006C002000
      4E004D00330020007000720069007300010001000D000A006100630053006500
      6C0065006300740049006E00760065006E0074006F0072007900530045005400
      01005600E4006C006A00200069006E00760065006E0074006500720069006E00
      67007300670072007500700070006E007200010001000D000A00640078004300
      6F006D0070006F006E0065006E0074005000720069006E007400650072003100
      4C0069006E006B00310001004E00650077005200650070006F00720074000100
      01000D000A0073007400480069006E00740073005F0055006E00690063006F00
      640065000D000A007300740044006900730070006C00610079004C0061006200
      65006C0073005F0055006E00690063006F00640065000D000A006D0074005500
      730065007200500072006F0070005600650072006B004E006F00010056006500
      72006B004E006F00010001000D000A006D007400550073006500720050007200
      6F0070004F0077006E00650072004E006F0001004F0077006E00650072004E00
      6F00010001000D000A006D0074005500730065007200500072006F0070005000
      490050004E006F0001005000490050004E006F00010001000D000A006D007400
      5500730065007200500072006F0070004C00490050004E006F0001004C004900
      50004E006F00010001000D000A006D0074005500730065007200500072006F00
      700049006E007000750074004F007000740069006F006E00010049006E007000
      750074004F007000740069006F006E00010001000D000A006D00740055007300
      65007200500072006F00700052006500670050006F0069006E0074004E006F00
      010052006500670050006F0069006E0074004E006F00010001000D000A006D00
      74005500730065007200500072006F0070005200650067004400610074006500
      01005200650067004400610074006500010001000D000A006D00740055007300
      65007200500072006F00700043006F0070007900500063007300010043006F00
      70007900500063007300010001000D000A006D00740055007300650072005000
      72006F007000520075006E004E006F000100520075006E004E006F0001000100
      0D000A006D0074005500730065007200500072006F007000500072006F006400
      75006300650072004E006F000100500072006F00640075006300650072004E00
      6F00010001000D000A006D0074005500730065007200500072006F0070004100
      750074006F0043006F006C005700690064007400680001004100750074006F00
      43006F006C0057006900640074006800010001000D000A006D00740055007300
      65007200500072006F00700053007500700070006C0069006500720043006F00
      64006500010053007500700070006C0069006500720043006F00640065000100
      01000D000A006D0074005500730065007200500072006F0070004C0065006E00
      6700740068004F007000740069006F006E0001004C0065006E00670074006800
      4F007000740069006F006E00010001000D000A006D0074005500730065007200
      500072006F0070004C0065006E00670074006800470072006F00750070004E00
      6F0001004C0065006E00670074006800470072006F00750070004E006F000100
      01000D000A006D0074005500730065007200500072006F0070004E0065007700
      4900740065006D0052006F00770001004E00650077004900740065006D005200
      6F007700010001000D000A006D0074005500730065007200500072006F007000
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
      500072006F007000530061006C006500730052006500670069006F006E004E00
      6F000100530061006C006500730052006500670069006F006E004E006F000100
      01000D000A006D0074005500730065007200500072006F00700056006F006C00
      75006D00650055006E00690074004E006F00010056006F006C0075006D006500
      55006E00690074004E006F00010001000D000A006D0074005500730065007200
      500072006F0070004C0065006E0067007400680046006F0072006D0061007400
      4E006F0001004C0065006E0067007400680046006F0072006D00610074004E00
      6F00010001000D000A006D0074005500730065007200500072006F0070004600
      6F0072006D00010046006F0072006D00010001000D000A006D00740055007300
      65007200500072006F0070005500730065007200490044000100550073006500
      720049004400010001000D000A006D0074005500730065007200500072006F00
      70004C0065006E0067007400680056006F006C0055006E00690074004E006F00
      01004C0065006E0067007400680056006F006C0055006E00690074004E006F00
      010001000D000A006D0074005500730065007200500072006F00700053007500
      720066006100630069006E0067004E006F000100530075007200660061006300
      69006E0067004E006F00010001000D000A006D00740055007300650072005000
      72006F0070004E004F004D0054004800490043004B0001004E004F004D005400
      4800490043004B00010001000D000A006D007400550073006500720050007200
      6F007000470072006F00750070004200790042006F0078000100470072006F00
      750070004200790042006F007800010001000D000A006D007400550073006500
      7200500072006F007000470072006F0075007000530075006D006D0061007200
      79000100470072006F0075007000530075006D006D0061007200790001000100
      0D000A006D0074005500730065007200500072006F0070004100670065006E00
      74004E006F0001004100670065006E0074004E006F00010001000D000A006D00
      74005500730065007200500072006F0070005300680069007000700065007200
      4E006F00010053006800690070007000650072004E006F00010001000D000A00
      6D0074005500730065007200500072006F007000530074006100720074005000
      6500720069006F00640001005300740061007200740050006500720069006F00
      6400010001000D000A006D0074005500730065007200500072006F0070004500
      6E00640050006500720069006F006400010045006E0064005000650072006900
      6F006400010001000D000A006D0074005500730065007200500072006F007000
      460069006C0074006500720031000100460069006C0074006500720031000100
      01000D000A006D0074005500730065007200500072006F007000460069006C00
      74006500720032000100460069006C007400650072003200010001000D000A00
      460044006D005F00530065006C006500630074006500640052006F0077007300
      49006E00760065006E0074006500720069006E00670073004E00720001004900
      6E00760065006E0074006500720069006E00670073004E007200010001000D00
      0A00460044006D005F00530065006C006500630074006500640052006F007700
      73004C00490050004E006F0001004C00490050004E006F00010001000D000A00
      460044006D005F00530065006C006500630074006500640052006F0077007300
      5300740061007400750073000100530074006100740075007300010001000D00
      0A007300740046006F006E00740073005F0055006E00690063006F0064006500
      0D000A005400660049006E0076004300720065006100740065004D0061006E00
      79004300740072006C004C0069007300740001004D0053002000530061006E00
      7300200053006500720069006600010001000D000A0053007400610074007500
      7300420061007200310001005300650067006F00650020005500490001000100
      0D000A00630078005300740079006C006500310049006E00760065006E007400
      6500720069006E00670001005400610068006F006D006100010001000D000A00
      6400780043006F006D0070006F006E0065006E0074005000720069006E007400
      6500720031004C0069006E006B0031000100540069006D006500730020004E00
      65007700200052006F006D0061006E00010001000D000A006400780042006100
      720050006F007000750070004D0065006E007500310001005300650067006F00
      6500200055004900010001000D000A00640078004200610072004D0061006E00
      6100670065007200310001005300650067006F00650020005500490001000100
      0D000A00730074004D0075006C00740069004C0069006E00650073005F005500
      6E00690063006F00640065000D000A00640078004200610072004D0061006E00
      610067006500720031002E00430061007400650067006F007200690065007300
      0100440065006600610075006C007400010001000D000A007300740053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A004900
      440053005F0031003000010049006E0076004E0072003B004C00490050004E00
      6F00010001000D000A004900440053005F003100360001005400610062006500
      6C006C0020006500780070006F00720074006500720061006400200074006900
      6C006C00200045007800630065006C002000660069006C002000010001000D00
      0A004900440053005F0032000100560069006C006C0020006400750020006700
      65006E006500720065007200610020006C0061006700650072007600E4007200
      640065006E0020006600F6007200200072006500730075006C00740061006C00
      6900730074006F0072003F002000010001000D000A004900440053005F003200
      3100010049006E00760065006E007400650072006100010001000D000A004900
      440053005F0033000100560069006C006C0020006400750020006B006F007000
      690065007200610020006B0061006C006B0079006C0070007200690073002000
      740069006C006C0020004E004D00330020007000720069007300200069002000
      61006C006C006100200069006E00760065006E0074006500720069006E006700
      610072003F002000010001000D000A004900440053005F003400010046006500
      6C0020006D006100780064006100740075006D00010001000D000A0049004400
      53005F00350001004D006100780064006100740075006D0020006D00E5007300
      7400650020007600610072006100200073007400F6007200720065002000E400
      6E00200069006E00760065006E0074006500720069006E006700730064006100
      740075006D00650074002E00010001000D000A004900440053005F0036000100
      560069006C006C00200064007500200073006B0061007000610020006E007900
      6100200069006E00760065006E0074006500720069006E006700610072002000
      75007400690066007200E5006E0020006C006100670065007200670072007500
      70007000650072002000690020006D0061006C006C0065006E003F0020000100
      01000D000A004900440053005F003800010053006B0061007000610072002000
      69006E00760065006E0074006500720069006E00670020006600F60072002000
      010001000D000A004900440053005F003900010049006E00760065006E007400
      6500720069006E006700610072002F006C006100670065007200010001000D00
      0A00730074004F00740068006500720053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A006700720064004300720065006100
      7400650049006E0076007300560069006500770049006E0076004E0072002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D0065000100540063007800540065007800740045006400690074005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      43007200650061007400650049006E0076007300560069006500770067006100
      720065002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      43007200650061007400650049006E007600730056006900650077004C005300
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      7000650072007400690065007300010001000D000A0067007200640043007200
      650061007400650049006E007600730056006900650077004C0047002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      72007400690065007300010001000D000A006700720064004300720065006100
      7400650049006E007600730056006900650077004B006F006E00740072006F00
      6C006C00690073007400610050006B0074002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      7800430061006C0063004500640069007400500072006F007000650072007400
      690065007300010001000D000A00670072006400430072006500610074006500
      49006E007600730056006900650077004B006F006E00740072006F006C006C00
      69007300740061004E004D0033002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004300
      61006C0063004500640069007400500072006F00700065007200740069006500
      7300010001000D000A0067007200640043007200650061007400650049006E00
      76007300560069006500770052006500730075006C00740061006C0069007300
      7400610050006B0074002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D0065000100540063007800430061006C00
      63004500640069007400500072006F0070006500720074006900650073000100
      01000D000A0067007200640043007200650061007400650049006E0076007300
      560069006500770052006500730075006C007400610074006C00690073007400
      61004E004D0033002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D0065000100540063007800430061006C006300
      4500640069007400500072006F00700065007200740069006500730001000100
      0D000A0067007200640043007200650061007400650049006E00760073005600
      6900650077004C00490050004E006F002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      01000D000A0067007200640043007200650061007400650049006E0076007300
      560069006500770049006E00760065006E0074006500720061002E0050007200
      6F0070006500720074006900650073002E0044006900730070006C0061007900
      43006800650063006B006500640001005400720075006500010001000D000A00
      67007200640043007200650061007400650049006E0076007300560069006500
      770049006E00760065006E0074006500720061002E00500072006F0070006500
      720074006900650073002E0044006900730070006C006100790055006E006300
      6800650063006B00650064000100460061006C0073006500010001000D000A00
      67007200640043007200650061007400650049006E0076007300560069006500
      770049006E00760065006E0074006500720061002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      6300780043006800650063006B0042006F007800500072006F00700065007200
      7400690065007300010001000D000A0067007200640043007200650061007400
      650049006E0076007300560069006500770049006E0074005600650072006B00
      2E00500072006F0070006500720074006900650073002E004400690073007000
      6C006100790043006800650063006B0065006400010054007200750065000100
      01000D000A0067007200640043007200650061007400650049006E0076007300
      560069006500770049006E0074005600650072006B002E00500072006F007000
      6500720074006900650073002E0044006900730070006C006100790055006E00
      63006800650063006B00650064000100460061006C0073006500010001000D00
      0A0067007200640043007200650061007400650049006E007600730056006900
      6500770049006E0074005600650072006B002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      780043006800650063006B0042006F007800500072006F007000650072007400
      690065007300010001000D000A00670072006400430072006500610074006500
      49006E0076007300560069006500770049006E00760065006E00740065007200
      69006E006700730064006100740075006D002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      780044006100740065004500640069007400500072006F007000650072007400
      690065007300010001000D000A00670072006400430072006500610074006500
      49006E007600730056006900650077005300740061007400750073002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D006500010054006300780049006D0061006700650043006F006D0062006F00
      42006F007800500072006F007000650072007400690065007300010001000D00
      0A0067007200640043007200650061007400650049006E007600730056006900
      6500770053006B006100700061006400410076002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      7300010001000D000A0067007200640043007200650061007400650049006E00
      76007300560069006500770056007200640065002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      63007800430061006C0063004500640069007400500072006F00700065007200
      7400690065007300010001000D000A0067007200640043007200650061007400
      650049006E007600730056006900650077004E004D0033002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      0100540063007800430061006C0063004500640069007400500072006F007000
      650072007400690065007300010001000D000A00670072006400430072006500
      61007400650049006E007600730056006900650077004D006500640065006C00
      70007200690073002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D0065000100540063007800430061006C006300
      4500640069007400500072006F00700065007200740069006500730001000100
      0D000A006D0074005500730065007200500072006F0070002E00560065007200
      730069006F006E00010037002E00360033002E00300030002000530074006100
      6E0064006100720064002000450064006900740069006F006E00010001000D00
      0A006400780043006F006D0070006F006E0065006E0074005000720069006E00
      74006500720031004C0069006E006B0031002E00440065007300690067006E00
      65007200430061007000740069006F006E00010046006F0072006D0061007400
      20005200650070006F0072007400010001000D000A00460044006D005F005300
      65006C006500630074006500640052006F00770073002E005600650072007300
      69006F006E00010037002E00360033002E003000300020005300740061006E00
      64006100720064002000450064006900740069006F006E00010001000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A00690063005300740061007400750073002E00
      500072006F0070006500720074006900650073002E004900740065006D007300
      5B0030005D002E004400650073006300720069007000740069006F006E000100
      4E007900010001000D000A00690063005300740061007400750073002E005000
      72006F0070006500720074006900650073002E004900740065006D0073005B00
      31005D002E004400650073006300720069007000740069006F006E0001004100
      6B00740069007600010001000D000A0069006300530074006100740075007300
      2E00500072006F0070006500720074006900650073002E004900740065006D00
      73005B0032005D002E004400650073006300720069007000740069006F006E00
      010047006F0064006B00E4006E006400010001000D000A006900630053007400
      61007400750073002E00500072006F0070006500720074006900650073002E00
      4900740065006D0073005B0033005D002E004400650073006300720069007000
      740069006F006E00010047006F0064006B00E4006E00640020002B0020007000
      72006900730073006100740074002000010001000D000A006900630053007400
      61007400750073002E00500072006F0070006500720074006900650073002E00
      4900740065006D0073005B0034005D002E004400650073006300720069007000
      740069006F006E00010045006A00200069006E00760065006E00740065007200
      610064006500010001000D000A00690063005300740061007400750073002E00
      500072006F0070006500720074006900650073002E004900740065006D007300
      5B0035005D002E004400650073006300720069007000740069006F006E000100
      41006C006C006100010001000D000A0067007200640043007200650061007400
      650049006E007600730056006900650077002E00420061006E00640073005B00
      30005D002E00430061007000740069006F006E00010049006E00760065006E00
      74006500720069006E0067002F004C006100670065007200010001000D000A00
      67007200640043007200650061007400650049006E0076007300560069006500
      77002E00420061006E00640073005B0031005D002E0043006100700074006900
      6F006E0001004C0061006700650072002F004B006F006E00740072006F006C00
      6C006900730074006100010001000D000A006700720064004300720065006100
      7400650049006E007600730056006900650077002E00420061006E0064007300
      5B0032005D002E00430061007000740069006F006E0001005200650073007500
      6C00740061007400200076006F006C0079006D00010001000D000A0067007200
      640043007200650061007400650049006E007600730056006900650077002E00
      420061006E00640073005B0033005D002E00430061007000740069006F006E00
      010052006500730075006C0074006100740020007600E4007200640065000100
      01000D000A0067007200640043007200650061007400650049006E0076007300
      56006900650077005300740061007400750073002E00500072006F0070006500
      720074006900650073002E004900740065006D0073005B0030005D002E004400
      650073006300720069007000740069006F006E00010045006A00200069006E00
      760065006E0074006500720061006400010001000D000A006700720064004300
      7200650061007400650049006E00760073005600690065007700530074006100
      7400750073002E00500072006F0070006500720074006900650073002E004900
      740065006D0073005B0031005D002E0044006500730063007200690070007400
      69006F006E0001004E007900010001000D000A00670072006400430072006500
      61007400650049006E0076007300560069006500770053007400610074007500
      73002E00500072006F0070006500720074006900650073002E00490074006500
      6D0073005B0032005D002E004400650073006300720069007000740069006F00
      6E00010041006B00740069007600010001000D000A0067007200640043007200
      650061007400650049006E007600730056006900650077005300740061007400
      750073002E00500072006F0070006500720074006900650073002E0049007400
      65006D0073005B0033005D002E00440065007300630072006900700074006900
      6F006E00010047006F0064006B00E4006E006400010001000D000A0067007200
      640043007200650061007400650049006E007600730056006900650077005300
      740061007400750073002E00500072006F007000650072007400690065007300
      2E004900740065006D0073005B0034005D002E00440065007300630072006900
      7000740069006F006E00010047006F0064006B00E4006E006400200026002600
      200070007200690073007300610074007400010001000D000A00730074004300
      68006100720053006500740073005F0055006E00690063006F00640065000D00
      0A005400660049006E0076004300720065006100740065004D0061006E007900
      4300740072006C004C006900730074000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A005300740061007400
      7500730042006100720031000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00630078005300740079006C00
      6500310049006E00760065006E0074006500720069006E006700010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A006400780043006F006D0070006F006E0065006E0074005000720069006E00
      74006500720031004C0069006E006B0031000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A00640078004200
      6100720050006F007000750070004D0065006E00750031000100440045004600
      410055004C0054005F004300480041005200530045005400010001000D000A00
      640078004200610072004D0061006E0061006700650072003100010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00}
  end
end
