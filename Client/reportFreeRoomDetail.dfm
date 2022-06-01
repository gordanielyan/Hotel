object fmReportFreeRoom: TfmReportFreeRoom
  Left = 0
  Top = 0
  Caption = 'fmReportFreeRoom'
  ClientHeight = 291
  ClientWidth = 442
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
    Left = 168
    Top = 224
    Width = 6
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object RadioGroup1: TRadioGroup
    Left = 168
    Top = 19
    Width = 105
    Height = 70
    BiDiMode = bdLeftToRight
    Caption = #1050#1083#1072#1089#1089' '#1082#1086#1088#1087#1091#1089#1072
    Items.Strings = (
      #55356#57119#55356#57119#55356#57119
      #55356#57119#55356#57119#55356#57119#55356#57119
      #55356#57119#55356#57119#55356#57119#55356#57119#55356#57119)
    ParentBiDiMode = False
    TabOrder = 0
    OnClick = RadioGroup2Click
  end
  object RadioGroup2: TRadioGroup
    Left = 168
    Top = 115
    Width = 105
    Height = 54
    BiDiMode = bdLeftToRight
    Caption = #1052#1077#1089#1090#1085#1086#1089#1090#1100' '#1085#1086#1084#1077#1088#1072
    Columns = 3
    Items.Strings = (
      '1'
      '2'
      '3')
    ParentBiDiMode = False
    TabOrder = 1
    OnClick = RadioGroup2Click
  end
end
