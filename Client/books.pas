unit books;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Menus, Vcl.WinXCtrls, Vcl.ComCtrls;

type
  TfmBooks = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    ProgressBar1: TProgressBar;
    N6: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBooks: TfmBooks;

implementation

{$R *.dfm}

uses mydm, book, bookOrg, Unit4;

procedure TfmBooks.FormActivate(Sender: TObject);
begin
  dm.cdsBook.Filtered:=false;
  DataSource1.DataSet := dm.cdsBook;
end;

procedure TfmBooks.N1Click(Sender: TObject);
var
  success: OleVariant;
begin
  fmBook.edtClient.Text := '';
  fmBook.DateTimePicker1.Date := Now;
  fmBook.DateTimePicker2.Date := Now;
  fmBook.DateTimePicker3.Date := Now;
  fmBook.showModal;
  success := 3;
  if fmBook.ModalResult = mrOk then
  begin
    dm.DCOMConnection1.AppServer.smAddBook(0, fmBook.edtClient.tag,
      fmBook.seRooms.Value, fmBook.DateTimePicker1.Date,
      fmBook.DateTimePicker2.Date, fmBook.RadioGroup1.ItemIndex + 3,
      fmBook.sePeople.Value, fmBook.DateTimePicker3.Date, success);
  end;
  if success = 0 then
    MessageDlg('Ошибка', mtError, [mbOK], 0)
  else
    dm.DCOMConnection1.AppServer.smUpdRoom;
  dm.cdsRoom.Refresh;
  dm.cdsBook.Refresh;
  dm.cdsClientRoom.Refresh;
end;

procedure TfmBooks.N2Click(Sender: TObject);
begin
  if (dm.cdsBookDATE_IN.Value - Now) > 14 then
  begin
    dm.DCOMConnection1.AppServer.smDelBook(dm.cdsBookID.Value);
    dm.cdsBook.Refresh;
    dm.cdsRoom.Refresh;
  end
  else
  MessageDlg('До въезда осталось меньше 2-ух недель, удалить нельзя', mtError, [mbOK], 0);
end;

procedure TfmBooks.N5Click(Sender: TObject);
var
  success: OleVariant;
  rooms: integer;
  // var
begin
  fmBookOrg.LabeledEdit1.Text := '';
  fmBookOrg.DateTimePicker1.Date := Now;
  fmBookOrg.DateTimePicker2.Date := Now;
  fmBookOrg.DateTimePicker3.Date := Now;
  success := 3;
  fmBookOrg.showModal;
  if fmBookOrg.ModalResult = mrOk then
  begin
    // ActivityIndicator1.Animate := TRUE;
    ProgressBar1.Visible := TRUE;;

    dm.cdsClient.Filtered := False;
    dm.cdsClient.Filter := 'ID_ORGANIZATION = ' +
      IntToStr(fmBookOrg.LabeledEdit1.tag);
    dm.cdsClient.Filtered := TRUE;
    ProgressBar1.Max := dm.cdsClient.RecordCount;
    rooms := 1;
    while not dm.cdsClient.Eof do
    begin
      success := 3;
      while success <> 1 do
      begin
        dm.DCOMConnection1.AppServer.smAddBook(0, dm.cdsClientID.Value, rooms,
          fmBookOrg.DateTimePicker1.Date, fmBookOrg.DateTimePicker2.Date,
          fmBookOrg.RadioGroup1.ItemIndex + 3, 1,
          fmBookOrg.DateTimePicker3.Date, success);
        if success = 0 then
          rooms := rooms + 1;
      end;
      ProgressBar1.Position := ProgressBar1.Position + 1;
      dm.cdsClient.Next;
    end;
    // ActivityIndicator1.StopAnimation;
    // ActivityIndicator1.Animate := FALSE;
    // ActivityIndicator1.Top := -100;
    ProgressBar1.Position := 0;
    ProgressBar1.Visible := False;
  end;
  if success = 0 then
    MessageDlg('Ошибка', mtError, [mbOK], 0)
  else
    dm.DCOMConnection1.AppServer.smUpdRoom;
  dm.cdsRoom.Refresh;
  dm.cdsBook.Refresh;
  dm.cdsClientRoom.Refresh;
  dm.cdsClient.Filtered := False;
  dm.cdsBook.Filtered := False
end;

procedure TfmBooks.N6Click(Sender: TObject);
begin
Close;
end;

end.
