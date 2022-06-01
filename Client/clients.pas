unit clients;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, mydm, Menus, client, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.WinXCtrls;

type
  TfmClients = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    DBGrid3: TDBGrid;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    SearchBox1: TSearchBox;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid4: TDBGrid;
    Splitter3: TSplitter;
    DataSource4: TDataSource;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N5Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure SearchBox1InvokeSearch(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmClients: TfmClients;

implementation

{$R *.dfm}

uses services, complain, complains, surveys, survey;

procedure TfmClients.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  N2.Enabled := dm.cdsClient.RecordCount > 0;
  if not(dm.cdsClientID.IsNull) then
  begin
    dm.cdsDebtServ.Filter := 'ID_CLIENT = ' + dm.cdsClientID.AsString;
    dm.cdsDebt.Filter := 'ID_CLIENT = ' + dm.cdsClientID.AsString;
    dm.cdsBook.Filter := 'ID_CLIENT = ' + dm.cdsClientID.AsString;
  end
  else
  begin
    dm.cdsDebtServ.Filter := 'ID_CLIENT is NULL';
    dm.cdsDebt.Filter := 'ID_CLIENT is NULL';
    dm.cdsBook.Filter := 'ID_CLIENT is NULL';
  end;
  dm.cdsDebtServ.Filtered := True;
  DataSource2.DataSet := dm.cdsDebtServ;
  dm.cdsDebt.Filtered := True;
  DataSource3.DataSet := dm.cdsDebt;
  dm.cdsBook.Filtered := True;
  DataSource4.DataSet := dm.cdsBook;
end;

procedure TfmClients.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if dm.cdsClient.FieldByName('ID_ORGANIZATION').Value <> 0 then
    begin
      if dm.cdsClient.FieldByName('DISCOUNT').Value >= 30 then
        DBGrid1.Canvas.Brush.Color := clWebDarkGoldenRod;
      if ((dm.cdsClient.FieldByName('DISCOUNT').Value >= 20) and ((dm.cdsClient.FieldByName('DISCOUNT').Value < 30))) then
        DBGrid1.Canvas.Brush.Color := clWebGoldenRod;
      if ((dm.cdsClient.FieldByName('DISCOUNT').Value >= 10) and ((dm.cdsClient.FieldByName('DISCOUNT').Value < 20))) then
        DBGrid1.Canvas.Brush.Color := clWebGold;
      if ((dm.cdsClient.FieldByName('DISCOUNT').Value >= 0) and ((dm.cdsClient.FieldByName('DISCOUNT').Value < 10))) then
        DBGrid1.Canvas.Brush.Color := clWebYellow;
    end;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfmClients.FormActivate(Sender: TObject);
begin
DataSource1.DataSet := dm.cdsClient;
dm.cdsRoom.Filtered := false;
dm.cdsClient.Refresh;
end;

procedure TfmClients.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.cdsDebt.Filtered := False;
  dm.cdsDebtServ.Filtered := False;
  dm.cdsBook.Filtered := False;
end;

procedure TfmClients.N10Click(Sender: TObject);
begin
  fmComplains.ShowModal;
end;

procedure TfmClients.N12Click(Sender: TObject);
begin
  fmSurvey.RadioGroup1.ItemIndex := -1;
  fmSurvey.RadioGroup3.ItemIndex := -1;
  fmSurvey.ShowModal;
  if fmSurvey.ModalResult = mrYes then
    dm.DCOMConnection1.AppServer.smAddSurvey(
      dm.cdsClientID.Value,
      fmSurvey.RadioGroup3.ItemIndex+1,
      fmSurvey.RadioGroup1.ItemIndex+1
    );
  dm.cdsSurvey.refresh;
end;

procedure TfmClients.N13Click(Sender: TObject);
begin
  fmSurveys.showmodal;
end;

procedure TfmClients.N1Click(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to fmClient.ComponentCount - 1 do
    if fmClient.Components[i] is TLabeledEdit then
      (fmClient.Components[i] as TLabeledEdit).Text := '';

  fmClient.ShowModal;
  if fmClient.ModalResult = mrOk then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddClient(0, fmClient.LabeledEdit1.Text,
        fmClient.LabeledEdit3.Tag, StrToInt(fmClient.LabeledEdit2.Text));
    except
      MessageDlg('Ошибка записи', mtError, [mbOk], 0)
    end;
    dm.cdsClient.Refresh;
  end;

end;

procedure TfmClients.N2Click(Sender: TObject);
var
  stop: boolean;
begin
  if MessageDlg('Удалить клиента: ' + dm.cdsClientNAME.AsString + ' ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    if dm.cdsDebtServ.RecordCount > 0 then
    begin
      if MessageDlg('Внимание удалятся услуги продолжить? ', mtConfirmation,
        [mbYes, mbNo], 0) = mrYes then
      begin
        dm.cdsDebtServ.First;
        while not dm.cdsDebtServ.Eof do
        begin
          dm.DCOMConnection1.AppServer.smDelCLientService
            (dm.cdsDebtServID.Value);
          dm.cdsDebtServ.Next;
        end;
        stop := False;
      end
      else
        stop := True;
    end;
    if not stop then
    begin
      dm.DCOMConnection1.AppServer.smDelClient(dm.cdsClientID.Value);
      dm.cdsClient.Refresh;
    end;
  end;
end;

procedure TfmClients.N3Click(Sender: TObject);
begin
  Close;
end;

procedure TfmClients.N4Click(Sender: TObject);
var
  cid, sid: integer;
begin
  // fmServices := TfmServices.Create(Application);
  fmServices.ShowModal;
  // cid :=  dm.cdsClientID.Value;
  // sid := dm.cdsServID.Value;
  // fmServices.Release;
  dm.DCOMConnection1.AppServer.smAddCLientService(dm.cdsClientID.Value,
    dm.cdsServID.Value);
  dm.cdsDebtServ.Refresh;
  dm.cdsDebt.Refresh;
end;

procedure TfmClients.N5Click(Sender: TObject);
begin
//  dm.cdsClient.Filtered := False;
  fmClient.LabeledEdit1.Text := dm.cdsClientNAME.Value;
  fmClient.LabeledEdit2.Text := dm.cdsClientPASSPORT.AsString;
  fmClient.LabeledEdit3.Tag := dm.cdsClientID_ORGANIZATION.Value;
  dm.cdsOrg.Filtered := False;
  dm.cdsOrg.Filter := 'ID_ORGANIZATION=' + dm.cdsClientID_ORGANIZATION.AsString;
  dm.cdsOrg.Filtered := True;
  fmClient.LabeledEdit3.Text := dm.cdsOrgNAME.Value;
  dm.cdsOrg.Filtered := False;
  fmClient.ShowModal;
  if fmClient.ModalResult = mrOk then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddClient(dm.cdsClientID.Value,
        fmClient.LabeledEdit1.Text, fmClient.LabeledEdit3.Tag,
        StrToInt(fmClient.LabeledEdit2.Text));
    except
      MessageDlg('Ошибка записи', mtError, [mbOk], 0)
    end;
    dm.cdsClient.Refresh;
  end;
end;

procedure TfmClients.N7Click(Sender: TObject);
begin
  // dm.cdsServ.Filter := 'ID = ' + dm.cdsDebtServID.AsString;
  // dm.cdsServ.Filtered := True;
  if MessageDlg('Удалить услугу: ' + dm.cdsDebtServSERVNAME.AsString +
    ' оказанную ' + dm.cdsClientNAME.AsString + ' ?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
  begin
    dm.DCOMConnection1.AppServer.smDelCLientService(dm.cdsDebtServID.Value);
  end;
  dm.cdsServ.Filtered := False;
  dm.cdsDebtServ.Refresh;
end;

procedure TfmClients.N9Click(Sender: TObject);
begin
  fmComplain.DateTimePicker1.Date := Now;
  fmComplain.Memo1.Text := '';
  fmComplain.ShowModal;
  if fmComplain.ModalResult = mrOk then
    dm.DCOMConnection1.AppServer.smAddComplain(
      0,
      fmComplain.Memo1.Text,
      dm.cdsClientID.Value,
      fmComplain.DateTimePicker1.Date
    );
  dm.cdsComplain.Refresh;
end;

procedure TfmClients.SearchBox1InvokeSearch(Sender: TObject);
begin
  dm.cdsClient.Filtered := False;
  dm.cdsClient.Filter := 'lower(NAME) LIKE ' + QuotedStr('%' + String(SearchBox1.Text).ToLower + '%');
//  ShowMessage(dm.cdsClient.Filter);
  dm.cdsClient.Filtered := True;
end;

end.
