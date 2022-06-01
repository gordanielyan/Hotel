unit services;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Menus;

type
  TfmServices = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmServices: TfmServices;

implementation

{$R *.dfm}

uses mydm, service;

procedure TfmServices.FormActivate(Sender: TObject);
begin
  DataSource1.DataSet := dm.cdsServ;
end;

procedure TfmServices.N1Click(Sender: TObject);
begin
  fmService.LabeledEdit1.Text := '';
  fmService.LabeledEdit2.Text := '';
  fmService.ShowModal;
  if fmService.ModalResult = mrOk then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddService(0, fmService.LabeledEdit1.Text,
        StrToFloat(fmService.LabeledEdit2.Text));
    except
      MessageDlg('Ошибка записи', mtError, [mbOk], 0)
    end;
    dm.cdsServ.Refresh;
  end;
end;

procedure TfmServices.N2Click(Sender: TObject);
begin
  if MessageDlg('Удалить услугу: ' + dm.cdsServNAME.AsString + ' ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dm.DCOMConnection1.AppServer.smDelService(dm.cdsServID.Value);
    dm.cdsServ.Refresh;
  end;
end;

procedure TfmServices.N3Click(Sender: TObject);
begin
  fmService.LabeledEdit1.Text := dm.cdsServNAME.AsString;
  fmService.LabeledEdit2.Text := dm.cdsServPRICE.AsString;
  fmService.ShowModal;
  if fmService.ModalResult = mrOk then
  begin
    try
      dm.DCOMConnection1.AppServer.smAddService(dm.cdsServID.Value,
        fmService.LabeledEdit1.Text, StrToFloat(fmService.LabeledEdit2.Text));
    except
      MessageDlg('Ошибка записи', mtError, [mbOk], 0)
    end;
    dm.cdsServ.Refresh;
  end;
end;

procedure TfmServices.N4Click(Sender: TObject);
begin
Close;
end;

end.
