object FormCRViewReport: TFormCRViewReport
  Left = 213
  Top = 89
  Width = 957
  Height = 687
  Caption = 'FormCRViewReport'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object CRViewer91: TCRViewer9
    Left = 0
    Top = 0
    Width = 949
    Height = 660
    Align = alClient
    TabOrder = 0
    ControlData = {
      00030000F401000015620000374400000B00FFFF0B00FFFF0B00FFFF0B00FFFF
      0B00FFFF0B00FFFF0B00FFFF0B00FFFF0B00FFFF0B00FFFF0B00FFFF0B00FFFF
      0B00FFFF0B0000000B00FFFF0B00FFFF0B00FFFF0B00FFFF0800020000000000
      0B00FFFF0B0000000B0000000B0000000B00FFFF}
  end
  object Application1: TApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 40
    Top = 64
  end
end
