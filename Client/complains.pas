unit complains;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Menus;

type
  TfmComplains = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmComplains: TfmComplains;

implementation

{$R *.dfm}

uses mydm, complain;

procedure TfmComplains.FormCreate(Sender: TObject);
begin
  DataSource1.DataSet := dm.cdsComplain
end;

procedure TfmComplains.N1Click(Sender: TObject);
begin
  dm.DCOMConnection1.AppServer.smDelComplain(dm.cdsComplainID.Value);
  dm.cdsComplain.Refresh;
end;

procedure TfmComplains.N2Click(Sender: TObject);
begin
  fmComplain.DateTimePicker1.Date := dm.cdsComplainDATE.Value;
  fmComplain.Memo1.Text := dm.cdsComplainCOMPLAIN.Value;
  fmComplain.ShowModal;
  if fmComplain.ModalResult = mrOk then
    dm.DCOMConnection1.AppServer.smAddComplain(
      dm.cdsComplainID.Value,
      fmComplain.Memo1.Text,
      dm.cdsClientID.Value,
      fmComplain.DateTimePicker1.Date
    );
  dm.cdsComplain.Refresh;
end;

end.
