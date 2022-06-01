object fmBookOrg: TfmBookOrg
  Left = 0
  Top = 0
  Caption = 'fmBookOrg'
  ClientHeight = 333
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 88
    Top = 88
    Width = 66
    Height = 13
    Caption = #1044#1072#1090#1072' '#1074#1098#1077#1079#1076#1072
  end
  object Label3: TLabel
    Left = 87
    Top = 128
    Width = 67
    Height = 13
    Caption = #1044#1072#1090#1072' '#1074#1099#1077#1079#1076#1072
  end
  object Label5: TLabel
    Left = 95
    Top = 168
    Width = 59
    Height = 13
    Caption = #1044#1072#1090#1072' '#1073#1088#1086#1085#1080
  end
  object Label1: TLabel
    Left = 231
    Top = 187
    Width = 6
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 231
    Top = 216
    Width = 6
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LabeledEdit1: TLabeledEdit
    Left = 152
    Top = 40
    Width = 121
    Height = 21
    EditLabel.Width = 66
    EditLabel.Height = 13
    EditLabel.Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
    ReadOnly = True
    TabOrder = 0
    OnChange = LabeledEdit1Change
  end
  object Button1: TButton
    Left = 271
    Top = 38
    Width = 18
    Height = 25
    Caption = '...'
    TabOrder = 1
    OnClick = Button1Click
  end
  object BitBtn1: TBitBtn
    Left = 88
    Top = 256
    Width = 75
    Height = 25
    Enabled = False
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 2
  end
  object BitBtn2: TBitBtn
    Left = 271
    Top = 256
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 3
  end
  object DateTimePicker1: TDateTimePicker
    Left = 160
    Top = 80
    Width = 186
    Height = 21
    Date = 43966.000000000000000000
    Time = 0.871354155089648000
    TabOrder = 4
  end
  object DateTimePicker2: TDateTimePicker
    Left = 160
    Top = 120
    Width = 186
    Height = 21
    Date = 43966.000000000000000000
    Time = 0.871354155089648000
    TabOrder = 5
    OnChange = DateTimePicker2Change
  end
  object DateTimePicker3: TDateTimePicker
    Left = 160
    Top = 160
    Width = 186
    Height = 21
    Date = 43966.000000000000000000
    Time = 0.872135486111801600
    TabOrder = 6
  end
  object RadioGroup1: TRadioGroup
    Left = 112
    Top = 187
    Width = 90
    Height = 57
    BiDiMode = bdLeftToRight
    Caption = #1050#1083#1072#1089#1089' '#1082#1086#1088#1087#1091#1089#1072
    Items.Strings = (
      #55356#57119#55356#57119#55356#57119
      #55356#57119#55356#57119#55356#57119#55356#57119
      #55356#57119#55356#57119#55356#57119#55356#57119#55356#57119)
    ParentBiDiMode = False
    TabOrder = 7
    OnClick = RadioGroup1Click
  end
end
