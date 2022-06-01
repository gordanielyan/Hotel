unit surveys;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfmSurveys = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSurveys: TfmSurveys;

implementation

{$R *.dfm}

uses mydm;

procedure TfmSurveys.FormCreate(Sender: TObject);
begin
  DataSource1.DataSet := dm.cdsSurvey
end;

end.
