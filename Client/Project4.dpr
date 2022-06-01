program Project4;

uses
  Vcl.Forms,
  book in 'book.pas' {fmBook},
  bookOrg in 'bookOrg.pas' {fmBookOrg},
  books in 'books.pas' {fmBooks},
  client in 'client.pas' {fmClient},
  MainForm in 'MainForm.pas' {rooms},
  mydm in 'mydm.pas' {dm: TDataModule},
  org in 'org.pas' {fmOrg},
  orgs in 'orgs.pas' {fmOrgs},
  service in 'service.pas' {fmService},
  services in 'services.pas' {fmServices},
  complain in 'complain.pas' {fmComplain},
  clients in 'clients.pas' {fmClients},
  complains in 'complains.pas' {fmComplains},
  survey in 'survey.pas' {fmSurvey},
  surveys in 'surveys.pas' {fmSurveys},
  reportOrgs in 'reportOrgs.pas' {fmReportOrgBook},
  reportCamplains in 'reportCamplains.pas' {fmReportComplain},
  reportRoomDetail in 'reportRoomDetail.pas' {fmReportRoomDetail},
  reportFreeRoomDetail in 'reportFreeRoomDetail.pas' {fmReportFreeRoom},
  clientDetail in 'clientDetail.pas' {fmClientDetail},
  reportRoom in 'reportRoom.pas' {fmReportRoom};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Trooms, rooms);
  Application.CreateForm(TfmBook, fmBook);
  Application.CreateForm(TfmBookOrg, fmBookOrg);
  Application.CreateForm(TfmBooks, fmBooks);
  Application.CreateForm(TfmClient, fmClient);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfmOrg, fmOrg);
  Application.CreateForm(TfmOrgs, fmOrgs);
  Application.CreateForm(TfmService, fmService);
  Application.CreateForm(TfmServices, fmServices);
  Application.CreateForm(TfmComplain, fmComplain);
  Application.CreateForm(TfmClients, fmClients);
  Application.CreateForm(TfmComplains, fmComplains);
  Application.CreateForm(TfmSurvey, fmSurvey);
  Application.CreateForm(TfmSurveys, fmSurveys);
  Application.CreateForm(TfmReportOrgBook, fmReportOrgBook);
  Application.CreateForm(TfmReportComplain, fmReportComplain);
  Application.CreateForm(TfmReportRoomDetail, fmReportRoomDetail);
  Application.CreateForm(TfmReportFreeRoom, fmReportFreeRoom);
  Application.CreateForm(TfmClientDetail, fmClientDetail);
  Application.CreateForm(TfmReportRoom, fmReportRoom);
  Application.Run;
end.
