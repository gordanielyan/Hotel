object fmClient: TfmClient
  Left = 357
  Top = 144
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1083#1080#1077#1085#1090#1072
  ClientHeight = 441
  ClientWidth = 498
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LabeledEdit1: TLabeledEdit
    Left = 168
    Top = 64
    Width = 121
    Height = 21
    EditLabel.Width = 27
    EditLabel.Height = 13
    EditLabel.BiDiMode = bdLeftToRight
    EditLabel.Caption = #1060#1048#1054
    EditLabel.ParentBiDiMode = False
    TabOrder = 0
    OnChange = LabeledEdit1Change
  end
  object LabeledEdit2: TLabeledEdit
    Left = 168
    Top = 120
    Width = 121
    Height = 21
    EditLabel.Width = 43
    EditLabel.Height = 13
    EditLabel.Caption = #1055#1072#1089#1087#1086#1088#1090
    NumbersOnly = True
    TabOrder = 1
    OnChange = LabeledEdit1Change
  end
  object LabeledEdit3: TLabeledEdit
    Left = 168
    Top = 176
    Width = 121
    Height = 21
    EditLabel.Width = 67
    EditLabel.Height = 13
    EditLabel.Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
    ReadOnly = True
    TabOrder = 2
    OnChange = LabeledEdit1Change
  end
  object BitBtn1: TBitBtn
    Left = 80
    Top = 272
    Width = 75
    Height = 25
    Enabled = False
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 3
  end
  object BitBtn2: TBitBtn
    Left = 288
    Top = 272
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 4
  end
  object Button1: TButton
    Left = 272
    Top = 176
    Width = 17
    Height = 21
    Caption = '...'
    TabOrder = 5
    OnClick = Button1Click
  end
end
