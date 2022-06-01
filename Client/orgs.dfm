object fmOrgs: TfmOrgs
  Left = 0
  Top = 0
  Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
  ClientHeight = 354
  ClientWidth = 699
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 699
    Height = 161
    Align = alTop
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 161
    Width = 699
    Height = 193
    Align = alClient
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    OnDataChange = DataSource1DataChange
    Left = 376
    Top = 40
  end
  object MainMenu1: TMainMenu
    Left = 216
    Top = 32
    object N1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = N2Click
    end
    object N7: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = N7Click
    end
    object N3: TMenuItem
      Caption = #1050#1083#1080#1077#1085#1090#1099
      object N4: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100
        OnClick = N5Click
      end
      object N6: TMenuItem
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        OnClick = N6Click
      end
    end
    object N8: TMenuItem
      Caption = #1047#1072#1082#1088#1099#1090#1100
      OnClick = N8Click
    end
  end
  object DataSource2: TDataSource
    Left = 320
    Top = 216
  end
end
