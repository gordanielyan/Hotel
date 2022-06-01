object fmReportRoom: TfmReportRoom
  Left = 0
  Top = 0
  Caption = 'fmReportRoom'
  ClientHeight = 402
  ClientWidth = 724
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 161
    Width = 724
    Height = 241
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 724
    Height = 161
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 320
      Height = 159
      Align = alLeft
      DataSource = DataSource2
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object DBGrid3: TDBGrid
      Left = 321
      Top = 1
      Width = 402
      Height = 159
      Align = alClient
      DataSource = DataSource3
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object DataSource1: TDataSource
    Left = 312
    Top = 288
  end
  object DataSource2: TDataSource
    OnDataChange = DataSource2DataChange
    Left = 136
    Top = 88
  end
  object DataSource3: TDataSource
    OnDataChange = DataSource3DataChange
    Left = 480
    Top = 64
  end
end
