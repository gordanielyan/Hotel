unit book;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.Samples.Spin, Vcl.ExtCtrls;

type
  TfmBook = class(TForm)
    seRooms: TSpinEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    sePeople: TSpinEdit;
    DateTimePicker3: TDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtClient: TEdit;
    Label6: TLabel;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure edtClientChange(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBook: TfmBook;

implementation

{$R *.dfm}

uses clients, mydm;

procedure TfmBook.Button1Click(Sender: TObject);
begin
  fmclients.ShowModal;
  if fmclients.ModalResult = mrCancel then
  begin
    edtClient.Text := dm.cdsClientNAME.Value;
    edtClient.Tag := dm.cdsClientID.Value;
  end;
end;

procedure TfmBook.edtClientChange(Sender: TObject);
begin
  BitBtn1.Enabled := (edtClient.Text <> '') and (RadioGroup1.ItemIndex <> -1);
end;

procedure TfmBook.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.cdsRoom.Filtered:=false;
end;

procedure TfmBook.RadioGroup1Click(Sender: TObject);
//var ofield: ;
begin
  edtClientChange(Sender);
//  dm.cdsRoom.Close;
  dm.cdsRoom.Filtered := false;
  dm.cdsRoom.Filter := 'ID_CORPUS = ' + IntToStr(RadioGroup1.ItemIndex+1) + 'and ID_BOOK is null';
  dm.cdsRoom.Filtered := True;
  Label7.Caption :='Свободных мест: ' + (dm.cdsRoomAgg.AsString);
//  dm.cdsRoomfree.Expression := 'Count(*)';
//  dm.cdsRoom.Open;
end;

end.
