unit uOle_object;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  ComObj, ActiveX, padeg_ua_TLB, StdVcl;

type
  TDeclension = class(TAutoObject, IDeclension)
  protected
    function GetFIOPadeg(const cLastName, cFirstName, cMiddleName, cSex: WideString; nPadeg: Integer): WideString; safecall;
    function GetAppointmentPadeg(const cAppointment: WideString; nPadeg: Integer): WideString; safecall;
    function GetFIOPadegFS(const cFIO, cSex: WideString; nPadeg: Integer): WideString; safecall;
    function GetIFPadeg(const cFirstName, cLastName, cSex: WideString; nPadeg: Integer): WideString; safecall;
    function GetIFPadegFS(const cIF, cSex: WideString; nPadeg: Integer): WideString; safecall;
    function GetOfficePadeg(const cOffice: WideString; nPadeg: Integer): WideString; safecall;
    function GetSex(const cMiddleName: WideString): Integer; safecall;
    procedure SeparateFIO(const cFIO: WideString; var cLastName, cFirstName, cMiddleName: WideString); safecall;
    function GetFullAppointmentPadeg(const cAppointment, cOffice: WideString; nPadeg: Integer): WideString; safecall;
    procedure Initialize; override;
    destructor Destroy; override;
    function UpdateDictionary: WordBool; safecall;
    function Get_DictionaryFileName: WideString; safecall;
    procedure Set_DictionaryFileName(const Value: WideString); safecall;
  end;

implementation

uses ComServ, uCore;

function TDeclension.GetFIOPadeg(const cLastName, cFirstName, cMiddleName, cSex: WideString;
  nPadeg: Integer): WideString;
begin
	Result := ��������������3(cLastName, cFirstName, cMiddleName, cSex, nPadeg);
end;

destructor TDeclension.Destroy;
begin
  //Core.Deinit;
  inherited;
end;

function TDeclension.GetAppointmentPadeg(const cAppointment: WideString; nPadeg: Integer): WideString;
begin
  Result := ��������������������(cAppointment, '', '�', nPadeg);
end;

function TDeclension.GetFIOPadegFS(const cFIO, cSex: WideString; nPadeg: Integer): WideString;
begin
	Result := ��������������(cFIO, cSex, nPadeg, 'UA');
end;

function TDeclension.GetIFPadeg(const cFirstName, cLastName, cSex: WideString; nPadeg: Integer): WideString;
begin
	Result := ��������������3(cLastName, cFirstName, '', cSex, nPadeg);
end;

function TDeclension.GetIFPadegFS(const cIF, cSex: WideString; nPadeg: Integer): WideString;
var
	�������,
  ���,
  ��������: String;
begin
	�������������(cIF, ���, �������, ��������);
  Result := ��������������3(�������, ���, ��������, cSex, nPadeg);
end;

function TDeclension.GetOfficePadeg(const cOffice: WideString; nPadeg: Integer): WideString;
begin
  Result := ��������������������('', cOffice, '�', nPadeg);
end;

function TDeclension.GetSex(const cMiddleName: WideString): Integer;
var
	�����: String;
begin
  ����� := ��������������������������(cMiddleName);
  if ����� = '�' then
  	Result := 1
  else if ����� = '�' then
  	Result := 0
  else
  	Result := -1;
end;

procedure TDeclension.SeparateFIO(const cFIO: WideString; var cLastName, cFirstName, cMiddleName: WideString);
var
	�������,
  ���,
  ��������: String;
begin
	�������������(cFIO, �������, ���, ��������);
  cLastName := �������;
  cFirstName := ���;
  cMiddleName := ��������;
end;

function TDeclension.GetFullAppointmentPadeg(const cAppointment, cOffice: WideString; nPadeg: Integer): WideString;
begin
  Result := ��������������������(cAppointment, cOffice, '�', nPadeg);
end;

procedure TDeclension.Initialize;
begin
  inherited;
  //Core.Init;
end;

function TDeclension.Get_DictionaryFileName: WideString;
begin
	Result := ������������������;
end;

procedure TDeclension.Set_DictionaryFileName(const Value: WideString);
begin
	������������������ := Value;
end;

function TDeclension.UpdateDictionary: WordBool;
begin
	Result := ����������������������();
end;

initialization
  TAutoObjectFactory.Create(ComServer, TDeclension, Class_Declension,
    ciMultiInstance, tmApartment);
end.
