object dmsConnector: TdmsConnector
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 347
  Top = 143
  Height = 350
  Width = 481
  object sq_Updater: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 48
    Top = 144
  end
  object SQLMonitor: TSQLMonitor
    AutoSave = True
    SQLConnection = SQLConnection
    Left = 48
    Top = 88
  end
  object ilStatus: TImageList
    Left = 136
    Top = 88
    Bitmap = {
      494C010107000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
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
      0000000000000000000000000000000000000000A50000006300000063000000
      6300000063000000630000006300000063000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      8400000000008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000A500ADE7E7008CDEDE000000
      B5000000B5000000840000008400000063000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484002929310029293100292931002929
      31008484840029293100C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000A500000084000000
      8400000084000000840000006300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000298CBD000873B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008484840029293100C6C6C6008484840029293100C6C6
      C60029293100C6C6C600FFFFFF00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600C6C6
      C600636363008484840063636300CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE6300000000000000000000000000000000
      00000000000000000000000000000000000000000000298CBD0084BDD6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840029293100C6C6C600FFFFFF00FFFFFF00848484000000
      0000C6C6C600FFFFFF0029293100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00C6C6
      C600848484008484840063636300C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600CE63000000000000000000000000000039A5
      D60039A5D60039A5D60039A5D60039A5D600298CBD00F7FFFF0084BDD60039A5
      D600000000000000000000000000000000000000000000000000000000000000
      00008484840029293100C6C6C600FFFFFF00848484008484840000000000C6C6
      C600FFFFFF0029293100736B6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00C6C6C60063636300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600CE6300000000000000000000298CBD00B5DE
      F700B5DEF700B5DEF700B5DEF700B5DEF700B5DEF700E7FFFF00DEEFFF005AB5
      E700298CBD000000000000000000000000000000000000000000000000008484
      840029293100C6C6C600FFFFFF00292931000000000000000000FFFFFF00FFFF
      FF0000000000736B630029293100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840063636300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600CE63000000000000298CBD00B5DEF700E7FF
      FF00E7FFFF00E7FFFF005252520021212100C6E7F700E7FFFF00E7FFFF00E7FF
      FF00E7FFFF000000000000000000000000000000000000000000000000002929
      3100C6C6C600FFFFFF0029293100000000000000000084848400C6C6C6002929
      3100FFFFFF008484840029293100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      84008484840063636300FFFFFF00FFFFFF008484840084848400FFFFFF008484
      840084848400FFFFFF00C6C6C600CE630000000000004A9CC600B5DEF700CEF7
      FF00CEF7FF00CEF7FF00739494005A5A5A00CEF7FF00CEF7FF00CEF7FF00CEF7
      FF00CEF7FF00000000000000000000000000000000000000000084848400C6C6
      C600FFFFFF002929310084848400848484000000000000000000848484002929
      3100FFFFFF0084848400736B6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600C6C6
      C600636363008484840063636300FFFFFF008484000084848400FFFFFF008484
      840000FFFF00FFFFFF00C6C6C600CE630000000000005AB5D600B5DEF700CEF7
      FF00CEF7FF00CEF7FF00CEF7FF006B6B6B009CADAD00CEF7FF00CEF7FF00CEF7
      FF00CEF7FF00000000000000000000000000000000000000000029293100FFFF
      FF0084848400292931000000000000000000848484008484840029293100C6C6
      C600FFFFFF00736B630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF008484840063636300FFFFFF008484000084840000FFFFFF0000FF
      FF000000FF00FFFFFF00C6C6C600CE6300000000000039A5D600B5DEF700B5EF
      FF00B5EFFF00B5EFFF00B5EFFF002929290029292900B5EFFF00B5EFFF00B5EF
      FF00B5EFFF00000000000000000000000000000000000000000029293100FFFF
      FF00C6C6C6000000000084848400848484000000000029293100C6C6C600FFFF
      FF00736B63000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000A500000084000000
      8400000063000000630000006300FFFFFF008484000084840000FFFFFF000000
      FF000000FF00FFFFFF00C6C6C600CE6300000000000042B5F70094F7FF00B5EF
      FF00B5EFFF00849CA50073949400B5EFFF005A5A5A004A6B6B00B5EFFF00B5EF
      FF00B5EFFF000000000000000000000000000000000000000000000000008484
      840000000000C6C6C600FFFFFF000000000029293100C6C6C600FFFFFF00736B
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000A50000008400ADE7E7000000
      B50000008400000084000000840000006300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600CE630000000000005AC6F70094F7FF00B5EF
      FF00B5EFFF004242420042424200B5EFFF004A6B6B0063848400B5EFFF00B5EF
      FF00B5EFFF000000000000000000000000000000000000000000848484002929
      3100C6C6C600FFFFFF002929310029293100C6C6C600FFFFFF00736B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000A5000000A500000084000000
      840000008400000084000000840000008400C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600CE630000000000008CD6F70063DEFF0094F7
      FF0094F7FF0094F7FF00849CA50073737B00849CA50094F7FF0094F7FF0094F7
      FF0063DEFF00000000000000000000000000000000000000000029293100C6C6
      C600FFFFFF00736B6300C6C6C600FFFFFF00FFFFFF00736B6300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000000000000000000063DEFF0094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0063DE
      FF0042B5F700000000000000000000000000000000008484840000000000FFFF
      FF00736B630000000000736B6300736B6300736B630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031DE000031DE000000000000000000000000002194
      BD00087BAD000000000000000000000000000000000000000000000000000884
      B5001084B5000000000000000000000000000000000000000000000000000000
      00000000000052A54A00009408006BB563000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C9C9C006B6B6B00525252004A4A4A004A4A4A004A4A4A00525252009C9C
      9C0000000000000000000000000000000000000000000031DE000031DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031DE000031DE000000000000000000000000001884AD0073D6
      EF004AC6E700087BAD0000000000000000000000000000000000219CC6009CE7
      F70018A5CE001884AD0000000000000000000000000000000000000000000000
      00000000000018B5290000BD2100009400008CBD7B0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      AD00E7CEC600EFDED600F7E7D600F7E7D600EFDED600EFDED600CEBDB5005A5A
      5A00737373009C9C9C000000000000000000000000000031DE000031DE000031
      DE00000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE00000000000000000000000000000000000000000042AD
      CE007BF7FF0052C6E700087BAD00000000000000000031A5CE00B5F7FF005ADE
      FF0042ADCE000000000000000000000000000000000000000000000000000000
      00006BB5630000BD210000C6290000A50000319C310000000000000000000000
      0000000000000000000000000000000000000000000000000000CEC6BD00F7E7
      D600F7F7F700E7E7E700CEB5A500D6AD9400DEC6BD00EFF7F700F7EFEF00EFDE
      D6008C847B006B6B6B009C9C9C0000000000000000000031DE000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000031
      DE000031DE000000000000000000000000000000000000000000000000001884
      AD0063DEF7006BEFFF0063D6EF001084B50039ADCE00C6F7FF006BEFFF0063DE
      F7000073A5000000000000000000000000000000000000000000000000000000
      0000009C100000CE310000C6290000AD100000940000A5C69400000000000000
      00000000000000000000000000000000000000000000E7D6CE00F7E7DE00F7FF
      FF00CE9C8400B54A1000BD633900D6AD9C00C65A2100BD522100D6AD9C00F7FF
      FF00F7DED6007B736B00737373000000000000000000000000000031EF000031
      DE000031DE000031DE00000000000000000000000000000000000031DE000031
      DE00000000000000000000000000000000000000000000000000000000000000
      00001884AD0052E7FF0073E7FF0073DEF700B5F7FF009CF7FF005AE7FF001884
      AD000000000000000000000000000000000000000000000000000000000052A5
      4A0000CE310000C6290000FF630000CE3100009C0000008C0000000000000000
      00000000000000000000000000000000000000000000EFDED600F7FFFF00C67B
      5A00BD4A1000C6521800C6A59400FFFFFF00DE947300BD4A1000B54A1000CE9C
      8400F7FFFF00EFDED6005A5A5A009C9C9C000000000000000000000000000000
      00000031DE000031DE000031DE00000000000031DE000031DE000031DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001884AD004ADEFF0073E7FF008CEFFF009CF7FF001884AD000000
      00000000000000000000000000000000000000000000000000000000000018B5
      290029CE5A0000FF630000FF630000BD210000C62900009400008CBD7B000000
      000000000000000000000000000000000000F7E7E700F7F7F700D6AD9400BD4A
      1000CE633100CE632900CE6B3900DE8C6B00CE632900CE633100C65A2900B54A
      1000DEC6BD00F7EFE700A59C9400636363000000000000000000000000000000
      0000000000000031DE000031E7000031E7000031E7000031DE00000000000000
      000000000000000000000000000000000000000000000000000000000000087B
      AD001884AD0021D6FF0029D6FF004ADEFF0073E7FF0094F7FF007BDEEF001884
      AD001884AD0000000000000000000000000000000000000000000000000018C6
      420000FF630000FF630052A54A0052A54A0000C6290000A50000319C31000000
      000000000000000000000000000000000000F7EFE700F7F7F700C6633100C65A
      2900CE6B3100CE5A2100CE8C6B00F7E7DE00CE6B3900C65A2100CE633100C652
      1800C67B5200F7FFFF00DECEC600525252000000000000000000000000000000
      000000000000000000000031E7000031E7000031EF0000000000000000000000
      000000000000000000000000000000000000000000000073A5002994BD0073D6
      EF0063E7FF0031DEFF0018D6FF0031DEFF005ADEFF0073E7FF009CF7FF008CEF
      FF0042BDDE0042BDDE000073A500000000000000000000000000000000000000
      000000AD210000AD2100000000000000000000AD180000C6290000940000A5C6
      940000000000000000000000000000000000F7EFE700EFDED600C65A2100CE63
      3100CE633100CE5A2100C6846B00FFFFFF00EFAD9400C64A1000CE633100CE63
      2900C65A2900F7EFEF00EFDED600525252000000000000000000000000000000
      0000000000000031DE000031EF000031E7000031EF000031F700000000000000
      000000000000000000000000000000000000218CB50084CEDE00DEFFFF00CEFF
      FF0094F7FF006BEFFF0031DEFF0018D6FF0031DEFF005AE7FF007BF7FF00A5FF
      FF00A5FFFF0063DEF70084CEDE000073A5000000000000000000000000000000
      00000000000000000000000000000000000031B5420000C62900009C0000008C
      000000000000000000000000000000000000F7EFE700F7DECE00CE5A2100CE63
      3100CE633100CE632900C6522100CEB5A500FFFFFF00E79C7B00C6521800CE63
      2900C65A2900F7EFEF00EFDED600525252000000000000000000000000000000
      00000031F7000031EF000031E70000000000000000000031F7000031F7000000
      0000000000000000000000000000000000000073A5000073A5000073A5000073
      A5000073A5000073A50073D6EF0029D6FF0018D6FF0029BDE7000073A5000073
      A5000073A5000073A5000073A5000073A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000B5210000C629000094
      00008CBD7B00000000000000000000000000F7EFE700F7EFE700DE6B3100D66B
      3100CE632900C65A2100C6521800BD4A1000DECEC600FFFFFF00D6734200CE5A
      2100CE6B3900FFF7F700EFDED6006B6B6B000000000000000000000000000031
      FF000031EF000031F700000000000000000000000000000000000031FF000031
      F700000000000000000000000000000000000000000000000000000000000000
      000000000000000000000073A50063E7FF0029D6FF00088CBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000052A54A0000C6290029AD
      390031B54200000000000000000000000000F7E7E700FFFFFF00F79C6B00E763
      2900CE8C6B00EFE7DE00D67B5200BD310000D69C7B00FFFFFF00DE8C6300CE52
      1800E79C7300FFFFFF00DEC6BD00ADADAD0000000000000000000031F7000031
      F7000031FF000000000000000000000000000000000000000000000000000031
      F7000031F7000000000000000000000000000000000000000000000000000000
      000000000000000000000073A5008CEFFF004ADEFF001084B500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000029AD4A005AE7
      A50029AD39008CBD7B000000000000000000F7EFE700F7EFEF00FFEFDE00FF8C
      4A00DE845A00EFFFFF00FFFFFF00E7BDA500F7FFFF00EFFFFF00E7733900E773
      3900FFEFEF00F7E7DE00A59C940000000000000000000031F7000031F7000031
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000031F70000000000000000000000000000000000000000000000
      000000000000000000000073A500ADF7FF005ACEEF00087BAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000031B5420000D6
      42008CBD7B0000000000000000000000000000000000EFDED600FFFFFF00FFEF
      CE00FFB57300EFAD8400EFE7DE00EFF7F700EFE7DE00F7A57B00FF8C4A00FFDE
      CE00FFFFFF00EFDED600CECEC600000000000031F7000031F7000031F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000073A500BDF7FF005AB5D6000073A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5C6
      94000000000000000000000000000000000000000000F7EFEF00EFDED600FFFF
      FF00FFFFFF00FFF7C600FFDEAD00FFCE9400FFCE9400FFD6AD00FFF7F700FFFF
      FF00EFDED600CECEC60000000000000000000031F7000031F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000073A500CEEFF70063B5D6000073A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7EFEF00EFDE
      D600F7E7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7DE00EFDE
      D600DEDEDE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000298CBD001884AD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7EF
      E700F7F7EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      E70000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFF000000FFFFFFFF090000
      00FFFFFFFE01000081FFFF9FFC0000008000FF9FF80100008000E00FF0010000
      C000C007E0810000E0008007E1810000C0008007C0C1000080008007C0030000
      80008007C007000080008007E00F000000008007C01F000000008007C03F0000
      E000C007A47F0000F001FFFFFFFF0000FFFCE7E7F8FFF00F9FF9C3C3F87FE003
      8FF3E187F07FC00187E7E007F03F8001C3CFF00FE03F8000F11FF81FE01F0000
      F83FE007E01F0000FC7F8001F30F0000F83F0000FF0F0000F19F0000FF870000
      E3CFFC3FFF870000C7E7FC3FFFC300018FFBFC3FFFC780011FFFFC3FFFEF8003
      3FFFFC3FFFFFC007FFFFFE7FFFFFE00F00000000000000000000000000000000
      000000000000}
  end
  object sp_MaxNo: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftString
        Name = 'TableName'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MaxNo'
        ParamType = ptInputOutput
        Size = 4
      end>
    SQLConnection = SQLConnection
    StoredProcName = 'vida_GetMaxNo'
    Left = 136
    Top = 144
  end
  object sq_GetCompany: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CompanyNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select C.ClientName'
      'From'
      'dbo.Client C'
      'Where'
      'C.ClientNo = :CompanyNo')
    SQLConnection = SQLConnection
    Left = 48
    Top = 200
    object sq_GetCompanyClientName: TStringField
      FieldName = 'ClientName'
      Size = 80
    end
  end
  object sp_GetCurrPkgNo: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'ClientNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NoOfPkgNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'fCurrentPkgNo'
        ParamType = ptInputOutput
        Size = 4
      end>
    SQLConnection = SQLConnection
    StoredProcName = 'vida_GetPkgNoSerie'
    Left = 136
    Top = 200
  end
  object SQLConnection: TCRSQLConnection
    ConnectionName = 'SQLServerConnection'
    DriverName = 'SQLServer'
    GetDriverFunc = 'getSQLDriverSQLServer'
    LibraryName = 'dbexpsda.dll'
    LoginPrompt = False
    Params.Strings = (
      'BlobSize=-1'
      'HostName=vis.vida.se'
      'DataBase=vis_vida'
      'DriverName=SQLServer'
      'User_Name='
      'Password='
      'LongStrings=True'
      'EnableBCD=False'
      'FetchAll=True'
      'TrimFixedChar=True')
    VendorLib = 'sqloledb.dll'
    AfterConnect = CRSQLConnection1AfterConnect
    Left = 48
    Top = 32
  end
  object sp_MinNo: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftString
        Name = 'TableName'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MaxNo'
        ParamType = ptInputOutput
        Size = 4
      end>
    SQLConnection = SQLConnection
    StoredProcName = 'vida_GetMinNo'
    Left = 224
    Top = 144
  end
  object sq_GetLoggedInUser: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select suser_sname() AS LoggedInUser')
    SQLConnection = SQLConnection
    Left = 336
    Top = 40
    object sq_GetLoggedInUserLoggedInUser: TStringField
      FieldName = 'LoggedInUser'
      Size = 128
    end
  end
  object sq_GetUserName: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'AD_Name'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select UserName, PassWord from dbo.users'
      'where AD_Name = :AD_Name')
    SQLConnection = SQLConnection
    Left = 336
    Top = 88
    object sq_GetUserNameUserName: TStringField
      FieldName = 'UserName'
      FixedChar = True
    end
    object sq_GetUserNamePassWord: TStringField
      FieldName = 'PassWord'
      FixedChar = True
      Size = 10
    end
  end
end
