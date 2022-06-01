unit Unit2;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, Project1_TLB, StdVcl, IBDatabase, DB, Provider, IBStoredProc,
  IBCustomDataSet, IBTable, IBQuery;

type
  TMyServer = class(TRemoteDataModule, IMyServer)
    tClient: TIBTable;
    tBook: TIBTable;
    tClientRoom: TIBTable;
    tComplain: TIBTable;
    tCorpus: TIBTable;
    tDebt: TIBTable;
    tDebtService: TIBTable;
    tOrganization: TIBTable;
    tRoom: TIBTable;
    tService: TIBTable;
    spAddClient: TIBStoredProc;
    spDelCLient: TIBStoredProc;
    dspClient: TDataSetProvider;
    spAddBook: TIBStoredProc;
    spDelBook: TIBStoredProc;
    dspBook: TDataSetProvider;
    spUpdRoom: TIBStoredProc;
    dspRoom: TDataSetProvider;
    spAddComplain: TIBStoredProc;
    spDelComplain: TIBStoredProc;
    dspComplain: TDataSetProvider;
    spAddOrg: TIBStoredProc;
    spDelOrg: TIBStoredProc;
    dspOrganization: TDataSetProvider;
    dspClientRoom: TDataSetProvider;
    dspCorpus: TDataSetProvider;
    dspDebt: TDataSetProvider;
    spAddClientServ: TIBStoredProc;
    spDelClientServ: TIBStoredProc;
    dspDebtService: TDataSetProvider;
    spAddService: TIBStoredProc;
    spDelService: TIBStoredProc;
    dspService: TDataSetProvider;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    tServiceID: TIntegerField;
    tServiceNAME: TIBStringField;
    tServicePRICE: TFloatField;
    tClientID: TIntegerField;
    tClientNAME: TIBStringField;
    tClientID_ORGANIZATION: TIntegerField;
    tClientDISCOUNT: TIntegerField;
    tClientPASSPORT: TIntegerField;
    tBookID: TIntegerField;
    tBookID_CLIENT: TIntegerField;
    tBookROOMS: TIntegerField;
    tBookDATE_IN: TDateField;
    tBookDATE_OUT: TDateField;
    tBookCORPUS_CLASS: TIntegerField;
    tBookPEOPLE: TIntegerField;
    tBookDATE_BOOKED: TDateField;
    tBookID_ORGANIZATION: TIntegerField;
    tRoomID: TIntegerField;
    tRoomID_BOOK: TIntegerField;
    tRoomID_CORPUS: TIntegerField;
    tRoomPERSONS: TIntegerField;
    tRoomFLOOR: TIntegerField;
    tRoomPRICE: TFloatField;
    tRoomMANS: TIntegerField;
    tRoomID_CLIENT: TIntegerField;
    tRoomCORPUS_CLASS: TIntegerField;
    tComplainID: TIntegerField;
    tComplainDATE: TDateField;
    tComplainCOMPLAIN: TIBStringField;
    tComplainID_CLIENT: TIntegerField;
    tOrganizationID_ORGANIZATION: TIntegerField;
    tOrganizationNAME: TIBStringField;
    tOrganizationDISCOUNT: TIntegerField;
    tClientRoomID_CLIENT: TIntegerField;
    tClientRoomID_ROOM: TIntegerField;
    tClientRoomID_BOOK: TIntegerField;
    tCorpusID: TIntegerField;
    tCorpusCLASS: TIntegerField;
    tCorpusONE_MAN: TIntegerField;
    tCorpusTWO_MAN: TIntegerField;
    tCorpusTHREE_MAN: TIntegerField;
    tCorpusFLOORS: TIntegerField;
    tDebtID_CLIENT: TIntegerField;
    tDebtSUMM: TFloatField;
    tDebtServiceID: TSmallintField;
    tDebtServiceID_CLIENT: TIntegerField;
    tDebtServiceID_SERVICE: TIntegerField;
    tDebtServicePRICE: TFloatField;
    tDebtServiceSERVNAME: TIBStringField;
    tBookPLACED: TIntegerField;
    tSurvey: TIBTable;
    spAddSurvey: TIBStoredProc;
    spUpdSurvey: TIBStoredProc;
    spDelSurvey: TIBStoredProc;
    DataSetProvider1: TDataSetProvider;
    qOrgBook: TIBQuery;
    dspQOrgBook: TDataSetProvider;
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
    procedure smAddClient(id: Integer; const name: WideString; id_organization,
      passport: Integer); safecall;
    procedure smDelClient(id: Integer); safecall;
    procedure smAddBook(id, id_client, rooms: Integer; date_in: TDateTime;
      date_out, corpus_class, people: Integer; date_booked: TDateTime;
      var success: OleVariant); safecall;
    procedure smAddCLientService(id_client, id_service: Integer); safecall;
    procedure smAddComplain(id: Integer; const complain: WideString;
      id_client: Integer; date: TDateTime); safecall;
    procedure smAddOrg(id: Integer; const name: WideString; discount: Integer);
      safecall;
    procedure smAddService(id: Integer; const name: WideString; price: Double);
      safecall;
    procedure smDelBook(id: Integer); safecall;
    procedure smDelCLientService(id: Integer); safecall;
    procedure smDelComplain(id: Integer); safecall;
    procedure smDelOrg(id: Integer); safecall;
    procedure smDelService(id: Integer); safecall;
    procedure smUpdRoom; safecall;
    procedure smAddSurvey(idclient, serv, price: Integer); safecall;
    procedure smDelSurvey(id: Integer); safecall;
    procedure smUpdSURVEY(id, price, serv: Integer); safecall;
    procedure smQOrgBook(in_date_in, in_date_end: TDateTime; in_m_t: Integer);
      safecall;
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

