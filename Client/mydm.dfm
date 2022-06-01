object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 436
  Width = 708
  object DCOMConnection1: TDCOMConnection
    Connected = True
    ServerGUID = '{FE49A771-846A-44F0-B6C3-6F5EB201CF8F}'
    ServerName = 'Project1.MyServer'
    Left = 72
    Top = 16
  end
  object cdsBook: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBook'
    RemoteServer = DCOMConnection1
    OnCalcFields = cdsBookCalcFields
    Left = 32
    Top = 72
    object cdsBookID: TIntegerField
      FieldName = 'ID'
      Visible = False
    end
    object cdsBookID_CLIENT: TIntegerField
      FieldName = 'ID_CLIENT'
      Visible = False
    end
    object cdsBookROOMS: TIntegerField
      FieldName = 'ROOMS'
      Visible = False
    end
    object cdsBookDATE_IN: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1079#1072#1089#1077#1083#1077#1085#1080#1103
      FieldName = 'DATE_IN'
    end
    object cdsBookDATE_OUT: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1074#1099#1089#1077#1083#1077#1085#1080#1103
      FieldName = 'DATE_OUT'
    end
    object cdsBookCORPUS_CLASS: TIntegerField
      DisplayLabel = #1050#1083#1072#1089#1089' '#1050#1086#1088#1087#1091#1089#1072
      FieldName = 'CORPUS_CLASS'
    end
    object cdsBookPEOPLE: TIntegerField
      DisplayLabel = #1051#1102#1076#1077#1081
      FieldName = 'PEOPLE'
    end
    object cdsBookDATE_BOOKED: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1073#1088#1086#1085#1080
      FieldName = 'DATE_BOOKED'
    end
    object cdsBookID_ORGANIZATION: TIntegerField
      FieldName = 'ID_ORGANIZATION'
      ReadOnly = True
      Visible = False
    end
    object cdsBookPLACED: TIntegerField
      FieldName = 'PLACED'
      Visible = False
    end
    object cdsBookPLACEDE: TWideStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1073#1088#1086#1085#1080
      FieldKind = fkCalculated
      FieldName = 'PLACEDE'
      Size = 5
      Calculated = True
    end
    object cdsBookORGANIZATION: TStringField
      DisplayLabel = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      FieldKind = fkLookup
      FieldName = 'ORGANIZATION'
      LookupDataSet = cdsOrg
      LookupKeyFields = 'ID_ORGANIZATION'
      LookupResultField = 'NAME'
      KeyFields = 'ID_ORGANIZATION'
      Lookup = True
    end
  end
  object cdsClient: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dspClient'
    RemoteServer = DCOMConnection1
    OnCalcFields = cdsClientCalcFields
    Left = 96
    Top = 72
    object cdsClientID: TIntegerField
      FieldName = 'ID'
      Visible = False
    end
    object cdsClientNAME: TStringField
      DisplayLabel = #1048#1084#1103
      FieldName = 'NAME'
      Size = 59
    end
    object cdsClientID_ORGANIZATION: TIntegerField
      FieldName = 'ID_ORGANIZATION'
      Visible = False
    end
    object cdsClientORGANIZATION: TStringField
      DisplayLabel = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      FieldKind = fkLookup
      FieldName = 'ORGANIZATION'
      LookupDataSet = cdsOrg
      LookupKeyFields = 'ID_ORGANIZATION'
      LookupResultField = 'NAME'
      KeyFields = 'ID_ORGANIZATION'
      Size = 50
      Lookup = True
    end
    object cdsClientDISCOUNT: TIntegerField
      DisplayLabel = #1057#1082#1080#1076#1082#1072
      FieldKind = fkLookup
      FieldName = 'DISCOUNT'
      LookupDataSet = cdsOrg
      LookupKeyFields = 'ID_ORGANIZATION'
      LookupResultField = 'DISCOUNT'
      KeyFields = 'ID_ORGANIZATION'
      Lookup = True
    end
    object cdsClientPASSPORT: TIntegerField
      DisplayLabel = #1055#1072#1089#1089#1087#1086#1088#1090
      FieldName = 'PASSPORT'
    end
    object cdsClientRoomPrice: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1082#1086#1084#1085#1072#1090#1099
      FieldKind = fkLookup
      FieldName = 'RoomPrice'
      LookupDataSet = cdsRoom
      LookupKeyFields = 'ID_CLIENT'
      LookupResultField = 'PRICE'
      KeyFields = 'ID'
      Visible = False
      Lookup = True
    end
    object cdsClientDay_IN: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1079#1072#1089#1077#1083#1077#1085#1080#1103
      FieldKind = fkLookup
      FieldName = 'Day_IN'
      LookupDataSet = cdsBook
      LookupKeyFields = 'ID_CLIENT'
      LookupResultField = 'DATE_IN'
      KeyFields = 'ID'
      Visible = False
      Lookup = True
    end
    object cdsClientDay_OUT: TDateField
      FieldKind = fkLookup
      FieldName = 'Day_OUT'
      LookupDataSet = cdsBook
      LookupKeyFields = 'ID_CLIENT'
      LookupResultField = 'DATE_OUT'
      KeyFields = 'ID'
      Visible = False
      Lookup = True
    end
    object cdsClientRoomPriceDay: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1079#1072' '#1078#1080#1083#1100#1077
      FieldKind = fkCalculated
      FieldName = 'RoomPriceDay'
      Visible = False
      Calculated = True
    end
    object cdsClientAgg: TAggregateField
      FieldName = 'Agg'
      Active = True
      DisplayName = ''
      Expression = 'COUNT(*)'
    end
  end
  object cdsClientRoom: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClientRoom'
    RemoteServer = DCOMConnection1
    OnCalcFields = cdsClientRoomCalcFields
    Left = 176
    Top = 80
    object cdsClientRoomID_CLIENT: TIntegerField
      FieldName = 'ID_CLIENT'
      Visible = False
    end
    object cdsClientRoomID_ROOM: TIntegerField
      FieldName = 'ID_ROOM'
      Visible = False
    end
    object cdsClientRoomID_BOOK: TIntegerField
      FieldName = 'ID_BOOK'
      Visible = False
    end
    object cdsClientRoomNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'NAME'
      LookupDataSet = cdsClient
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'ID_CLIENT'
      Lookup = True
    end
  end
  object cdsComplain: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspComplain'
    RemoteServer = DCOMConnection1
    Left = 256
    Top = 80
    object cdsComplainID: TIntegerField
      FieldName = 'ID'
      Visible = False
    end
    object cdsComplainDATE: TDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'DATE'
    end
    object cdsComplainCOMPLAIN: TStringField
      DisplayLabel = #1046#1072#1083#1086#1073#1072
      FieldName = 'COMPLAIN'
      Size = 100
    end
    object cdsComplainID_CLIENT: TIntegerField
      FieldName = 'ID_CLIENT'
      Visible = False
    end
    object cdsComplainClient: TStringField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldKind = fkLookup
      FieldName = 'Client'
      LookupDataSet = cdsClient
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'ID_CLIENT'
      Lookup = True
    end
  end
  object cdsCorpus: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCorpus'
    RemoteServer = DCOMConnection1
    OnCalcFields = cdsCorpusCalcFields
    Left = 40
    Top = 144
    object cdsCorpusID: TIntegerField
      FieldName = 'ID'
      Visible = False
    end
    object cdsCorpusCLASS: TIntegerField
      FieldName = 'CLASS'
      Visible = False
    end
    object cdsCorpusONE_MAN: TIntegerField
      DisplayLabel = #1054#1076#1085#1086#1084#1077#1089#1090#1085#1099#1093
      FieldName = 'ONE_MAN'
    end
    object cdsCorpusTWO_MAN: TIntegerField
      DisplayLabel = #1044#1074#1091#1093#1084#1077#1089#1090#1085#1099#1093
      FieldName = 'TWO_MAN'
    end
    object cdsCorpusTHREE_MAN: TIntegerField
      DisplayLabel = #1058#1088#1077#1093#1084#1077#1089#1090#1085#1099#1093
      FieldName = 'THREE_MAN'
    end
    object cdsCorpusFLOORS: TIntegerField
      FieldName = 'FLOORS'
      Visible = False
    end
    object cdsCorpusCLASSE: TWideStringField
      Alignment = taCenter
      DisplayLabel = #1050#1083#1072#1089#1089
      FieldKind = fkCalculated
      FieldName = 'CLASSE'
      Size = 10
      Calculated = True
    end
  end
  object cdsDebt: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDebt'
    RemoteServer = DCOMConnection1
    OnCalcFields = cdsDebtCalcFields
    Left = 104
    Top = 144
    object cdsDebtID_CLIENT: TIntegerField
      FieldName = 'ID_CLIENT'
      Visible = False
    end
    object cdsDebtSUMM: TFloatField
      DisplayLabel = #1047#1072#1076#1086#1083#1078#1077#1085#1085#1086#1089#1090#1100
      FieldName = 'SUMM'
      ReadOnly = True
    end
  end
  object cdsDebtServ: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDebtService'
    RemoteServer = DCOMConnection1
    Left = 184
    Top = 152
    object cdsDebtServID: TSmallintField
      FieldName = 'ID'
      Visible = False
    end
    object cdsDebtServID_CLIENT: TIntegerField
      FieldName = 'ID_CLIENT'
      Visible = False
    end
    object cdsDebtServID_SERVICE: TIntegerField
      FieldName = 'ID_SERVICE'
      Visible = False
    end
    object cdsDebtServSERVNAME: TStringField
      DisplayLabel = #1059#1089#1083#1091#1075#1072
      FieldName = 'SERVNAME'
      ReadOnly = True
      Size = 59
    end
    object cdsDebtServPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'PRICE'
      ReadOnly = True
    end
  end
  object cdsOrg: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrganization'
    RemoteServer = DCOMConnection1
    Left = 256
    Top = 144
    object cdsOrgID_ORGANIZATION: TIntegerField
      FieldName = 'ID_ORGANIZATION'
      Visible = False
    end
    object cdsOrgNAME: TStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Size = 50
    end
    object cdsOrgDISCOUNT: TIntegerField
      DisplayLabel = #1057#1082#1080#1076#1082#1072
      FieldName = 'DISCOUNT'
    end
  end
  object cdsRoom: TClientDataSet
    Active = True
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dspRoom'
    RemoteServer = DCOMConnection1
    Left = 88
    Top = 224
    object cdsRoomID: TIntegerField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'ID'
    end
    object cdsRoomID_BOOK: TIntegerField
      FieldName = 'ID_BOOK'
      Visible = False
    end
    object cdsRoomID_CORPUS: TIntegerField
      FieldName = 'ID_CORPUS'
      Visible = False
    end
    object cdsRoomPERSONS: TIntegerField
      FieldName = 'PERSONS'
      Visible = False
    end
    object cdsRoomFLOOR: TIntegerField
      FieldName = 'FLOOR'
      Visible = False
    end
    object cdsRoomPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'PRICE'
    end
    object cdsRoomMANS: TIntegerField
      DisplayLabel = #1052#1077#1089#1090#1085#1086#1089#1090#1100
      FieldName = 'MANS'
    end
    object cdsRoomID_CLIENT: TIntegerField
      FieldName = 'ID_CLIENT'
      ReadOnly = True
      Visible = False
    end
    object cdsRoomCORPUS_CLASS: TIntegerField
      FieldName = 'CORPUS_CLASS'
      ReadOnly = True
      Visible = False
    end
    object cdsRoomAgg: TAggregateField
      FieldName = 'Agg'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'COUNT(*)'
    end
  end
  object cdsServ: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspService'
    RemoteServer = DCOMConnection1
    Left = 176
    Top = 232
    object cdsServID: TIntegerField
      FieldName = 'ID'
      Visible = False
    end
    object cdsServNAME: TStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080
      DisplayWidth = 25
      FieldName = 'NAME'
      Size = 59
    end
    object cdsServPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'PRICE'
      DisplayFormat = '#,##0.00'
    end
  end
  object cdsSurvey: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    RemoteServer = DCOMConnection1
    Left = 248
    Top = 240
    object cdsSurveyID_CLIENT: TIntegerField
      FieldName = 'ID_CLIENT'
      Required = True
      Visible = False
    end
    object cdsSurveySERVICE: TIntegerField
      DisplayLabel = #1057#1077#1088#1074#1080#1089
      FieldName = 'SERVICE'
    end
    object cdsSurveyPRICE: TIntegerField
      DisplayLabel = #1062#1077#1085#1099
      FieldName = 'PRICE'
    end
  end
  object cdsQOrgBook: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQOrgBook'
    RemoteServer = DCOMConnection1
    Left = 360
    Top = 144
    object cdsQOrgBookID_ORGANIZATION: TIntegerField
      FieldName = 'ID_ORGANIZATION'
      Origin = 'BOOK.ID_ORGANIZATION'
      ReadOnly = True
      Visible = False
    end
    object cdsQOrgBookCOUNT: TLargeintField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'COUNT'
      Required = True
    end
    object cdsQOrgBookORG_NAME: TStringField
      DisplayLabel = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      FieldKind = fkLookup
      FieldName = 'ORG_NAME'
      LookupDataSet = cdsOrg
      LookupKeyFields = 'ID_ORGANIZATION'
      LookupResultField = 'NAME'
      KeyFields = 'ID_ORGANIZATION'
      Lookup = True
    end
  end
end
