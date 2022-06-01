object fmOrg: TfmOrg
  Left = 0
  Top = 0
  Caption = 'fmOrg'
  ClientHeight = 201
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
  object Label1: TLabel
    Left = 351
    Top = 59
    Width = 11
    Height = 13
    Caption = '%'
  end
  object Label2: TLabel
    Left = 307
    Top = 40
    Width = 38
    Height = 13
    Caption = #1057#1082#1080#1076#1082#1072
  end
  object leName: TLabeledEdit
    Left = 80
    Top = 56
    Width = 210
    Height = 21
    EditLabel.Width = 48
    EditLabel.Height = 13
    EditLabel.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
    TabOrder = 0
    OnChange = leNameChange
  end
  object seDiscount: TSpinEdit
    Left = 305
    Top = 56
    Width = 40
    Height = 22
    MaxValue = 100
    MinValue = 0
    TabOrder = 1
    Value = 0
  end
  object BitBtn1: TBitBtn
    Left = 80
    Top = 128
    Width = 75
    Height = 25
    Enabled = False
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 2
  end
  object BitBtn2: TBitBtn
    Left = 287
    Top = 128
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 3
  end
end
