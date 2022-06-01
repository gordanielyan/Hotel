unit mydm;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect, System.ImageList, Vcl.ImgList,
  Vcl.Controls;

type
  Tdm = class(TDataModule)
    DCOMConnection1: TDCOMConnection;
    cdsBook: TClientDataSet;
    cdsClient: TClientDataSet;
    cdsClientRoom: TClientDataSet;
    cdsComplain: TClientDataSet;
    cdsCorpus: TClientDataSet;
    cdsDebt: TClientDataSet;
    cdsDebtServ: TClientDataSet;
    cdsOrg: TClientDataSet;
    cdsRoom: TClientDataSet;
    cdsServ: TClientDataSet;
    cdsClientID: TIntegerField;
    cdsClientNAME: TStringField;
    cdsClientID_ORGANIZATION: TIntegerField;
    cdsClientPASSPORT: TIntegerField;
    cdsCorpusID: TIntegerField;
    cdsCorpusCLASS: TIntegerField;
    cdsCorpusONE_MAN: TIntegerField;
    cdsCorpusTWO_MAN: TIntegerField;
    cdsCorpusTHREE_MAN: TIntegerField;
    cdsCorpusFLOORS: TIntegerField;
    cdsBookID: TIntegerField;
    cdsBookID_CLIENT: TIntegerField;
    cdsBookROOMS: TIntegerField;
    cdsBookDATE_IN: TDateField;
    cdsBookDATE_OUT: TDateField;
    cdsBookCORPUS_CLASS: TIntegerField;
    cdsBookPEOPLE: TIntegerField;
    cdsBookDATE_BOOKED: TDateField;
    cdsBookID_ORGANIZATION: TIntegerField;
    cdsClientRoomID_CLIENT: TIntegerField;
    cdsClientRoomID_ROOM: TIntegerField;
    cdsClientRoomID_BOOK: TIntegerField;
    cdsComplainID: TIntegerField;
    cdsComplainDATE: TDateField;
    cdsComplainCOMPLAIN: TStringField;
    cdsComplainID_CLIENT: TIntegerField;
    cdsDebtServID: TSmallintField;
    cdsDebtServID_CLIENT: TIntegerField;
    cdsDebtServID_SERVICE: TIntegerField;
    cdsDebtServPRICE: TFloatField;
    cdsOrgID_ORGANIZATION: TIntegerField;
    cdsOrgNAME: TStringField;
    cdsOrgDISCOUNT: TIntegerField;
    cdsRoomID: TIntegerField;
    cdsRoomID_BOOK: TIntegerField;
    cdsRoomID_CORPUS: TIntegerField;
    cdsRoomPERSONS: TIntegerField;
    cdsRoomFLOOR: TIntegerField;
    cdsRoomPRICE: TFloatField;
    cdsRoomMANS: TIntegerField;
    cdsRoomID_CLIENT: TIntegerField;
    cdsRoomCORPUS_CLASS: TIntegerField;
    cdsServID: TIntegerField;
    cdsServNAME: TStringField;
    cdsServPRICE: TFloatField;
    cdsDebtID_CLIENT: TIntegerField;
    cdsDebtSUMM: TFloatField;
    cdsCorpusCLASSE: TWideStringField;
    cdsDebtServSERVNAME: TStringField;
    cdsBookPLACED: TIntegerField;
    cdsClientDISCOUNT: TIntegerField;
    cdsClientORGANIZATION: TStringField;
    cdsClientRoomPrice: TFloatField;
    cdsClientDay_IN: TDateField;
    cdsClientDay_OUT: TDateField;
    cdsClientRoomPriceDay: TFloatField;
    cdsBookPLACEDE: TWideStringField;
    cdsBookORGANIZATION: TStringField;
    cdsRoomAgg: TAggregateField;
    cdsClientAgg: TAggregateField;
    cdsComplainClient: TStringField;
    cdsSurvey: TClientDataSet;
    cdsSurveyID_CLIENT: TIntegerField;
    cdsSurveySERVICE: TIntegerField;
    cdsSurveyPRICE: TIntegerField;
    cdsQOrgBook: TClientDataSet;
    cdsQOrgBookID_ORGANIZATION: TIntegerField;
    cdsQOrgBookCOUNT: TLargeintField;
    cdsQOrgBookORG_NAME: TStringField;
    cdsClientRoomNAME: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure cdsCorpusCalcFields(DataSet: TDataSet);
    procedure cdsDebtCalcFields(DataSet: TDataSet);
    procedure cdsClientCalcFields(DataSet: TDataSet);
    procedure cdsBookCalcFields(DataSet: TDataSet);
    procedure cdsClientRoomCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

procedure Tdm.cdsBookCalcFields(DataSet: TDataSet);
begin
  if DataSet.Fields[9].Value = 1 then
    DataSet.Fields[10].Value := '✔';
  if DataSet.Fields[9].Value = 0 then
    DataSet.Fields[10].Value := '✖';
  if DataSet.Fields[9].AsString = '' then
    DataSet.Fields[10].Value := '🕘';
end;

procedure Tdm.cdsClientCalcFields(DataSet: TDataSet);
begin

  DataSet.Fields[9].Value := (DataSet.Fields[8].Value - DataSet.Fields[7].Value)
    * DataSet.Fields[6].Value;

end;

procedure Tdm.cdsClientRoomCalcFields(DataSet: TDataSet);
var id_b, id_r:integer;
begin
//  id_b := cdsClientRoomID_BOOK.Value;
//  id_r := cdsClientRoomID_ROOM.Value;
//  cdsRoom.FindKey([id_r]);
//  cdsBook.FindKey([id_b]);
//  cdsClientRoomDATE_IN.Value := cdsBookDATE_IN.Value;
//  cdsClientRoomDATE_OUT.Value := cdsBookDATE_OUT.Value;
////  cdsClientRoomPrice.Value := cdsRoomPRICE.Value;
//  cdsClientRoomMANS.Value := cdsRoomMANS.Value;
end;

procedure Tdm.cdsCorpusCalcFields(DataSet: TDataSet);
var
  i: integer;
begin
  for i := 1 to cdsCorpusCLASS.Value do
    cdsCorpusCLASSE.Value := cdsCorpusCLASSE.Value + '🌟';
  // for i := cdsCorpusCLASS.Value+1 to 5 do
  // cdsCorpusCLASSE.Value := cdsCorpusCLASSE.Value + '⭐';

end;

procedure Tdm.cdsDebtCalcFields(DataSet: TDataSet);
begin
  DataSet.Fields[5].Value := (DataSet.Fields[4].Value - DataSet.Fields[3].Value)
    * DataSet.Fields[2].Value
end;

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
  cdsBook.Open;
  cdsClient.Open;
    cdsRoom.Open;
  cdsClientRoom.Open;
  cdsComplain.Open;
  cdsCorpus.Open;
  cdsDebt.Open;
  cdsDebtServ.Open;
  cdsOrg.Open;
  cdsServ.Open;
  cdsSurvey.Open;
  cdsQOrgBook.Open;
end;

procedure Tdm.DataModuleDestroy(Sender: TObject);
begin
  DCOMConnection1.Close;
end;

end.
