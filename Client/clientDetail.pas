unit clientDetail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfmClientDetail = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure FormActivate(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmClientDetail: TfmClientDetail;

implementation

{$R *.dfm}

uses mydm;

procedure TfmClientDetail.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  dm.cdsRoom.Filtered := false;
  dm.cdsRoom.Filter := 'ID_BOOK is not null and ID_CORPUS = ' +
    dm.cdsCorpusID.AsString;
  dm.cdsRoom.Filtered := True;
end;

procedure TfmClientDetail.DataSource2DataChange(Sender: TObject; Field: TField);
var idClient: string;
begin
  idClient := dm.cdsRoomID_CLIENT.AsString;
  if idClient = '' then
  begin
    DBGrid3.Visible := false;
    DBGrid4.Visible := false;
    DBGrid5.Visible := false;
    exit;
  end
  DBGrid3.Visible := true;
  DBGrid4.Visible := true;
  DBGrid5.Visible := true;
  dm.cdsDebt.Filtered := False;
  dm.cdsDebtServ.Filtered := False;
  dm.cdsComplain.Filtered := False;
  dm.cdsDebt.Filter := 'ID_CLIENT = ' + idClient;
  dm.cdsDebtServ.Filter := 'ID_CLIENT = ' + idClient;
  dm.cdsComplain.Filter := 'ID_CLIENT = ' + idClient;
  dm.cdsDebt.Filtered := True;
  dm.cdsDebtServ.Filtered := True;
  dm.cdsComplain.Filtered := True;
//  ShowMessage(dm.cdsDebtServ.Filter);
  dm.cdsClient.Filtered := False;
  dm.cdsClient.Filter := 'ID = ' + idClient;
  dm.cdsClient.Filtered := True;
  Label1.Caption := dm.cdsClientNAME.AsString;
  dm.cdsClient.Filtered := False;
end;

procedure TfmClientDetail.FormActivate(Sender: TObject);
begin
  DataSource1.DataSet := dm.cdsCorpus;
  DataSource2.DataSet := dm.cdsRoom;
  DataSource3.DataSet := dm.cdsDebt;
  DataSource4.DataSet := dm.cdsDebtServ;
  DataSource5.DataSet := dm.cdsComplain;
  // dm.cdsRoom.Filtered := false;
  // dm.cdsRoom.Filter := 'ID_BOOK is not null';
  // dm.cdsRoom.Filtered := True;
end;

procedure TfmClientDetail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.cdsCorpus.Filtered := false;
  dm.cdsRoom.Filtered := false;
  dm.cdsDebt.Filtered := false;
  dm.cdsDebtServ.Filtered := false;
  dm.cdsComplain.Filtered := false;
end;

end.
