object FormPaymentTerms: TFormPaymentTerms
  Left = 265
  Top = 105
  Width = 696
  Height = 480
  ActiveControl = grdPayTerms
  Caption = 'Betalningsvillkor'
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
  object Panel1: TPanel
    Left = 0
    Top = 412
    Width = 688
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 256
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 360
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object grdPayTerms: TcxGrid
    Left = 0
    Top = 0
    Width = 688
    Height = 412
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
    object grdPayTermsDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmModule1.dsPaymentTerm
      DataController.KeyFieldNames = 'PaymentTermsNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdPayTermsDBTableView1PaymentTermsNo: TcxGridDBColumn
        DataBinding.FieldName = 'PaymentTermsNo'
        Visible = False
      end
      object grdPayTermsDBTableView1PaymentTermName: TcxGridDBColumn
        Caption = 'BETALNINGSVILLKOR'
        DataBinding.FieldName = 'PaymentTermName'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 151
      end
      object grdPayTermsDBTableView1Discount1: TcxGridDBColumn
        Caption = 'KASSARABATT'
        DataBinding.FieldName = 'Discount1'
        Width = 101
      end
      object grdPayTermsDBTableView1Description: TcxGridDBColumn
        Caption = 'BESKRIVNING'
        DataBinding.FieldName = 'Description'
        Width = 429
      end
      object grdPayTermsDBTableView1FreightInDiscount: TcxGridDBColumn
        DataBinding.FieldName = 'FreightInDiscount'
        Visible = False
      end
      object grdPayTermsDBTableView1FreightInCommission: TcxGridDBColumn
        DataBinding.FieldName = 'FreightInCommission'
        Visible = False
      end
      object grdPayTermsDBTableView1CommissionPaidByCustomer: TcxGridDBColumn
        DataBinding.FieldName = 'CommissionPaidByCustomer'
        Visible = False
      end
      object grdPayTermsDBTableView1LanguageCode: TcxGridDBColumn
        DataBinding.FieldName = 'LanguageCode'
        Visible = False
      end
    end
    object grdPayTermsLevel1: TcxGridLevel
      GridView = grdPayTermsDBTableView1
    end
  end
end
