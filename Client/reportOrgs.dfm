object fmReportOrgBook: TfmReportOrgBook
  Left = 0
  Top = 0
  Caption = #1054#1090#1095#1077#1090
  ClientHeight = 370
  ClientWidth = 590
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
    Top = 0
    Width = 590
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
  object DateTimePicker1: TDateTimePicker
    Left = 56
    Top = 208
    Width = 186
    Height = 21
    Date = 43979.000000000000000000
    Time = 0.678484641204704500
    TabOrder = 1
  end
  object DateTimePicker2: TDateTimePicker
    Left = 360
    Top = 208
    Width = 186
    Height = 21
    Date = 43979.000000000000000000
    Time = 0.678484641204704500
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 240
    Top = 248
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 3
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 264
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 4
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    Left = 264
    Top = 88
  end
end
