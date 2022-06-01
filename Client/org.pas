unit org;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TfmOrg = class(TForm)
    leName: TLabeledEdit;
    seDiscount: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure leNameChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmOrg: TfmOrg;

implementation

{$R *.dfm}

procedure TfmOrg.leNameChange(Sender: TObject);
begin
  BitBtn1.Enabled := leName.Text <> '';
end;

end.
