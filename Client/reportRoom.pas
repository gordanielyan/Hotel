unit reportRoom;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls;

type
  TfmReportRoom = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    DBGrid3: TDBGrid;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure DataSource3DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmReportRoom: TfmReportRoom;

implementation

{$R *.dfm}

uses mydm;

procedure TfmReportRoom.DataSource2DataChange(Sender: TObject; Field: TField);
begin
  dm.cdsRoom.Filtered := false;
  dm.cdsRoom.Filter := 'ID_CORPUS = ' + dm.cdsCorpusID.AsString;
  dm.cdsRoom.Filtered := True;
end;

procedure TfmReportRoom.DataSource3DataChange(Sender: TObject; Field: TField);
begin
  dm.cdsClientRoom.Filtered := false;
  dm.cdsClientRoom.Filter := 'ID_ROOM = '+dm.cdsRoomID.AsString;
  dm.cdsClientRoom.Filtered := true;
end;

procedure TfmReportRoom.FormActivate(Sender: TObject);
begin
  DataSource1.DataSet := dm.cdsClientRoom;
  DataSource2.DataSet := dm.cdsCorpus;
  DataSource3.DataSet := dm.cdsRoom;
end;

end.
