object fmReportRoomDetail: TfmReportRoomDetail
  Left = 0
  Top = 0
  Caption = 'fmReportRoomDetail'
  ClientHeight = 307
  ClientWidth = 690
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 690
    Height = 170
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
    Left = 440
    Top = 176
    Width = 186
    Height = 21
    Date = 43979.000000000000000000
    Time = 0.793103831019834600
    TabOrder = 1
  end
  object DateTimePicker2: TDateTimePicker
    Left = 80
    Top = 176
    Width = 186
    Height = 21
    Date = 43979.000000000000000000
    Time = 0.793197581020649500
    TabOrder = 2
  end
  object LabeledEdit1: TLabeledEdit
    Left = 297
    Top = 200
    Width = 121
    Height = 21
    EditLabel.Width = 93
    EditLabel.Height = 13
    EditLabel.Caption = #1052#1077#1089#1090#1085#1086#1089#1090#1100' '#1085#1086#1084#1077#1088#1072
    TabOrder = 3
  end
  object LabeledEdit2: TLabeledEdit
    Left = 201
    Top = 259
    Width = 121
    Height = 21
    EditLabel.Width = 41
    EditLabel.Height = 13
    EditLabel.Caption = #1062#1077#1085#1072' '#1086#1090
    TabOrder = 4
  end
  object Button1: TButton
    Left = 528
    Top = 257
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 5
    OnClick = Button1Click
  end
  object LabeledEdit3: TLabeledEdit
    Left = 369
    Top = 259
    Width = 121
    Height = 21
    EditLabel.Width = 42
    EditLabel.Height = 13
    EditLabel.Caption = #1062#1077#1085#1072' '#1076#1086
    TabOrder = 6
  end
  object DataSource1: TDataSource
    Left = 328
    Top = 88
  end
end
