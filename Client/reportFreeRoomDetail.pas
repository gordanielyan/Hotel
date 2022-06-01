unit reportFreeRoomDetail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfmReportFreeRoom = class(TForm)
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Label1: TLabel;
    procedure RadioGroup2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmReportFreeRoom: TfmReportFreeRoom;

implementation

{$R *.dfm}

uses mydm;

procedure TfmReportFreeRoom.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dm.cdsRoom.Filtered := false;
end;

procedure TfmReportFreeRoom.RadioGroup2Click(Sender: TObject);
begin
  if (RadioGroup1.ItemIndex >= 0) and (RadioGroup2.ItemIndex >= 0) then
  begin
    dm.cdsRoom.Filtered := false;
    dm.cdsRoom.Filter := 'ID_BOOK is null and MANS = ' +
      IntToStr(RadioGroup2.ItemIndex + 1) + ' and ID_CORPUS = ' +
      IntToStr(RadioGroup1.ItemIndex + 1);
    dm.cdsRoom.Filtered := true;
    Label1.Caption := 'Свободны номеров: ' + IntToStr(dm.cdsRoom.RecordCount);
  end;
end;

end.
