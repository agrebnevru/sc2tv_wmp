object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'SC2 Player P2P'
  ClientHeight = 339
  ClientWidth = 693
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000040040000000000000000000000000000000000000000
    00002D2D2DCC2A3630EE283A32EF234636F1254234F11C593CF5204D38F3263F
    34F02B332FEE2C2F2EED244335F1186140F719603FF619603FE4000000002D2D
    2DD12C312FFF0D8752FF0B8C54FF099257FF099257FF099357FF0A9056FF0E86
    52FF157049FF1A6343FF0F814FFF12784CFF157049FF214F3BFF2D2D2DD82D2D
    2DEF2A3832FF0C9A5FFF0C9B60FF0C9B60FF0C9B60FF0C9B60FF0C9B60FF0C9B
    60FF0C9B60FF0C9A5FFF0C9B60FF1C6447FF2C302EFF2C2F2EFF2D2D2DEF2D2D
    2DED2B3632FF159161FF10A46BFF10A46BFF168B5EFF1E694CFF158F60FF139A
    66FF11A16AFF10A46BFF1A7A55FF2C302EFF2D2D2DFF2D2D2DFF2D2D2DED2D2D
    2DED2C312FFF21694FFF13AD76FF13AD76FF15A471FF21664DFF2A3A34FF2847
    3CFF206F53FF1D7D5BFF2A3D36FF2D2D2DFF2D2D2DFF2D2D2DFF2D2D2DED2A42
    3AF32D2D2DFF2B3B35FF1F8563FF17B782FF17B782FF17B782FF1E8D68FF2946
    3CFF2C302FFF2D2F2EFF2D2E2EFF2D2D2DFF2D2D2DFF2D2D2DFF2D2D2DED2666
    53F92D2D2DFF2B3A35FF2C3230FF266753FF1BC18FFF1BC18FFF1BC18FFF1CBA
    8AFF28594AFF2D2D2DFF2D2D2DFF2D2D2DFF2D2D2DFF2D2D2DFF2D2D2DED2581
    67F9276755FF2C3331FF2D3130FF2D2E2DFF1EC899FF1EC999FF1EC999FF1EC9
    99FF20B289FF267962FF2D2F2EFF2D2D2DFF2D2D2DFF2D2D2DFF2D2D2DED2C3F
    3AEF27826AFF278169FF25997AFF22C297FF24AE89FF22C599FF21D1A2FF21D1
    A2FF21D1A2FF21CC9FFF2A564AFF2D2F2EFF2D2D2DFF2D2D2DFF2D2D2DED2D2D
    2DED2C413BFF26AA89FF27A989FF2A6758FF2D2D2DFF279D80FF24D9ACFF24D9
    ACFF24D9ACFF24D5A9FF25CEA4FF2C433DFF2D2D2DFF2D2D2DFF2D2D2DED2D33
    31ED2B7664FF27D3ABFF299A80FF2D3130FF2C5249FF28C7A2FF27E0B5FF27E0
    B5FF27E0B5FF27E0B5FF27D3ABFF2B6B5CFF2D3331FF2D2D2DFF2D2D2DED2D31
    30ED2D3D39FF2AB697FF29E6BCFF2AD0ABFF29E0B7FF29E7BDFF29E7BDFF29E7
    BDFF29E7BDFF29E7BDFF29E3BAFF29E4BBFF2C6256FF2D2D2DFF2D2D2DED2D2D
    2DED2D2D2DFF2D3C39FF2C8D79FF2CDCB7FF2CEDC5FF2CEDC5FF2CEDC5FF2CED
    C5FF2CEDC5FF2CEDC5FF2CEDC5FF2CEDC5FF2CB598FF2D2D2DFF2D2D2DED2D2D
    2DEF2D2D2DFF2D2D2DFF2D2D2DFF2D413DFF2E9E87FF2EEEC7FF2EF3CBFF2EF3
    CBFF2EF3CBFF2EF3CBFF2EF3CBFF2EF3CBFF2EEEC7FF2D544CFF2D2D2DEF2D2D
    2DD12D2D2DFF2D2D2DFF2D2D2DFF2D2D2DFF2D2D2DFF2D423EFF2FC5A8FF30F7
    D1FF30F7D1FF30ECC8FF2FC2A6FF2F9B86FF2FC9ACFF2FC1A5FF2D3735D40000
    00002D2D2DCC2D2D2DED2D2D2DED2D2D2DED2D2D2DED2D2D2DED2D2E2EED2E48
    43EF2F8C7BF530BBA2F92E4E48F02D2D2DED2D433FEF2F7B6DDD000000008001
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000080010000}
  Menu = MM
  OldCreateOrder = False
  ShowHint = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object WMP1: TWindowsMediaPlayer
    Left = 0
    Top = 0
    Width = 693
    Height = 301
    Align = alClient
    TabOrder = 0
    OnStatusChange = WMP1StatusChange
    OnDoubleClick = WMP1DoubleClick
    ExplicitWidth = 245
    ExplicitHeight = 240
    ControlData = {
      000300000800000000000500000000000000F03F030000000000050000000000
      0000000008000200000000000300010000000B00FFFF0300000000000B00FFFF
      08000200000000000300320000000B00000008000A000000660075006C006C00
      00000B0000000B0000000B00FFFF0B00FFFF0B00000008000200000000000800
      020000000000080002000000000008000200000000000B000000A04700001C1F
      0000}
  end
  object DownPanel: TPanel
    Left = 0
    Top = 301
    Width = 693
    Height = 38
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      693
      38)
    object ToolBarMainButtom: TToolBar
      Left = 1
      Top = 1
      Width = 691
      Height = 22
      AutoSize = True
      Images = ILIcons
      TabOrder = 0
      object TBPlay: TToolButton
        Left = 0
        Top = 0
        Hint = #1042#1086#1089#1087#1088#1086#1080#1079#1074#1077#1089#1090#1080
        ImageIndex = 0
        OnClick = TBPlayClick
      end
      object TBPause: TToolButton
        Left = 23
        Top = 0
        Hint = #1055#1072#1091#1079#1072
        ImageIndex = 1
        OnClick = TBPauseClick
      end
      object TBStop: TToolButton
        Left = 46
        Top = 0
        Hint = #1057#1090#1086#1087
        ImageIndex = 2
        OnClick = TBStopClick
      end
      object TBSound: TToolButton
        Left = 69
        Top = 0
        Hint = #1042#1082#1083'/'#1042#1099#1082#1083' '#1079#1074#1091#1082
        ImageIndex = 3
        OnClick = TBSoundClick
      end
    end
    object TBSoundVolume: TTrackBar
      Left = 616
      Top = 0
      Width = 76
      Height = 25
      Hint = '50'
      Anchors = [akTop, akRight]
      Max = 100
      ParentShowHint = False
      Position = 50
      ShowHint = True
      ShowSelRange = False
      TabOrder = 1
      TickMarks = tmTopLeft
      TickStyle = tsNone
      OnChange = TBSoundVolumeChange
    end
    object PanelStatus: TPanel
      Left = 1
      Top = 23
      Width = 691
      Height = 14
      Align = alBottom
      BevelOuter = bvLowered
      TabOrder = 2
    end
  end
  object ILIcons: TImageList
    Left = 112
    Top = 16
    Bitmap = {
      494C0101050008003C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCDBBA00EAAF6700D7984000D4922900DB8F1700F1A517000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0AB
      6200E1952500F09B1700D9910300F4911F00EE9729000000FF000000FF00E782
      0E00D5B46E000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD964700F393
      1800DC9E1600EAA21E00E1A31500F79E17000000FF000000FF00A3704500E78F
      03000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D59B5900D1A42B00F8AA
      2700CCA92A00F1AB3600F5A72C00A36108000000FF00FBFEFF00F2F6F0000000
      FF000000FF000000FF00E8A15D000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAD7AB00EC972F00F6B53000FFBE
      3B00F7B83200FFAB2E00C36B0000F8E5D6000000FF00ECFFFF000000FF000000
      FF000000FF00F3B03B00D99530000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D4A66C00FFBB5300F4A74000B670
      1500C47B2500A16F2300FFE9B100FFFFE7000000FF000000FF000000FF000000
      FF00FFB24D00FEB835000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C89A5A00F0CF6100BF791E00FFEC
      BD00FFFAF500FFFFF700FFFFEA00CC812500D7881A000000FF000000FF00F795
      1F00E9C45C000000FF000000FF00C38B5C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BB8C4F00FFFF8A00CF901800E3F3
      C400FFF2FF00FFFFF100B7751C00FED55A00C77C0200F4FEFF000000FF000000
      FF000000FF000000FF00FFF2B500CA8D5B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BB8E6800FFF29800E0CA8200F3E7
      CF00F3FEF600F8FFEE00BF752300FFDD7A00D88E0000FFF7F700FFFCF800DAA5
      2600EAE48B00F7D99E00FFFFAC00C48656000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5885D00FFFFC200CFC26600FFED
      B400FFFFF200FFFFE200F7E8B700CA770A00D48C0000FFF8FF00FEF5FF00D8C7
      7000F7F0B900DDDAAE00FFFEB500C0875A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4A37100FFF4C000F2E2B300E9BF
      8400E8C47600D9C07600FFFFFE00FFE8CA00CE7A1400F6F1F300FAF5FF00ECDC
      9A00EFEB9D00FFF4BC00EAEBBF00CE9E7A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2C5C000D8A88400FFFFD800EAE8
      B200FFF3B900EFE0B900E3C88800FFFAE500F5EFC600EDF9FF00FFFCEF00F5DA
      8000F3E5B400FFFFE000E8BE8300F4CFB5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AC884200FFEABF00FFFF
      F200E4E7C700E9EEC100FFEF9C00E9CB8A00FFFFD600F2FFFD00FFFFF200DEDA
      A000FFFFEB00F6E4CD00B27F4D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A6773A00F6DC
      9900FFFFF400FFFFE900F8F4BF00EDF7D900FAD79800EAE8B200E0E1CD00FFFF
      E900F7E4AB00A4683E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A48D
      5D00BDAD7200FFE7B700FFFAFF00FFFFF200FDFDEB00FFFAD000FFF5B900D4AF
      7B00B2805C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4C4A200D9937B00A5734F00C5854F00BD816300B07F4F00C9966B00E1BE
      B000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8DFBF00F8C88E00F0B76200F4C05C00ECC16000DCB35E00FCD28700FCE8
      AE00000000000000000000000000000000000000000000000000000000000000
      0000FDF6CF00F3C68D00E7B05B00DABD5100DBBF5300E9B75F00F2C68B00F3E9
      C100000000000000000000000000000000000000000000000000000000000000
      0000FCDEBB00F4CF9300DFB76500DEB95F00DEB95F00DFB76500F4CF9300FCDE
      BB00000000000000000000000000000000000000000000000000000000000000
      0000FCDBBA00EAAF6700D7984000D4922900DB8F1700F1A51700D3BF6A00F5E8
      B00000000000000000000000000000000000000000000000000000000000E5B3
      7700E3C38200E9D88F00F4DC9000FFD98A00FFDD8B00FFDF8900EDD98100CAB9
      7A00D2B98700000000000000000000000000000000000000000000000000D1B9
      8F00E5C96400FCE88300FFF99700FFE28000FFDE7C00FFF29000FCE88300EBCF
      6A00D2B48B00000000000000000000000000000000000000000000000000CDB5
      9100DFC97700F5D77E00FFE18700FFE28A00FFE28A00FFE18700F5D77E00DFC9
      7700CEB69200000000000000000000000000000000000000000000000000F0AB
      6200E1952500F09B1700D9910300F4911F00EE972900D4720400D0701C00E782
      0E00D5B46E000000000000000000000000000000000000000000C6AF7D00FBCF
      7000FFE28900FFE08D00FFE39400EDD68800E1CC7B00F2DA8600ECD07B00F1DE
      9500F4CD7E00D3AB700000000000000000000000000000000000E4CE9400EFD1
      8000FFE96B00E5BC5500E2C06300FCE48000FFEC8A00EBC36A00E2B95600FEE0
      6300F8D38300D3C88C0000000000000000000000000000000000D4BD8D00E2C3
      7E00F5DD8900F3DB8900F9DB8C00F9DA8B00F9DA8B00F9DB8C00F3DB8900F5DD
      8900E3C47F00D4BD8D0000000000000000000000000000000000BD964700F393
      1800DC9E1600EAA21E00E1A31500F79E1700CF650D00DC815A00A3704500E78F
      0300EDA02200CE9A4D00000000000000000000000000DCBA8500E2BB6C00FFE5
      8E00E1B56100A26B1600C08E3600FDDB8200EFD68000E0C47000F4CD7F00E9CC
      7100FCD07100F4C77600C4AA7C000000000000000000C4AB7300F7D67900FCD5
      6100B7672000B3643300BD7A3D00E2AB4800EEB15100C0703B00AF603700B073
      3100FED15E00F1DB7C00C3A870000000000000000000D1B78900E3BF7300FFE2
      8100FFB66600F1B36500E0A75100EAB04900EAB04900E0A75100F1B36500FFB6
      6600FFE38200E3BF7300D0B688000000000000000000D59B5900D1A42B00F8AA
      2700CCA92A00F1AB3600F5A72C00A3610800FFEBB000FBFEFF00F2F6F000C684
      0300E2A72200DD9A2D00E8A15D0000000000FBDFC100D3A96400FFDC7B00FECD
      8300BC994F00D8BB7600E3BD7C00A8712E00D0914700FFE08E00F6CB6E00FACD
      6600F7CE7100FACF7800DBB16600EED5AB00FFE7C300CAA65A00FFE47300DDAF
      2600FFFFFF00FFFFFF00FFFFFF00D3A23E00CA903000FFFFFF00FFFFFF00FFFF
      FF00DFAB2300FFEB7800CBA45900FFE0BE00EDD5B900D4AF7100FFD77800F5C3
      5300B86E3600D8A37800CAA07100D8AA6A00D8AA6A00CAA07100D8A37800B86E
      3600F6C45400FFD77800D3AE7000ECD4B800FAD7AB00EC972F00F6B53000FFBE
      3B00F7B83200FFAB2E00C36B0000F8E5D600FFFED800ECFFFF00FCFFED00D17F
      0000FEC04A00F3B03B00D9953000FAD5B900D6B69200E2B46700FEC85D00FFCB
      6E00C59A5100D8BD9100FFFFFF00FFFFFF00B98E6300AA6F2700F7B35400F9C5
      6700F9D07B00EFC36800F4BF6500DCB68000CBAD7E00F8CB7400FECA5200E8B4
      2B00FFFFFF00FFFFFF00FFFFFF00E6993900E2862D00FFFFFF00FFFFFF00FFFF
      FF00F1B52D00F0C94F00FBCC7600D8AF8200CBAE8700ECBF7600FBC76300E7AF
      4000CEB18A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEB1
      8A00E7AF4000FAC66200EBBE7500CAAD8600D4A66C00FFBB5300F4A74000B670
      1500C47B2500A16F2300FFE9B100FFFFE7009A501000FFF9F500FFFFF200E78A
      0F00FFB24D00FEB83500E7C43400D2A37D00B0906700FCCE8000F4C05600FDCD
      5D00C1904000E5BC9B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B57D4600B484
      4200E3B15E00F6C16000FFD27A00BB966400AC8D5600F9C76D00F2B94600E7AD
      2F00FFFFFF00FFFFFF00FFFFFF00D2992C00E2973100FFFFFF00FFFFFF00FFFF
      FF00E4A42700F1C55000FAC66C00AD834E00BFA17000F1C17300F6BC5D00E6AB
      4400DBB67C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DBB6
      7C00E7AC4500F6BC5D00F0C07200BFA17000C89A5A00F0CF6100BF791E00FFEC
      BD00FFFAF500FFFFF700FFFFEA00CC812500D7881A00FFFCFD00FFF4F900F795
      1F00E9C45C00EAC44000FFD14F00C38B5C00B6966B00FFE09300E8B84F00F7BA
      4C00C29A4200D4C29300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BA812C00E7AA4200FFE19200AE8E6300AD8D5200FFEB8F00FEC35500CD92
      1E00FFFFFF00FFFFFF00FFFFFF00CD921700DA8D1900FFFFFF00FFFFFF00FFFF
      FF00CD8C1900F2C45400FFEA8F00B58A5100AF915A00FFEA9A00F1B55B00D99C
      3F00E4B18600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E4B1
      8600D99C3F00F1B55B00FFE99900AF915A00BB8C4F00FFFF8A00CF901800E3F3
      C400FFF2FF00FFFFF100B7751C00FED55A00C77C0200F4FEFF00E8FFFC00E1A6
      1000ECCC5500E8BE5900FFF2B500CA8D5B00B7856100FFD79A00DECD7E00FFB6
      6200C7943E00E3C99B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CFA56A00E3C16800FAD88400AD8E5B00C0764600FFE28D00DDDA7100DDA2
      3F00FFFFFF00FFFFFF00FFFFFF00DE8E0500E88E0B00FFFFFF00FFFFFF00FFFF
      FF00DFA44100DAD76E00FFE48F00C47A4A00AB8D5E00FFDA9300F9CF7C00D0A8
      5500DDBD8800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDBD
      8800D0A85500F8CE7B00FFD99200AA8C5D00BB8E6800FFF29800E0CA8200F3E7
      CF00F3FEF600F8FFEE00BF752300FFDD7A00D88E0000FFF7F700FFFCF800DAA5
      2600EAE48B00F7D99E00FFFFAC00C4865600AC7F5A00FCCB8D00E2C77600FFDA
      7400CBA74F00EFD1B600FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCC37F00BF8E
      6000E7BD7800F7D47A00F4D383009D7E5100B87B4F00FCCE8000E3D46D00FDC3
      5C00FFFFFF00FFFFFF00FFFFFF00D58D1700E1912000FFFFFF00FFFFFF00FFFF
      FF00F3B95200E7D87100FBCD7F00B77A4E00A7896000FAD08B00EEC26E00EDC3
      6A00DCDAB700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DCDA
      B700EEC46B00EEC26E00F9CF8A00A6885F00B5885D00FFFFC200CFC26600FFED
      B400FFFFF200FFFFE200F7E8B700CA770A00D48C0000FFF8FF00FEF5FF00D8C7
      7000F7F0B900DDDAAE00FFFEB500C0875A00BE987500FFD49600DEB86600F4C4
      6500D5B56200F5DFC300FFFFFF00FFFFFF00E5CEAE00DAB17300E3B54900FDCC
      8600E7BD6A00E3BF6700E9C88200C6AA8800C0967100FECB8500F1D17000E9B1
      4600FFFFFF00FFFFFF00FFFFFF00D9B34300E8BD5000FFFFFF00FFFFFF00FFFF
      FF00ECB44900ECCC6B00FFD38D00C0967100C1A48500EDC48600F5C77300E2B6
      5700F2DAC400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F2DA
      C400E1B55600F5C77300EDC48600C2A58600C4A37100FFF4C000F2E2B300E9BF
      8400E8C47600D9C07600FFFFFE00FFE8CA00CE7A1400F6F1F300FAF5FF00ECDC
      9A00EFEB9D00FFF4BC00EAEBBF00CE9E7A00F4D8B900B68B5200FFE99F00D2AD
      6900D0B56500FFECB300FFEEC000DCC67F00CDAA6000E9B86A00FAC85E00E0B2
      5A00E8BE6500FFE39300BD9F6800DFC7B100E8D3B800C0915B00FFDF8B00EBB5
      5000FFFFFF00FFFFFF00FFFFFF00D7AB3800E3B74400FFFFFF00FFFFFF00FFFF
      FF00EAB44F00FFE49000B98A5400F1DCC100DFC7B100C29F6D00FFD58800EDBE
      6200FFCE9E00FFE2BB00FCE3C100ECDCB800ECDCB800FCE3C100FFE2BB00FFCE
      9E00EDBE6200FFD58800C3A06E00E1C9B300E2C5C000D8A88400FFFFD800EAE8
      B200FFF3B900EFE0B900E3C88800FFFAE500F5EFC600EDF9FF00FFFCEF00F5DA
      8000F3E5B400FFFFE000E8BE8300F4CFB50000000000A9885B00DAA86E00EBDA
      9B00D6C26B00E9C16E00E2AC5700DAA93D00E1B34E00DFB76500CBAF5000EBBF
      6600FFDC8A00D2B37400A38B67000000000000000000A27C5900DFB37300FFE2
      8E00CFD68D00F5EBB500FFDB9200EDA73500F0AC3B00FBD88F00F4ECB700D1D6
      9100FFDC8800D7AB6B00A8825F000000000000000000A0856300DBB67800FFDD
      8C00DEC86200D4B64D00D4AD4500DBB14E00DBB14E00D4AD4500D4B64D00DEC8
      6200FFDC8B00DBB67800A28765000000000000000000AC884200FFEABF00FFFF
      F200E4E7C700E9EEC100FFEF9C00E9CB8A00FFFFD600F2FFFD00FFFFF200DEDA
      A000FFFFEB00F6E4CD00B27F4D000000000000000000000000009F735400E4B8
      7800F0CE7500FDD88600E6C16F00E7C96000E9C06300EDBB6F00FFD77F00FFD8
      9100D2AE72008A71490000000000000000000000000000000000AF8F6600D1A6
      6D00FAED7300EBCD6800EDBE6200F5C65D00F0C85E00E0BF5E00EED06B00FFEC
      7200D4A97000BC9C7300000000000000000000000000000000009B7E5700D0AA
      7000F7D49C00FCCE8700F6C57700E6BA7300E6BA7300F6C57700FCCE8700F7D4
      9C00D0AA70009B7E570000000000000000000000000000000000A6773A00F6DC
      9900FFFFF400FFFFE900F8F4BF00EDF7D900FAD79800EAE8B200E0E1CD00FFFF
      E900F7E4AB00A4683E000000000000000000000000000000000000000000B076
      4C00B4894600DDB97D00E5C68900F0D68200FFDE9300FFCD9200F6B46D00AD86
      5900937552000000000000000000000000000000000000000000000000009571
      5300AF872F00ECB46300FFDA8900FEDD8700F5DD8500FFDF8A00F2BB6600BD81
      2800936F51000000000000000000000000000000000000000000000000009C7B
      5A00B9915700E5B66400FDD77700F5E38A00F5E38A00FDD77700E5B66400B991
      57009C7B5A00000000000000000000000000000000000000000000000000A48D
      5D00BDAD7200FFE7B700FFFAFF00FFFFF200FDFDEB00FFFAD000FFF5B900D4AF
      7B00B2805C000000000000000000000000000000000000000000000000000000
      0000E2C99F00C88F6800BB6C4100C4763300A9672C009B693F00B7996200EAC5
      A900000000000000000000000000000000000000000000000000000000000000
      0000EEDBCC00BE856600AC582400B4692400A76720009C5A1F00BE846000F0C6
      B300000000000000000000000000000000000000000000000000000000000000
      0000E3C2B300CC946B00B06D3600A66B3E00A66B3E00B06D3600CC946B00E3C2
      B300000000000000000000000000000000000000000000000000000000000000
      0000F4C4A200D9937B00A5734F00C5854F00BD816300B07F4F00C9966B00E1BE
      B00000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00F003000000000000E001000000000000
      C000000000000000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000008001000000000000C003000000000000
      E007000000000000F00F000000000000F00FF00FF00FF00FE007E007E007E007
      C003C003C003C003800180018001800100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000008001800180018001C003C003C003C003
      E007E007E007E007F00FF00FF00FF00F00000000000000000000000000000000
      000000000000}
  end
  object MM: TMainMenu
    Left = 168
    Top = 16
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N4: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083
        Visible = False
        OnClick = N4Click
      end
      object URL1: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100' URL'
        OnClick = URL1Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object N6: TMenuItem
        Caption = #1042#1099#1093#1086#1076
      end
    end
    object N2: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      object N7: TMenuItem
        Caption = #1055#1086#1074#1077#1088#1093' '#1074#1089#1077#1093' '#1086#1082#1086#1085
        OnClick = N7Click
      end
    end
    object N3: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      OnClick = N3Click
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 224
    Top = 16
  end
end