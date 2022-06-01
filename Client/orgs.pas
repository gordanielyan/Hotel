unit orgs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Menus;

type
  TfmOrgs = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N5Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmOrgs: TfmOrgs;

implementation

{$R *.dfm}

uses mydm, org, client, clients;

procedure TfmOrgs.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  dm.cdsClient.Filtered := False;
  dm.cdsClient.Filter := 'ID_ORGANIZATION = ' +
    IntToStr(dm.cdsOrgID_ORGANIZATION.Value);
  dm.cdsClient.Filtered := True;
  DataSource2.DataSet := dm.cdsClient;
end;

procedure TfmOrgs.FormActivate(Sender: TObject);
begin
  DataSource1.DataSet := dm.cdsOrg;
  DataSource2.DataSet := dm.cdsClient;
end;

procedure TfmOrgs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.cdsClient.Filtered := False;
  dm.cdsBook.Filtered := False;
end;

procedure TfmOrgs.N1Click(Sender: TObject);
begin
  fmOrg.leName.Text := '';
  fmOrg.seDiscount.Value := 0;
  fmOrg.ShowModal;
  if fmOrg.ModalResult = mrOk then
    try
      dm.DCOMConnection1.AppServer.smAddOrg(0, fmOrg.leName.Text,
        fmOrg.seDiscount.Value);
    except
      MessageDlg('Ошибка записи', mtError, [mbOk], 0);
    end;
  dm.cdsOrg.Refresh;
end;

procedure TfmOrgs.N2Click(Sender: TObject);
begin
  if MessageDlg('Удалить организацию: ' + dm.cdsOrgNAME.AsString + ' ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    if MessageDlg('Удалить всех клиентов ' + dm.cdsOrgNAME.AsString + ' ?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      dm.cdsClient.First;
      while not dm.cdsClient.Eof do
      begin
        dm.DCOMConnection1.AppServer.smDelClient(dm.cdsClientID.Value);
        dm.cdsClient.Next;
      end;
      dm.cdsClient.Refresh;
      dm.DCOMConnection1.AppServer.smDelOrg(dm.cdsOrgID_ORGANIZATION.Value);
      dm.cdsOrg.Refresh;
    end
    else
      dm.DCOMConnection1.AppServer.smDelOrg(dm.cdsOrgID_ORGANIZATION.Value);
    dm.cdsOrg.Refresh;
  end;
end;

procedure TfmOrgs.N4Click(Sender: TObject);
begin
  fmClient.LabeledEdit3.Text := dm.cdsOrgNAME.AsString;
  fmClient.LabeledEdit3.Tag := dm.cdsOrgID_ORGANIZATION.Value;
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

procedure TfmOrgs.N5Click(Sender: TObject);
begin
  fmClients.N2Click(Sender);
end;

procedure TfmOrgs.N6Click(Sender: TObject);
begin
  fmClients.N5Click(Sender);
end;

procedure TfmOrgs.N7Click(Sender: TObject);
begin
  fmOrg.leName.Text := dm.cdsOrgNAME.Value;
  fmOrg.seDiscount.Value := dm.cdsOrgDISCOUNT.Value;
  fmOrg.ShowModal;
  if fmOrg.ModalResult = mrOk then
    try
      dm.DCOMConnection1.AppServer.smAddOrg(dm.cdsOrgID_ORGANIZATION.Value,
        fmOrg.leName.Text, fmOrg.seDiscount.Value);
    except
      MessageDlg('Ошибка записи', mtError, [mbOk], 0);
    end;
  dm.cdsOrg.Refresh;
end;

procedure TfmOrgs.N8Click(Sender: TObject);
begin
Close;
end;

end.
