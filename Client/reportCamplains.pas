unit reportCamplains;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Menus;

type
  TfmReportComplain = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmReportComplain: TfmReportComplain;

implementation

{$R *.dfm}

uses mydm;

procedure TfmReportComplain.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  dm.cdsComplain.Filtered := False;
  dm.cdsComplain.Filter := 'ID_CLIENT = ' + dm.cdsClientID.AsString;
  dm.cdsComplain.Filtered := True;
  DataSource2.DataSet := dm.cdsComplain;
end;

procedure TfmReportComplain.FormActivate(Sender: TObject);
var inner :string;
begin
  dm.cdsComplain.First;
  inner := dm.cdsComplainID_CLIENT.AsString;
  dm.cdsComplain.Next;
  while not dm.cdsComplain.Eof do
    begin
      inner := inner + ', ' + dm.cdsComplainID_CLIENT.AsString;
      dm.cdsComplain.Next;
    end;
  dm.cdsComplain.Filtered := false;
  dm.cdsClient.Filtered := False;
  dm.cdsClient.Filter := 'ID in ('+ inner+')';
  dm.cdsClient.Filtered := True;
  DataSource1.DataSet := dm.cdsClient;
end;

end.
