object fmComplains: TfmComplains
  Left = 0
  Top = 0
  Caption = 'fmComplains'
  ClientHeight = 389
  ClientWidth = 768
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 768
    Height = 389
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    Left = 376
    Top = 200
  end
  object MainMenu1: TMainMenu
    Left = 320
    Top = 136
    object N1: TMenuItem
      Caption = #1091#1076#1072#1083#1080#1090#1100
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1080#1079#1084#1077#1085#1080#1090#1100
      OnClick = N2Click
    end
  end
end