class procedure TMyServer.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
begin
  if Register then
  begin
    inherited UpdateRegistry(Register, ClassID, ProgID);
    EnableSocketTransport(ClassID);
    EnableWebTransport(ClassID);
  end else
  begin
    DisableSocketTransport(ClassID);
    DisableWebTransport(ClassID);
    inherited UpdateRegistry(Register, ClassID, ProgID);
  end;
end;

procedure TMyServer.smAddClient(id: Integer; const name: WideString;
  id_organization, passport: Integer);
begin
  if spAddClient.Transaction.InTransaction then
    spAddClient.Transaction.Commit;

  spAddClient.Params[0].Value := id;
  spAddClient.Params[1].Value := name;
  spAddClient.Params[2].Value := id_organization;
  spAddClient.Params[3].Value := passport;
  spAddClient.ExecProc;
  if spAddClient.Transaction.InTransaction then
    spAddClient.Transaction.Commit;
end;

procedure TMyServer.smDelClient(id: Integer);
begin
     if spDelCLient.Transaction.InTransaction then
        spDelCLient.Transaction.Commit;
     spDelCLient.Params[0].Value := id;
     spDelCLient.ExecProc;
     if spDelCLient.Transaction.InTransaction then
     spDelCLient.Transaction.Commit;
end;

procedure TMyServer.smAddBook(id, id_client, rooms: Integer;
  date_in: TDateTime; date_out, corpus_class, people: Integer;
  date_booked: TDateTime; var success: OleVariant);
begin
      if spAddBook.Transaction.InTransaction then
    spAddBook.Transaction.Commit;

  spAddBook.Params[1].Value := id;
  spAddBook.Params[2].Value := id_client;
  spAddBook.Params[3].Value := rooms;
  spAddBook.Params[4].Value := date_in;
  spAddBook.Params[5].Value := date_out;
  spAddBook.Params[6].Value := corpus_class;
  spAddBook.Params[7].Value := people;
  spAddBook.Params[8].Value := date_booked;
  spAddBook.ExecProc;
  success := spAddBook.Params[0].Value;
  if spAddClient.Transaction.InTransaction then
    spAddClient.Transaction.Commit;
end;

procedure TMyServer.smAddCLientService(id_client, id_service: Integer);
begin
     if spAddClientServ.Transaction.InTransaction then
    spAddClientServ.Transaction.Commit;

  spAddClientServ.Params[0].Value := id_client;
  spAddClientServ.Params[1].Value := id_service;
  spAddClientServ.ExecProc;
  if spAddClientServ.Transaction.InTransaction then
    spAddClientServ.Transaction.Commit;
end;

procedure TMyServer.smAddComplain(id: Integer; const complain: WideString;
  id_client: Integer; date: TDateTime);
begin
    if spAddComplain.Transaction.InTransaction then
    spAddComplain.Transaction.Commit;
  spAddComplain.Params[0].Value := id;
  spAddComplain.Params[1].Value := complain;
  spAddComplain.Params[2].Value := id_client;
  spAddComplain.Params[3].Value := date;
  spAddComplain.ExecProc;
  if spAddComplain.Transaction.InTransaction then
    spAddComplain.Transaction.Commit;
end;

procedure TMyServer.smAddOrg(id: Integer; const name: WideString;
  discount: Integer);
