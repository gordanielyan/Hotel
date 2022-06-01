unit bookOrg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.ComCtrls;

type
  TfmBookOrg = class(TForm)
    LabeledEdit1: TLabeledEdit;
    Button1: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure LabeledEdit1Change(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBookOrg: TfmBookOrg;

implementation

{$R *.dfm}

uses mydm, orgs;

procedure TfmBookOrg.Button1Click(Sender: TObject);
begin
  fmOrgs.ShowModal;
  if fmOrgs.ModalResult = mrCancel then
  begin
    LabeledEdit1.Text := dm.cdsOrgNAME.AsString;
    LabeledEdit1.Tag := dm.cdsOrgID_ORGANIZATION.Value;
  end;
  dm.cdsClient.Filtered := false;
  dm.cdsClient.Filter := 'ID_ORGANIZATION = '+ IntToStr(LabeledEdit1.Tag);
  dm.cdsClient.Filtered := True;
  Label4.Caption :='Клиентов: ' + (dm.cdsclientAgg.AsString);
  if dm.cdsRoom.Filtered then
    BitBtn1.Enabled := (dm.cdsRoomAgg.Value - dm.cdsClientAgg.Value) > 0;
  dm.cdsBook.Filtered := False;
end;

procedure TfmBookOrg.DateTimePicker2Change(Sender: TObject);
begin
  if DateTimePicker2.Date < DateTimePicker1.Date then
    BitBtn1.Enabled := False;
end;

procedure TfmBookOrg.LabeledEdit1Change(Sender: TObject);
begin
  BitBtn1.Enabled := (RadioGroup1.ItemIndex <> -1) and
    (LabeledEdit1.Text <> '');
end;

procedure TfmBookOrg.RadioGroup1Click(Sender: TObject);
begin
  LabeledEdit1Change(sender);
  dm.cdsRoom.Filtered := false;
  dm.cdsRoom.Filter := 'ID_CORPUS = ' + IntToStr(RadioGroup1.ItemIndex+1) + 'and ID_BOOK is null';
  dm.cdsRoom.Filtered := True;
  Label1.Caption :='Свободных мест: ' + (dm.cdsRoomAgg.AsString);
  if dm.cdsClient.Filtered then
    BitBtn1.Enabled := (dm.cdsRoomAgg.Value - dm.cdsClientAgg.Value) > 0
end;

end.
