object FormCRViewReport: TFormCRViewReport
  Left = 213
  Top = 83
  Caption = 'FormCRViewReport'
  ClientHeight = 649
  ClientWidth = 941
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object CRViewer91: TCrystalActiveXReportViewer
    Left = 0
    Top = 0
    Width = 941
    Height = 649
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 949
    ExplicitHeight = 660
    ControlData = {
      1007000041610000134300000B00FFFF0B00FFFF0B00FFFF0B00FFFF0B00FFFF
      0B00FFFF0B00FFFF0B00FFFF0B0000000B00FFFF0B00FFFF0B00FFFF0B00FFFF
      0B0000000B00FFFF0B00FFFF0B00FFFF0B00FFFF08000200000000000B00FFFF
      0B00FFFF0B0000000B0000000B00FFFF0B00FFFF13001D040000}
  end
  object Application1: TApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 40
    Top = 64
  end
end
