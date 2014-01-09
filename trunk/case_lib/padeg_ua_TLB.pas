unit padeg_ua_TLB;

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
// File generated on 17.02.2010 23:07:39 from Type Library described below.

// ************************************************************************  //
// Type Lib: F:\Turbo Delphi\Padeg_ua.dll\Free\padeg_ua.tlb (1)
// LIBID: {C789218C-37FF-4D22-B978-9B54C03A2D25}
// LCID: 0
// Helpfile: 
// HelpString: padeg_ua Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Vcl.Graphics, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  padeg_uaMajorVersion = 1;
  padeg_uaMinorVersion = 0;

  LIBID_padeg_ua: TGUID = '{C789218C-37FF-4D22-B978-9B54C03A2D25}';

  IID_IDeclension: TGUID = '{A8E51E43-937F-414B-85DB-FC1BB7A38734}';
  CLASS_Declension: TGUID = '{B21B2752-8C41-41D8-A0DC-98A368D8296E}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IDeclension = interface;
  IDeclensionDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  Declension = IDeclension;


// *********************************************************************//
// Interface: IDeclension
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A8E51E43-937F-414B-85DB-FC1BB7A38734}
// *********************************************************************//
  IDeclension = interface(IDispatch)
    ['{A8E51E43-937F-414B-85DB-FC1BB7A38734}']
    function GetFIOPadeg(const cLastName: WideString; const cFirstName: WideString; 
                         const cMiddleName: WideString; const cSex: WideString; nPadeg: Integer): WideString; safecall;
    function GetFIOPadegFS(const cFIO: WideString; const cSex: WideString; nPadeg: Integer): WideString; safecall;
    function GetIFPadeg(const cFirstName: WideString; const cLastName: WideString; 
                        const cSex: WideString; nPadeg: Integer): WideString; safecall;
    function GetIFPadegFS(const cIF: WideString; const cSex: WideString; nPadeg: Integer): WideString; safecall;
    function GetAppointmentPadeg(const cAppointment: WideString; nPadeg: Integer): WideString; safecall;
    function GetOfficePadeg(const cOffice: WideString; nPadeg: Integer): WideString; safecall;
    function GetSex(const cMiddleName: WideString): Integer; safecall;
    procedure SeparateFIO(const cFIO: WideString; var cLastName: WideString; 
                          var cFirstName: WideString; var cMiddleName: WideString); safecall;
    function GetFullAppointmentPadeg(const cAppointment: WideString; const cOffice: WideString; 
                                     nPadeg: Integer): WideString; safecall;
    function UpdateDictionary: WordBool; safecall;
    function Get_DictionaryFileName: WideString; safecall;
    procedure Set_DictionaryFileName(const Value: WideString); safecall;
    property DictionaryFileName: WideString read Get_DictionaryFileName write Set_DictionaryFileName;
  end;

// *********************************************************************//
// DispIntf:  IDeclensionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A8E51E43-937F-414B-85DB-FC1BB7A38734}
// *********************************************************************//
  IDeclensionDisp = dispinterface
    ['{A8E51E43-937F-414B-85DB-FC1BB7A38734}']
    function GetFIOPadeg(const cLastName: WideString; const cFirstName: WideString; 
                         const cMiddleName: WideString; const cSex: WideString; nPadeg: Integer): WideString; dispid 201;
    function GetFIOPadegFS(const cFIO: WideString; const cSex: WideString; nPadeg: Integer): WideString; dispid 202;
    function GetIFPadeg(const cFirstName: WideString; const cLastName: WideString; 
                        const cSex: WideString; nPadeg: Integer): WideString; dispid 203;
    function GetIFPadegFS(const cIF: WideString; const cSex: WideString; nPadeg: Integer): WideString; dispid 204;
    function GetAppointmentPadeg(const cAppointment: WideString; nPadeg: Integer): WideString; dispid 205;
    function GetOfficePadeg(const cOffice: WideString; nPadeg: Integer): WideString; dispid 206;
    function GetSex(const cMiddleName: WideString): Integer; dispid 208;
    procedure SeparateFIO(const cFIO: WideString; var cLastName: WideString; 
                          var cFirstName: WideString; var cMiddleName: WideString); dispid 209;
    function GetFullAppointmentPadeg(const cAppointment: WideString; const cOffice: WideString; 
                                     nPadeg: Integer): WideString; dispid 207;
    function UpdateDictionary: WordBool; dispid 210;
    property DictionaryFileName: WideString dispid 211;
  end;

// *********************************************************************//
// The Class CoDeclension provides a Create and CreateRemote method to          
// create instances of the default interface IDeclension exposed by              
// the CoClass Declension. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDeclension = class
    class function Create: IDeclension;
    class function CreateRemote(const MachineName: string): IDeclension;
  end;

implementation

uses ComObj;

class function CoDeclension.Create: IDeclension;
begin
  Result := CreateComObject(CLASS_Declension) as IDeclension;
end;

class function CoDeclension.CreateRemote(const MachineName: string): IDeclension;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Declension) as IDeclension;
end;

end.
