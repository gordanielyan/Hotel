object fmClients: TfmClients
  Left = 396
  Top = 189
  Caption = #1050#1083#1080#1077#1085#1090#1099
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
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 233
    Width = 912
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 100
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 233
    Align = alTop
    Caption = 'Panel2'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 22
      Width = 910
      Height = 210
      Align = alClient
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
    end
    object SearchBox1: TSearchBox
      Left = 1
      Top = 1
      Width = 910
      Height = 21
      Align = alTop
      TabOrder = 1
      TextHint = #1055#1086#1080#1089#1082'...'
      OnChange = SearchBox1InvokeSearch
      OnInvokeSearch = SearchBox1InvokeSearch
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 236
    Width = 912
    Height = 185
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 1
    object Splitter3: TSplitter
      Left = 281
      Top = 1
      Height = 183
      ExplicitLeft = 297
      ExplicitHeight = 216
    end
    object Panel1: TPanel
      Left = 284
      Top = 1
      Width = 627
      Height = 183
      Align = alClient
      Caption = 'Panel1'
      TabOrder = 0
      object Splitter2: TSplitter
        Left = 333
        Top = 1
        Height = 181
        Align = alRight
        ExplicitLeft = 680
        ExplicitHeight = 216
      end
      object DBGrid2: TDBGrid
        Left = 1
        Top = 1
        Width = 332
        Height = 181
        Hint = #1059#1089#1083#1091#1075#1080
        Align = alClient
        DataSource = DataSource2
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DBGrid3: TDBGrid
        Left = 336
        Top = 1
        Width = 290
        Height = 181
        Hint = #1047#1072#1076#1086#1083#1078#1077#1085#1086#1089#1090#1100
        Align = alRight
        DataSource = DataSource3
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object DBGrid4: TDBGrid
      Left = 1
      Top = 1
      Width = 280
      Height = 183
      Hint = #1073#1088#1086#1085#1080
      Align = alLeft
      DataSource = DataSource4
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object DataSource1: TDataSource
    OnDataChange = DataSource1DataChange
    Left = 216
    Top = 128
  end
  object MainMenu1: TMainMenu
    Left = 128
    Top = 80
    object N1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = N2Click
    end
    object N5: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = N5Click
    end
    object N6: TMenuItem
      Caption = #1059#1089#1083#1091#1075#1080
      object N4: TMenuItem
        Caption = #1054#1082#1072#1079#1072#1090#1100' '#1091#1089#1083#1091#1075#1091
        OnClick = N4Click
      end
      object N7: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100' '#1086#1082#1072#1079#1072#1085#1085#1091#1102' '#1091#1089#1083#1091#1075#1091
        OnClick = N7Click
      end
    end
    object N3: TMenuItem
      Caption = #1047#1072#1082#1088#1099#1090#1100
      OnClick = N3Click
    end
    object N8: TMenuItem
      Caption = #1078#1072#1083#1086#1073#1099
      object N9: TMenuItem
        Caption = #1076#1086#1073#1072#1074#1080#1090#1100' '#1078#1072#1083#1086#1073#1091
        OnClick = N9Click
      end
      object N10: TMenuItem
        Caption = #1089#1087#1080#1089#1086#1082' '#1078#1072#1083#1086#1073
        OnClick = N10Click
      end
    end
    object N11: TMenuItem
      Caption = #1072#1085#1082#1077#1090#1072
      object N12: TMenuItem
        Caption = #1087#1088#1086#1081#1090#1080' '#1072#1085#1082#1077#1090#1091
        OnClick = N12Click
      end
      object N13: TMenuItem
        Caption = #1088#1077#1079#1091#1083#1100#1090#1072#1090#1099
        OnClick = N13Click
      end
    end
  end
  object DataSource2: TDataSource
    Left = 416
    Top = 248
  end
  object DataSource3: TDataSource
    Left = 544
    Top = 288
  end
  object DataSource4: TDataSource
    Left = 136
    Top = 280
  end
end
