object rooms: Trooms
  Left = 250
  Top = 171
  Caption = #1050#1086#1084#1085#1072#1090#1099
  ClientHeight = 421
  ClientWidth = 912
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 129
    Width = 912
    Height = 3
    Cursor = crVSplit
    Align = alTop
    AutoSnap = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 132
    Width = 912
    Height = 289
    Align = alClient
    DataSource = DataSource1
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 0
    Width = 912
    Height = 129
    Align = alTop
    DataSource = DataSource2
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object BitBtn1: TBitBtn
    Left = 884
    Top = 0
    Width = 28
    Height = 25
    Caption = '&'
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
      33333333333F8888883F33330000324334222222443333388F3833333388F333
      000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
      F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
      223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
      3338888300003AAAAAAA33333333333888888833333333330000333333333333
      333333333333333333FFFFFF000033333333333344444433FFFF333333888888
      00003A444333333A22222438888F333338F3333800003A2243333333A2222438
      F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
      22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
      33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
      3333333333338888883333330000333333333333333333333333333333333333
      0000}
    ModalResult = 4
    NumGlyphs = 2
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object Button1: TButton
    Left = 424
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    Visible = False
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    Left = 208
    Top = 248
  end
  object MainMenu1: TMainMenu
    Left = 112
    Top = 120
    object N1: TMenuItem
      Caption = #1050#1083#1080#1077#1085#1090#1099
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
      OnClick = N2Click
    end
    object N4: TMenuItem
      Caption = #1059#1089#1083#1091#1075#1080
      OnClick = N4Click
    end
    object N3: TMenuItem
      Caption = #1047#1072#1073#1088#1086#1085#1080#1088#1086#1074#1072#1090#1100
      OnClick = N3Click
    end
    object N5: TMenuItem
      Caption = #1047#1072#1082#1088#1099#1090#1100
      OnClick = N5Click
    end
    object N7: TMenuItem
      Caption = #1054#1090#1095#1077#1090
      object N6: TMenuItem
        Caption = #1055#1077#1088#1077#1095#1077#1085#1100' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1081
        OnClick = N6Click
      end
      object N8: TMenuItem
        Caption = #1055#1077#1088#1077#1095#1077#1085#1100' '#1087#1086#1089#1090#1086#1103#1083#1100#1094#1077#1074
        OnClick = N8Click
      end
      object N9: TMenuItem
        Caption = #1057#1074#1086#1073#1086#1076#1085#1099#1077' '#1085#1086#1084#1077#1088#1072
        OnClick = N9Click
      end
      object N10: TMenuItem
        Caption = #1057#1074#1077#1076#1077#1085#1080#1103' '#1074#1086#1073#1086#1076#1085#1099#1093' '#1085#1086#1084#1077#1088#1086#1074
        OnClick = N10Click
      end
      object N11: TMenuItem
        Caption = #1046#1072#1083#1086#1073#1099
        OnClick = N11Click
      end
      object N12: TMenuItem
        Caption = #1057#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1087#1086#1089#1090#1086#1103#1083#1100#1094#1072#1093
        OnClick = N12Click
      end
      object N13: TMenuItem
        Caption = #1053#1086#1084#1077#1088
        OnClick = N13Click
      end
      object N14: TMenuItem
        Caption = #1053#1086#1084#1077#1088#1072' '#1087#1086#1089#1090#1086#1103#1083#1100#1094#1077#1074
        OnClick = N14Click
      end
    end
  end
  object DataSource2: TDataSource
    OnDataChange = DataSource2DataChange
    Left = 320
    Top = 80
  end
end