begin
     if spAddOrg.Transaction.InTransaction then
    spAddOrg.Transaction.Commit;
  spAddOrg.Params[0].Value := id;
  spAddOrg.Params[1].Value := name;
  spAddOrg.Params[2].Value := discount;
  spAddOrg.ExecProc;
  if spAddOrg.Transaction.InTransaction then
    spAddOrg.Transaction.Commit;
end;

procedure TMyServer.smAddService(id: Integer; const name: WideString;
  price: Double);
begin
    if spAddService.Transaction.InTransaction then
    spAddService.Transaction.Commit;
  spAddService.Params[0].Value := id;
  spAddService.Params[1].Value := name;
  spAddService.Params[2].Value := price;
  spAddService.ExecProc;
  if spAddService.Transaction.InTransaction then
    spAddService.Transaction.Commit;
end;

procedure TMyServer.smDelBook(id: Integer);
begin
     if spDelBook.Transaction.InTransaction then
        spDelBook.Transaction.Commit;
     spDelBook.Params[0].Value := id;
     spDelBook.ExecProc;
     if spDelBook.Transaction.InTransaction then
     spDelBook.Transaction.Commit;
end;

procedure TMyServer.smDelCLientService(id: Integer);
begin
      if spDelClientServ.Transaction.InTransaction then
        spDelClientServ.Transaction.Commit;
     spDelClientServ.Params[0].Value := id;
     spDelClientServ.ExecProc;
     if spDelClientServ.Transaction.InTransaction then
     spDelClientServ.Transaction.Commit;
end;

procedure TMyServer.smDelComplain(id: Integer);
begin
        if spDelComplain.Transaction.InTransaction then
        spDelComplain.Transaction.Commit;
     spDelComplain.Params[0].Value := id;
     spDelComplain.ExecProc;
     if spDelComplain.Transaction.InTransaction then
     spDelComplain.Transaction.Commit;
end;

procedure TMyServer.smDelOrg(id: Integer);
begin
      if spDelOrg.Transaction.InTransaction then
        spDelOrg.Transaction.Commit;
     spDelOrg.Params[0].Value := id;
     spDelOrg.ExecProc;
     if spDelOrg.Transaction.InTransaction then
     spDelOrg.Transaction.Commit;
end;

procedure TMyServer.smDelService(id: Integer);
begin
       if spDelService.Transaction.InTransaction then
        spDelService.Transaction.Commit;
     spDelService.Params[0].Value := id;
     spDelService.ExecProc;
     if spDelService.Transaction.InTransaction then
     spDelService.Transaction.Commit;
end;

procedure TMyServer.smUpdRoom;
begin
      if spUpdRoom.Transaction.InTransaction then
        spUpdRoom.Transaction.Commit;

     spUpdRoom.ExecProc;
     if spUpdRoom.Transaction.InTransaction then
     spUpdRoom.Transaction.Commit;
end;

procedure TMyServer.smAddSurvey(idclient, serv, price: Integer);
begin
    if spAddSurvey.Transaction.InTransaction then
        spAddSurvey.Transaction.Commit;
      spAddSurvey.Params[0].Value:=idclient;
      spAddSurvey.Params[1].Value:=price;
      spAddSurvey.Params[2].Value:=serv;
     spAddSurvey.ExecProc;
     if spAddSurvey.Transaction.InTransaction then
     spAddSurvey.Transaction.Commit;
end;

procedure TMyServer.smDelSurvey(id: Integer);
begin
   if spDelSurvey.Transaction.InTransaction then
        spDelSurvey.Transaction.Commit;
      spDelSurvey.Params[0].Value:=id;
     spDelSurvey.ExecProc;
     if spDelSurvey.Transaction.InTransaction then
     spDelSurvey.Transaction.Commit;
end;

procedure TMyServer.smUpdSURVEY(id, price, serv: Integer);
begin
    if spUpdSurvey.Transaction.InTransaction then
        spUpdSurvey.Transaction.Commit;
      spUpdSurvey.Params[0].Value:=id;
      spUpdSurvey.Params[1].Value:=price;
      spUpdSurvey.Params[2].Value:=serv;
     spUpdSurvey.ExecProc;
     if spUpdSurvey.Transaction.InTransaction then
     spUpdSurvey.Transaction.Commit;
end;

procedure TMyServer.smQOrgBook(in_date_in, in_date_end: TDateTime;
  in_m_t: Integer);
begin
    qOrgBook.Close;
    qOrgBook.Params[0].Value := in_date_in;
    qOrgBook.Params[1].Value := in_date_end;
    qOrgBook.Params[2].Value := in_m_t;
    qOrgBook.Open;
end;

initialization
  TComponentFactory.Create(ComServer, TMyServer,
    Class_MyServer, ciMultiInstance, tmApartment);
end.
