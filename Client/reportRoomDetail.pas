unit reportRoomDetail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfmReportRoomDetail = class(TForm)
    DBGrid1: TDBGrid;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    Button1: TButton;
    DataSource1: TDataSource;
    LabeledEdit3: TLabeledEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmReportRoomDetail: TfmReportRoomDetail;

implementation

{$R *.dfm}

uses mydm;

procedure TfmReportRoomDetail.Button1Click(Sender: TObject);
var d1, d2: TDate; ds1, ds2: string;
begin
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  FormatSettings.DateSeparator := '/';
//  d1 := DateTimePicker2.Date;
//  d1 := DateToStr(d1);
  dm.cdsClientRoom.Filtered := false;
  dm.cdsClientRoom.Filter :='DATE_IN >= '+(FloatToStr(DateTimePicker2.Date))+ ' and DATE_OUT <= '+ FloatToStr(DateTimePicker1.Date) +' and MANS = ' + LabeledEdit1.Text{+' and PRICE >= '+LabeledEdit2.Text+' and PRICE <= '+LabeledEdit3.Text};
  ShowMessage(dm.cdsClientRoom.filter);
  dm.cdsClientRoom.Filtered := true;
  dm.cdsClientRoom.Refresh;

end;

procedure TfmReportRoomDetail.FormCreate(Sender: TObject);
begin

  DataSource1.DataSet := dm.cdsClientRoom;
end;

end.
