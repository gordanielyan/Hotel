object fmClientDetail: TfmClientDetail
  Left = 0
  Top = 0
  Caption = 'fmClientDetail'
  ClientHeight = 453
  ClientWidth = 1045
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 217
    Width = 1045
    Height = 52
    Align = alClient
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
    ExplicitLeft = 336
    ExplicitTop = 223
    ExplicitWidth = 6
    ExplicitHeight = 23
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1045
    Height = 217
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 472
      Height = 215
      Align = alLeft
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object DBGrid2: TDBGrid
      Left = 473
      Top = 1
      Width = 571
      Height = 215
      Align = alClient
      DataSource = DataSource2
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 269
    Width = 1045
    Height = 184
    Align = alBottom
    Caption = 'Panel2'
    TabOrder = 1
    object DBGrid3: TDBGrid
      Left = 1
      Top = 1
      Width = 320
      Height = 182
      Align = alLeft
      DataSource = DataSource3
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object DBGrid4: TDBGrid
      Left = 321
      Top = 1
      Width = 403
      Height = 182
      Align = alClient
      DataSource = DataSource4
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object DBGrid5: TDBGrid
      Left = 724
      Top = 1
      Width = 320
      Height = 182
      Align = alRight
      DataSource = DataSource5
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object DataSource1: TDataSource
    OnDataChange = DataSource1DataChange
    Left = 352
    Top = 112
  end
  object DataSource2: TDataSource
    OnDataChange = DataSource2DataChange
    Left = 696
    Top = 120
  end
  object DataSource3: TDataSource
    Left = 200
    Top = 312
  end
  object DataSource4: TDataSource
    Left = 472
    Top = 304
  end
  object DataSource5: TDataSource
    Left = 768
    Top = 320
  end
end
