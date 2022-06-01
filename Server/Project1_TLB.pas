unit Project1_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 30.05.2022 23:42:05 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Users\danie\Desktop\RAD\Сервер\Project1.tlb (1)
// LIBID: {7F3E570A-F670-4995-9D99-8F36214C425A}
// LCID: 0
// Helpfile: 
// HelpString: Project1 Library
// DepndLst: 
//   (1) v1.0 Midas, (C:\Program Files (x86)\Embarcadero\Studio\20.0\bin64\midas.dll)
//   (2) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, Midas, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  Project1MajorVersion = 1;
  Project1MinorVersion = 0;

  LIBID_Project1: TGUID = '{7F3E570A-F670-4995-9D99-8F36214C425A}';

  IID_IMyServer: TGUID = '{7B724D40-8106-48C8-A3F5-8E7B619DC208}';
  CLASS_MyServer: TGUID = '{FE49A771-846A-44F0-B6C3-6F5EB201CF8F}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IMyServer = interface;
  IMyServerDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  MyServer = IMyServer;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  POleVariant1 = ^OleVariant; {*}


// *********************************************************************//
// Interface: IMyServer
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7B724D40-8106-48C8-A3F5-8E7B619DC208}
// *********************************************************************//
  IMyServer = interface(IAppServer)
    ['{7B724D40-8106-48C8-A3F5-8E7B619DC208}']
    procedure smAddClient(id: Integer; const name: WideString; id_organization: Integer; 
                          passport: Integer); safecall;
    procedure smDelClient(id: Integer); safecall;
    procedure smAddBook(id: Integer; id_client: Integer; rooms: Integer; date_in: TDateTime; 
                        date_out: Integer; corpus_class: Integer; people: Integer; 
                        date_booked: TDateTime; var success: OleVariant); safecall;
    procedure smDelBook(id: Integer); safecall;
    procedure smUpdRoom; safecall;
    procedure smAddComplain(id: Integer; const complain: WideString; id_client: Integer; 
                            date: TDateTime); safecall;
    procedure smDelComplain(id: Integer); safecall;
    procedure smAddOrg(id: Integer; const name: WideString; discount: Integer); safecall;
    procedure smDelOrg(id: Integer); safecall;
    procedure smAddCLientService(id_client: Integer; id_service: Integer); safecall;
    procedure smDelCLientService(id: Integer); safecall;
    procedure smAddService(id: Integer; const name: WideString; price: Double); safecall;
    procedure smDelService(id: Integer); safecall;
    procedure smAddSurvey(idclient: Integer; serv: Integer; price: Integer); safecall;
    procedure smUpdSURVEY(id: Integer; price: Integer; serv: Integer); safecall;
    procedure smDelSurvey(id: Integer); safecall;
    procedure smQOrgBook(in_date_in: TDateTime; in_date_end: TDateTime; in_m_t: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  IMyServerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7B724D40-8106-48C8-A3F5-8E7B619DC208}
// *********************************************************************//
  IMyServerDisp = dispinterface
    ['{7B724D40-8106-48C8-A3F5-8E7B619DC208}']
    procedure smAddClient(id: Integer; const name: WideString; id_organization: Integer; 
                          passport: Integer); dispid 301;
    procedure smDelClient(id: Integer); dispid 302;
    procedure smAddBook(id: Integer; id_client: Integer; rooms: Integer; date_in: TDateTime; 
                        date_out: Integer; corpus_class: Integer; people: Integer; 
                        date_booked: TDateTime; var success: OleVariant); dispid 303;
    procedure smDelBook(id: Integer); dispid 304;
    procedure smUpdRoom; dispid 305;
    procedure smAddComplain(id: Integer; const complain: WideString; id_client: Integer; 
                            date: TDateTime); dispid 306;
    procedure smDelComplain(id: Integer); dispid 307;
    procedure smAddOrg(id: Integer; const name: WideString; discount: Integer); dispid 308;
    procedure smDelOrg(id: Integer); dispid 309;
    procedure smAddCLientService(id_client: Integer; id_service: Integer); dispid 310;
    procedure smDelCLientService(id: Integer); dispid 311;
    procedure smAddService(id: Integer; const name: WideString; price: Double); dispid 312;
    procedure smDelService(id: Integer); dispid 313;
    procedure smAddSurvey(idclient: Integer; serv: Integer; price: Integer); dispid 314;
    procedure smUpdSURVEY(id: Integer; price: Integer; serv: Integer); dispid 315;
    procedure smDelSurvey(id: Integer); dispid 316;
    procedure smQOrgBook(in_date_in: TDateTime; in_date_end: TDateTime; in_m_t: Integer); dispid 317;
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: SYSINT; 
                             out ErrorCount: SYSINT; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: SYSINT; out RecsOut: SYSINT; 
                           Options: SYSINT; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: SYSINT; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// The Class CoMyServer provides a Create and CreateRemote method to          
// create instances of the default interface IMyServer exposed by              
// the CoClass MyServer. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMyServer = class
    class function Create: IMyServer;
    class function CreateRemote(const MachineName: string): IMyServer;
  end;

implementation

uses ComObj;

class function CoMyServer.Create: IMyServer;
begin
  Result := CreateComObject(CLASS_MyServer) as IMyServer;
end;

class function CoMyServer.CreateRemote(const MachineName: string): IMyServer;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MyServer) as IMyServer;
end;

end.
