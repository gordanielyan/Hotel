object fmBook: TfmBook
  Left = 0
  Top = 0
  Caption = #1041#1088#1086#1085#1100
  ClientHeight = 325
  ClientWidth = 481
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 254
    Top = 34
    Width = 93
    Height = 13
    Caption = #1052#1077#1089#1090#1085#1086#1089#1090#1100' '#1085#1086#1084#1077#1088#1072
  end
  object Label2: TLabel
    Left = 104
    Top = 104
    Width = 66
    Height = 13
    Caption = #1044#1072#1090#1072' '#1074#1098#1077#1079#1076#1072
  end
  object Label3: TLabel
    Left = 103
    Top = 144
    Width = 67
    Height = 13
    Caption = #1044#1072#1090#1072' '#1074#1099#1077#1079#1076#1072
  end
  object Label4: TLabel
    Left = 359
    Top = 34
    Width = 35
    Height = 13
    Caption = #1051#1102#1076#1077#1081
  end
  object Label5: TLabel
    Left = 111
    Top = 184
    Width = 59
    Height = 13
    Caption = #1044#1072#1090#1072' '#1073#1088#1086#1085#1080
  end
  object Label6: TLabel
    Left = 101
    Top = 56
    Width = 37
    Height = 13
    Caption = #1050#1083#1080#1077#1085#1090
  end
  object Label7: TLabel
    Left = 254
    Top = 219
    Width = 6
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object seRooms: TSpinEdit
    Left = 289
    Top = 53
    Width = 41
    Height = 22
    MaxValue = 3
    MinValue = 1
    TabOrder = 0
    Value = 1
  end
  object DateTimePicker1: TDateTimePicker
    Left = 176
    Top = 96
    Width = 186
    Height = 21
    Date = 43966.000000000000000000
    Time = 0.871354155089648000
    TabOrder = 1
  end
  object DateTimePicker2: TDateTimePicker
    Left = 176
    Top = 136
    Width = 186
    Height = 21
    Date = 43966.000000000000000000
    Time = 0.871354155089648000
    TabOrder = 2
  end
  object sePeople: TSpinEdit
    Left = 353
    Top = 53
    Width = 41
    Height = 22
    MaxValue = 5
    MinValue = 1
    TabOrder = 3
    Value = 1
  end
  object DateTimePicker3: TDateTimePicker
    Left = 176
    Top = 176
    Width = 186
    Height = 21
    Date = 43966.000000000000000000
    Time = 0.872135486111801600
    TabOrder = 4
  end
  object BitBtn1: TBitBtn
    Left = 111
    Top = 280
    Width = 75
    Height = 25
    Enabled = False
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 5
  end
  object BitBtn2: TBitBtn
    Left = 319
    Top = 280
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 6
  end
  object edtClient: TEdit
    Left = 144
    Top = 53
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 7
    OnChange = edtClientChange
  end
  object Button1: TButton
    Left = 240
    Top = 53
    Width = 25
    Height = 21
    Caption = '...'
    TabOrder = 8
    OnClick = Button1Click
  end
  object RadioGroup1: TRadioGroup
    Left = 144
    Top = 203
    Width = 90
    Height = 57
    BiDiMode = bdLeftToRight
    Caption = #1050#1083#1072#1089#1089' '#1082#1086#1088#1087#1091#1089#1072
    Items.Strings = (
      #55356#57119#55356#57119#55356#57119
      #55356#57119#55356#57119#55356#57119#55356#57119
      #55356#57119#55356#57119#55356#57119#55356#57119#55356#57119)
    ParentBiDiMode = False
    TabOrder = 9
    OnClick = RadioGroup1Click
  end
end
