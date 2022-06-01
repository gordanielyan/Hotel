object fmBooks: TfmBooks
  Left = 0
  Top = 0
  Caption = 'fmBooks'
  ClientHeight = 327
  ClientWidth = 623
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 623
    Height = 327
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 136
    Width = 623
    Height = 33
    TabOrder = 1
    Visible = False
  end
  object DataSource1: TDataSource
    Left = 248
    Top = 136
  end
  object MainMenu1: TMainMenu
    Left = 368
    Top = 168
    object N4: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      object N1: TMenuItem
        Caption = #1050#1083#1080#1077#1085#1090
        OnClick = N1Click
      end
      object N5: TMenuItem
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        OnClick = N5Click
      end
    end
    object N2: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    end
    object N6: TMenuItem
      Caption = #1047#1072#1082#1088#1099#1090#1100
      OnClick = N6Click
    end
  end
end
