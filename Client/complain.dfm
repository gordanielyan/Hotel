object fmComplain: TfmComplain
  Left = 0
  Top = 0
  Caption = 'fmComplain'
  ClientHeight = 335
  ClientWidth = 676
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DateTimePicker1: TDateTimePicker
    Left = 0
    Top = 0
    Width = 676
    Height = 21
    Align = alTop
    Date = 43976.000000000000000000
    Time = 0.841593854165694200
    TabOrder = 0
    ExplicitLeft = 232
    ExplicitTop = 72
    ExplicitWidth = 186
  end
  object Panel1: TPanel
    Left = 0
    Top = 294
    Width = 676
    Height = 41
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 1
    ExplicitLeft = 256
    ExplicitTop = 168
    ExplicitWidth = 185
    object BitBtn1: TBitBtn
      Left = 168
      Top = 6
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 400
      Top = 6
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 21
    Width = 676
    Height = 273
    Align = alClient
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
    ExplicitLeft = 256
    ExplicitTop = 144
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
end
