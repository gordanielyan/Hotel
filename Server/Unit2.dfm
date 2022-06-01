object MyServer: TMyServer
  OldCreateOrder = False
  Left = 191
  Top = 115
  Height = 554
  Width = 1108
  object tClient: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'CLIENT'
    Left = 88
    Top = 104
    object tClientID: TIntegerField
      FieldName = 'ID'
    end
    object tClientNAME: TIBStringField
      FieldName = 'NAME'
      Size = 59
    end
    object tClientID_ORGANIZATION: TIntegerField
      FieldName = 'ID_ORGANIZATION'
    end
    object tClientDISCOUNT: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'DISCOUNT'
      ReadOnly = True
    end
    object tClientPASSPORT: TIntegerField
      FieldName = 'PASSPORT'
    end
  end
  object tBook: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'ID_CLIENT'
        DataType = ftInteger
      end
      item
        Name = 'ROOMS'
        DataType = ftInteger
      end
      item
        Name = 'DATE_IN'
        DataType = ftDate
      end
      item
        Name = 'DATE_OUT'
        DataType = ftDate
      end
      item
        Name = 'CORPUS_CLASS'
        DataType = ftInteger
      end
      item
        Name = 'PEOPLE'
        DataType = ftInteger
      end
      item
        Name = 'DATE_BOOKED'
        DataType = ftDate
      end
      item
        Name = 'ID_ORGANIZATION'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'PLACED'
        DataType = ftInteger
      end>
    StoreDefs = True
    TableName = 'BOOK'
    Left = 208
    Top = 112
    object tBookID: TIntegerField
      FieldName = 'ID'
    end
    object tBookID_CLIENT: TIntegerField
      FieldName = 'ID_CLIENT'
    end
    object tBookROOMS: TIntegerField
      FieldName = 'ROOMS'
    end
    object tBookDATE_IN: TDateField
      FieldName = 'DATE_IN'
    end
    object tBookDATE_OUT: TDateField
      FieldName = 'DATE_OUT'
    end
    object tBookCORPUS_CLASS: TIntegerField
      FieldName = 'CORPUS_CLASS'
    end
    object tBookPEOPLE: TIntegerField
      FieldName = 'PEOPLE'
    end
    object tBookDATE_BOOKED: TDateField
      FieldName = 'DATE_BOOKED'
    end
    object tBookID_ORGANIZATION: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ID_ORGANIZATION'
      ReadOnly = True
    end
    object tBookPLACED: TIntegerField
      FieldName = 'PLACED'
    end
  end
  object tClientRoom: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'CLIENT_ROOM'
    Left = 88
    Top = 296
    object tClientRoomID_CLIENT: TIntegerField
      FieldName = 'ID_CLIENT'
    end
    object tClientRoomID_ROOM: TIntegerField
      FieldName = 'ID_ROOM'
    end
    object tClientRoomID_BOOK: TIntegerField
      FieldName = 'ID_BOOK'
    end
  end
  object tComplain: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'COMPLAIN'
    Left = 488
    Top = 112
    object tComplainID: TIntegerField
      FieldName = 'ID'
    end
    object tComplainDATE: TDateField
      FieldName = 'DATE'
    end
    object tComplainCOMPLAIN: TIBStringField
      FieldName = 'COMPLAIN'
      Size = 100
    end
    object tComplainID_CLIENT: TIntegerField
      FieldName = 'ID_CLIENT'
    end
  end
  object tCorpus: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'CORPUS'
    Left = 216
    Top = 290
    object tCorpusID: TIntegerField
      FieldName = 'ID'
    end
    object tCorpusCLASS: TIntegerField
      FieldName = 'CLASS'
    end
    object tCorpusONE_MAN: TIntegerField
      FieldName = 'ONE_MAN'
    end
    object tCorpusTWO_MAN: TIntegerField
      FieldName = 'TWO_MAN'
    end
    object tCorpusTHREE_MAN: TIntegerField
      FieldName = 'THREE_MAN'
    end
    object tCorpusFLOORS: TIntegerField
      FieldName = 'FLOORS'
    end
  end
  object tDebt: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'DEBT'
    Left = 344
    Top = 296
    object tDebtID_CLIENT: TIntegerField
      FieldName = 'ID_CLIENT'
    end
    object tDebtSUMM: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'SUMM'
      ReadOnly = True
    end
  end
  object tDebtService: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'DEBT_SERVICE'
    Left = 496
    Top = 304
    object tDebtServiceID: TSmallintField
      FieldName = 'ID'
    end
    object tDebtServiceID_CLIENT: TIntegerField
      FieldName = 'ID_CLIENT'
    end
    object tDebtServiceID_SERVICE: TIntegerField
      FieldName = 'ID_SERVICE'
    end
    object tDebtServiceSERVNAME: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'SERVNAME'
      ReadOnly = True
      Size = 59
    end
    object tDebtServicePRICE: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PRICE'
      ReadOnly = True
    end
  end
  object tOrganization: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'ORGANIZATION'
    Left = 632
    Top = 112
    object tOrganizationID_ORGANIZATION: TIntegerField
      FieldName = 'ID_ORGANIZATION'
    end
    object tOrganizationNAME: TIBStringField
      FieldName = 'NAME'
      Size = 50
    end
    object tOrganizationDISCOUNT: TIntegerField
      FieldName = 'DISCOUNT'
    end
  end
  object tRoom: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'ROOMS'
    Left = 352
    Top = 112
    object tRoomID: TIntegerField
      FieldName = 'ID'
    end
    object tRoomID_BOOK: TIntegerField
      FieldName = 'ID_BOOK'
    end
    object tRoomID_CORPUS: TIntegerField
      FieldName = 'ID_CORPUS'
    end
    object tRoomPERSONS: TIntegerField
      FieldName = 'PERSONS'
    end
    object tRoomFLOOR: TIntegerField
      FieldName = 'FLOOR'
    end
    object tRoomPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object tRoomMANS: TIntegerField
      FieldName = 'MANS'
    end
    object tRoomID_CLIENT: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ID_CLIENT'
      ReadOnly = True
    end
    object tRoomCORPUS_CLASS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'CORPUS_CLASS'
      ReadOnly = True
    end
  end
  object tService: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'SERVICE'
    Left = 648
    Top = 304
    object tServiceID: TIntegerField
      FieldName = 'ID'
    end
    object tServiceNAME: TIBStringField
      FieldName = 'NAME'
      Size = 59
    end
    object tServicePRICE: TFloatField
      FieldName = 'PRICE'
    end
  end
  object spAddClient: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADD_CLIENT'
    Left = 56
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'IN_NAME'
        ParamType = ptInput
        Value = 'dsds'
      end
      item
        DataType = ftInteger
        Name = 'ID_ORGANIZATION'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'PASSPORT'
        ParamType = ptInput
        Value = 4435
      end>
  end
  object spDelCLient: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_CLIENT'
    Left = 128
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
        Value = 1
      end>
  end
  object dspClient: TDataSetProvider
    DataSet = tClient
    Left = 88
    Top = 208
  end
  object spAddBook: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADD_BOOK'
    Left = 184
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SUCCESS'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_ID_CLIENT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_ROOMS'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'IN_DATE_IN'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'IN_DATE_OUT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CORPUS_CLASS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_PEOPLE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'IN_DATE_BOOKED'
        ParamType = ptInput
      end>
  end
  object spDelBook: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_BOOK'
    Left = 248
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end>
  end
  object dspBook: TDataSetProvider
    DataSet = tBook
    Left = 216
    Top = 216
  end
  object spUpdRoom: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'UPDATE_ROOMS'
    Left = 352
    Top = 160
  end
  object dspRoom: TDataSetProvider
    DataSet = tRoom
    Left = 352
    Top = 216
  end
  object spAddComplain: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADD_COMPLAIN'
    Left = 456
    Top = 168
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IN_COMPLAIN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_ID_CLIENT'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'IN_DATE'
        ParamType = ptInput
      end>
  end
  object spDelComplain: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_COMPLAIN'
    Left = 520
    Top = 168
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end>
  end
  object dspComplain: TDataSetProvider
    DataSet = tComplain
    Left = 488
    Top = 224
  end
  object spAddOrg: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADD_ORGANIZATION'
    Left = 592
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'IN_NAME'
        ParamType = ptInput
        Value = #1056#1045#1040#1055#1056
      end
      item
        DataType = ftInteger
        Name = 'IN_DISCOUNT'
        ParamType = ptInput
        Value = '20'
      end>
  end
  object spDelOrg: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_ORGANIZATION'
    Left = 656
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end>
  end
  object dspOrganization: TDataSetProvider
    DataSet = tOrganization
    Left = 624
    Top = 232
  end
  object dspClientRoom: TDataSetProvider
    DataSet = tClientRoom
    Left = 96
    Top = 416
  end
  object dspCorpus: TDataSetProvider
    DataSet = tCorpus
    Left = 216
    Top = 416
  end
  object dspDebt: TDataSetProvider
    DataSet = tDebt
    Left = 344
    Top = 416
  end
  object spAddClientServ: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADD_SERV_CLIENT'
    Left = 464
    Top = 368
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID_CLIENT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_ID_SERVICE'
        ParamType = ptInput
      end>
  end
  object spDelClientServ: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_CLIENT_SERVICE'
    Left = 528
    Top = 368
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end>
  end
  object dspDebtService: TDataSetProvider
    DataSet = tDebtService
    Left = 496
    Top = 424
  end
  object spAddService: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADD_SERVICE'
    Left = 616
    Top = 376
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IN_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_PRICE'
        ParamType = ptInput
      end>
  end
  object spDelService: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETE_SERVICE'
    Left = 680
    Top = 376
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end>
  end
  object dspService: TDataSetProvider
    DataSet = tService
    Left = 648
    Top = 432
  end
  object IBDatabase1: TIBDatabase
    DatabaseName = 'C:\'#1055#1088#1086#1075#1088#1072#1084#1084#1085#1072#1103' '#1080#1085#1078#1077#1085#1077#1088#1080#1103'\MYDATABASE.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1251')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 112
    Top = 40
  end
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    AutoStopAction = saNone
    Left = 304
    Top = 48
  end
  object tSurvey: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'SURVEY'
    Left = 808
    Top = 120
  end
  object spAddSurvey: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADD_SURVEY'
    Left = 776
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_IDCLIENT'
        ParamType = ptInput
        Value = 11
      end
      item
        DataType = ftInteger
        Name = 'IN_SERV'
        ParamType = ptInput
        Value = 7
      end
      item
        DataType = ftInteger
        Name = 'IN_PRICE'
        ParamType = ptInput
        Value = 6
      end>
  end
  object spUpdSurvey: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'UPD_SURVEY'
    Left = 872
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_SERV'
        ParamType = ptInput
      end>
  end
  object spDelSurvey: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DEL_SURVEY'
    Left = 832
    Top = 248
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end>
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = tSurvey
    Left = 832
    Top = 304
  end
  object qOrgBook: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select ID_ORGANIZATION, count(*) from BOOK where BOOK.date_booke' +
        'd between :in_date_in and :in_date_end group by ID_ORGANIZATION ' +
        'HAVING count(*) >= :in_m_t')
    Left = 816
    Top = 376
    ParamData = <
      item
        DataType = ftDate
        Name = 'in_date_in'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'in_date_end'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'in_m_t'
        ParamType = ptInput
      end>
  end
  object dspQOrgBook: TDataSetProvider
    DataSet = qOrgBook
    Left = 816
    Top = 432
  end
end
