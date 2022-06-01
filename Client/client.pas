unit client;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfmClient = class(TForm)
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure LabeledEdit1Change(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmClient: TfmClient;

implementation

{$R *.dfm}

uses org, mydm, orgs;

procedure TfmClient.Button1Click(Sender: TObject);
begin
  fmOrgs.N3.Enabled := false;
  fmOrgs.ShowModal;
  if fmOrgs.ModalResult = mrCancel then
    fmOrgs.N3.Enabled := true;
  LabeledEdit3.Text := dm.cdsOrgNAME.AsString;
  LabeledEdit3.Tag := dm.cdsOrgID_ORGANIZATION.Value;
end;

procedure TfmClient.LabeledEdit1Change(Sender: TObject);
begin
  BitBtn1.Enabled := (LabeledEdit1.Text <> '') and (LabeledEdit2.Text <> '') and
    (LabeledEdit3.Text <> '');
end;

end.
