unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, mydm, clients, Menus, Vcl.ExtCtrls, org, orgs,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.Buttons, System.Diagnostics;

type
  Trooms = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    N4: TMenuItem;
    Splitter1: TSplitter;
    BitBtn1: TBitBtn;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    Button1: TButton;
    procedure FormActivate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rooms: Trooms;

implementation

{$R *.dfm}

uses services, books, reportOrgs, reportCamplains, reportRoomDetail,
  reportFreeRoomDetail, clientDetail, reportRoom;

procedure Trooms.BitBtn1Click(Sender: TObject);
begin
  dm.DCOMConnection1.AppServer.smUpdRoom;
  dm.cdsRoom.Refresh;
  dm.cdsBook.Refresh;
end;

procedure Trooms.Button1Click(Sender: TObject);
var i:integer; s:string;   sw: TStopwatch;
begin
  sw := TStopwatch.StartNew;
  sw.Start;
  for i := 1 to 10 do
    dm.DCOMConnection1.AppServer.smAddCLient(0, 'тест', 0, 1);
  sw.Stop;
  s :='10 ' + sw.Elapsed.TotalMilliseconds.ToString;

  sw := TStopwatch.StartNew;
  sw.Start;
  for i := 1 to 50 do
    dm.DCOMConnection1.AppServer.smAddCLient(0, 'тест', 0, 1);
  sw.Stop;
  s :=s + ' 50 ' + sw.Elapsed.TotalMilliseconds.ToString;

  sw := TStopwatch.StartNew;
  sw.Start;
  for i := 1 to 100 do
    dm.DCOMConnection1.AppServer.smAddCLient(0, 'тест', 0, 1);
  sw.Stop;
  s :=s + ' 100 ' + sw.Elapsed.TotalMilliseconds.ToString;

  sw := TStopwatch.StartNew;
  sw.Start;
  for i := 1 to 500 do
    dm.DCOMConnection1.AppServer.smAddCLient(0, 'тест', 0, 1);
  sw.Stop;
  s :=s + ' 500 ' + sw.Elapsed.TotalMilliseconds.ToString;

  sw := TStopwatch.StartNew;
  sw.Start;
  for i := 1 to 1000 do
    dm.DCOMConnection1.AppServer.smAddCLient(0, 'тест', 0, 1);
  sw.Stop;
  s :=s + ' 1000 ' + sw.Elapsed.TotalMilliseconds.ToString;

  ShowMessage(s);
end;

procedure Trooms.DataSource2DataChange(Sender: TObject; Field: TField);
begin
  dm.cdsRoom.Filtered := False;
  dm.cdsRoom.Filter := 'ID_CORPUS = ' + IntToStr(dm.cdsCorpusID.Value);
  dm.cdsRoom.Filtered := True;
  // DataSource1.DataSet := dm.cdsRoom;
end;

procedure Trooms.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if dm.cdsRoom.FieldByName('ID_BOOK').AsString <> '' then
    DBGrid1.Canvas.Brush.Color := clWebPink
  else
    DBGrid1.Canvas.Brush.Color := clWebLightGreen;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Trooms.FormActivate(Sender: TObject);
begin
  DataSource2.DataSet := dm.cdsCorpus;
  DataSource1.DataSet := dm.cdsRoom;
end;

procedure Trooms.N10Click(Sender: TObject);
begin
  fmReportFreeRoom.showModal;
end;

procedure Trooms.N11Click(Sender: TObject);
begin
  // dm.cdsComplainID_CLIENT
  fmReportComplain.showModal;
  dm.cdsClient.Filtered := False;
  dm.cdsComplain.Filtered := False;
end;

procedure Trooms.N12Click(Sender: TObject);
begin
  fmClientDetail.showModal;
end;

procedure Trooms.N13Click(Sender: TObject);
begin
  fmReportRoom.ShowModal;
end;

procedure Trooms.N14Click(Sender: TObject);
begin
  dm.cdsBook.Filtered := False;
  dm.cdsBook.Filter := 'PLACED = 1 and ID_ORGANIZATION <> 0';
  dm.cdsBook.Filtered := True;
  dm.cdsRoom.Filtered := False;
  ShowMessage(FloatToStr(dm.cdsBook.RecordCount / dm.cdsRoom.RecordCount *
    100) + '%');
  dm.cdsRoom.Filtered := True;
end;

procedure Trooms.N1Click(Sender: TObject);
begin
  fmClients.showModal;
end;

procedure Trooms.N2Click(Sender: TObject);
begin
  fmOrgs.showModal;
end;

procedure Trooms.N3Click(Sender: TObject);
begin
  fmBooks.showModal;
end;

procedure Trooms.N4Click(Sender: TObject);
begin
  fmServices.showModal;
end;

procedure Trooms.N5Click(Sender: TObject);
begin
  Close;
end;

procedure Trooms.N6Click(Sender: TObject);
begin
  fmReportOrgBook.showModal;
end;

procedure Trooms.N8Click(Sender: TObject);
begin
  dm.cdsClientRoom.Refresh;
  fmReportRoomDetail.showModal;
end;

procedure Trooms.N9Click(Sender: TObject);
begin
  dm.cdsRoom.Filtered := False;
  dm.cdsRoom.Filter := 'ID_BOOK is null';
  dm.cdsRoom.Filtered := True;
  ShowMessage('Свободных номеров: ' + dm.cdsRoomAgg.AsString);
  dm.cdsRoom.Filtered := False;
  DataSource2DataChange(nil, nil);
end;

end.
