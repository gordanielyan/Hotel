unit reportOrgs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TfmReportOrgBook = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Edit1: TEdit;
    Button1: TButton;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmReportOrgBook: TfmReportOrgBook;

implementation

{$R *.dfm}

uses mydm;

procedure TfmReportOrgBook.Button1Click(Sender: TObject);
begin
  dm.DCOMConnection1.AppServer.smQOrgBook(DateTimePicker1.Date, DateTimePicker2.Date, StrToInt(Edit1.Text));
  dm.cdsQOrgBook.Refresh;
end;

procedure TfmReportOrgBook.FormActivate(Sender: TObject);
begin
  DataSource1.DataSet := dm.cdsQOrgBook
end;

end.
