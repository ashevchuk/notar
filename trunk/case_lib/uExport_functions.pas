unit uExport_functions;

interface

uses
  uCore;

//-----------------------------------------------------
// �������������� ������� �� ������� Padeg.DLL (���.)
//-----------------------------------------------------
function GetFIOPadegFromStr(pFIO: PChar;bSex: Boolean;nPadeg: LongInt;pResult: PChar;var nLen: LongInt): Integer; stdcall; export;
function GetFIOPadegFromStrAutoSex(pFIO: PChar;nPadeg: LongInt;pResult: PChar;var nLen: LongInt): Integer; stdcall; export;
function GetFIOPadeg(pLastName,  pFirstName,  pMiddleName: PChar;  bSex: Boolean;  nPadeg: LongInt;  pResult: PChar;	var nLen: LongInt): Integer; stdcall; export;
function GetFIOPadegAutoSex(	pLastName,  pFirstName,  pMiddleName: PChar;  nPadeg: LongInt;  pResult: PChar;  var nLen: LongInt): Integer; stdcall; export;
function GetIFPadeg(	pFirstName,  pLastName: PChar;  bSex: Boolean;  nPadeg: LongInt;  pResult: PChar;  var nLen: LongInt): Integer; stdcall; export;
function GetIFPadegFromStr(	pIF: PChar;  bSex: Boolean;  nPadeg: LongInt;	pResult: PChar;  var nLen: LongInt): Integer; stdcall; export;
function GetFullAppointmentPadeg(	pAppointment,  pOffice: PChar;  nPadeg: LongInt;  pResult: PChar;  var nLen: LongInt): Integer; stdcall; export;
function GetAppointmentPadeg(	pAppointment: PChar;  nPadeg: LongInt;  pResult: PChar;  var nLen: LongInt): Integer; stdcall; export;
function GetOfficePadeg(	pOffice: PChar;  nPadeg: LongInt;  pResult: PChar;  var nLen: LongInt): Integer; stdcall; export;
function Get_Sex(pMiddleName: PChar): Integer; stdcall; export;
function GetFIOParts(	pFIO: PChar;  Parts: PPartsFIO): Integer; stdcall; export;
function Update_Exceptions: Boolean; stdcall; export;
function GetExceptionsFileName(	pResult: PChar;  var nLen: LongInt): Integer; stdcall; export;
function SetDictionary(FileName: PChar): Boolean; stdcall; export;
//-----------------------------------------------------
// �������������� ������� ��� �������� �����
//-----------------------------------------------------
procedure SetStatusProc(Proc: TCallbackProc); stdcall; export;
procedure SetMessageProc(Proc: TCallbackProc); stdcall; export;


implementation

uses
  Classes, SysUtils;

//-----------------------------------------------------
function GetFIOPadegFromStr(
	pFIO: PChar;
  bSex: Boolean;
  nPadeg: LongInt;
	pResult: PChar;
  var nLen: LongInt): Integer; stdcall; export;
var
	�����: String;
  �������: Integer;
  �����: String;
begin
	Result := 0;
  if (nPadeg < 1) or (nPadeg > 7) then
  begin
  	����� := pFIO;
    nLen := Length(�����);
	  StrLCopy(pResult, pFIO, nLen);
  	Result := -1;
    Exit;
  end;
  if bSex then
  	����� := '�'
  else
  	����� := '�';
	����� := ��������������(pFIO, �����, nPadeg, 'UA', 0, 0);
  ������� := Length(�����);
  if ������� + 1 > nLen then
  begin
  	Result := -3;
  end;
  nLen := �������;
  StrPLCopy(pResult, �����, nLen);
end;

//-----------------------------------------------------
function GetFIOPadegFromStrAutoSex(
	pFIO: PChar;
  nPadeg: LongInt;
	pResult: PChar;
  var nLen: LongInt): Integer; stdcall; export;
var
  �����: String;
	bSex: Boolean;
begin
  ����� := ��������������������������(pFIO);
  If ����� = '�' then
  	bSex := True
  else if ����� = '�' then
  	bSex := False
  else if ����� = '-' then
  begin
	  StrLCopy(pResult, pFIO, nLen);
  	Result := -2;
    Exit;
	end;

  Result := GetFIOPadegFromStr(pFIO, bSex, nPadeg, pResult, nLen);
end;

//-----------------------------------------------------
function GetFIOPadeg(
	pLastName,
  pFirstName,
  pMiddleName: PChar;
  bSex: Boolean;
  nPadeg: LongInt;
  pResult: PChar;
	var nLen: LongInt): Integer; stdcall; export;
var
	�����: String;
  �������: Integer;
  ������,
  �����,
	�������,
	���,
	��������,
	����������,
	������,
	�����������: string;
  ����������������������������������,
  �����: Byte;
begin
	Result := 0;
  if (nPadeg < 1) or (nPadeg > 7) then
  begin
  	����� := pLastName + ' ' + pFirstName + ' ' + pMiddleName;
    nLen := Length(�����);
	  StrPLCopy(pResult, �����, nLen);
  	Result := -1;
    Exit;
  end;
  if bSex then
  	����� := '�'
  else
  	����� := '�';

  ������ := 'UA';
  ����� := nPadeg;
  ������� := pLastName;
  ��� := pFirstName;
  �������� := pMiddleName;

	���������� := ����������������(�������, �����, ����������������������������������, �����, ������, '�');
	������ := ����������������(���, �����, ����������������������������������, �����, ������, '�');
	����������� := ����������������(��������, �����, ����������������������������������, �����, ������, '�');

	����� := '';
	If ������������(����������) = 0 then begin
		����� := ����� + ����������;
	end;
	If ������������(������) = 0 then begin
		If ����� <> '' then begin
			����� := ����� + ' ';
		end;
		����� := ����� + ������;
	end;
	If ������������(�����������) = 0 then begin
		If ����� <> '' then begin
			����� := ����� + ' ';
		end;
		����� := ����� + �����������;
	end;

  ������� := Length(�����);
  if ������� + 1 > nLen then
  begin
  	Result := -3;
  end;
  nLen := �������;
  StrPLCopy(pResult, �����, nLen);
end;

//-----------------------------------------------------
function GetFIOPadegAutoSex(
	pLastName,
  pFirstName,
  pMiddleName: PChar;
  nPadeg: LongInt;
  pResult: PChar;
  var nLen: LongInt): Integer; stdcall; export;
var
  �����,
  �����: String;
	bSex: Boolean;
begin
  ����� := ��������������������������(pMiddleName);
  If ����� = '�' then
  	bSex := True
  else if ����� = '�' then
  	bSex := False
  else if ����� = '-' then
  begin
  	����� := pLastName + ' ' + pFirstName + ' ' + pMiddleName;
    nLen := Length(�����);
	  StrPLCopy(pResult, �����, nLen);
  	Result := -2;
    Exit;
	end;

  Result := GetFIOPadeg(pLastName, pFirstName, pMiddleName, bSex, nPadeg, pResult, nLen);
end;

//-----------------------------------------------------
function GetIFPadeg(
	pFirstName,
  pLastName: PChar;
  bSex: Boolean;
  nPadeg: LongInt;
  pResult: PChar;
  var nLen: LongInt): Integer; stdcall; export;
begin
	Result := GetFIOPadeg(pLastName, pFirstName, nil, bSex, nPadeg, pResult, nLen);
end;

//-----------------------------------------------------
function GetIFPadegFromStr(
	pIF: PChar;
  bSex: Boolean;
  nPadeg: LongInt;
	pResult: PChar;
  var nLen: LongInt): Integer; stdcall; export;
var
	�������,
	���,
	��������: string;
	�����: String;
  �������: Integer;
  ������,
  �����,
	����������,
	������: string;
  ����������������������������������,
  �����: Byte;
begin
	�������������(pIF, ���, �������, ��������);

	Result := 0;
  if (nPadeg < 1) or (nPadeg > 7) then
  begin
  	����� := ��� + ' ' + �������;
    nLen := Length(�����);
	  StrPLCopy(pResult, �����, nLen);
  	Result := -1;
    Exit;
  end;
  if bSex then
  	����� := '�'
  else
  	����� := '�';

  ������ := 'UA';
  ����� := nPadeg;

	���������� := ����������������(�������, �����, ����������������������������������, �����, ������, '�');
	������ := ����������������(���, �����, ����������������������������������, �����, ������, '�');

	����� := '';
	If ������������(������) = 0 then begin
		����� := ����� + ������;
	end;
	If ������������(����������) = 0 then begin
		If ����� <> '' then begin
			����� := ����� + ' ';
		end;
		����� := ����� + ����������;
	end;

  ������� := Length(�����);
  if ������� + 1 > nLen then
  begin
  	Result := -3;
  end;
  nLen := �������;
  StrPLCopy(pResult, �����, nLen);
end;

//-----------------------------------------------------
function GetFullAppointmentPadeg(
	pAppointment,
  pOffice: PChar;
  nPadeg: LongInt;
  pResult: PChar;
  var nLen: LongInt): Integer; stdcall; export;
var
	�����: String;
  �������: Integer;
begin
	Result := 0;
  if (nPadeg < 1) or (nPadeg > 7) then
  begin
  	����� := pAppointment + ' ' + pOffice;
    nLen := Length(�����);
	  StrPLCopy(pResult, �����, nLen);
  	Result := -1;
    Exit;
  end;
	����� := ��������������������(pAppointment, pOffice, '�', nPadeg, 'UA');
  ������� := Length(�����);
  if ������� + 1 > nLen then
  begin
  	Result := -3;
  end;
  nLen := �������;
  StrPLCopy(pResult, �����, nLen);
end;

//-----------------------------------------------------
function GetAppointmentPadeg(
	pAppointment: PChar;
  nPadeg: LongInt;
  pResult: PChar;
  var nLen: LongInt): Integer; stdcall; export;
begin
  Result := GetFullAppointmentPadeg(pAppointment, nil, nPadeg, pResult, nLen);
end;

//-----------------------------------------------------
function GetOfficePadeg(
	pOffice: PChar;
  nPadeg: LongInt;
  pResult: PChar;
  var nLen: LongInt): Integer; stdcall; export;
begin
  Result := GetFullAppointmentPadeg(nil, pOffice, nPadeg, pResult, nLen);
end;

//-----------------------------------------------------
function Get_Sex(pMiddleName: PChar): Integer; stdcall; export;
var
	�����: String;
begin
	����� := ��������������������������(pMiddleName);
  if ����� = '�' then
  	Result := 1
  else if ����� = '�' then
  	Result := 0
  else
  	Result := -1;
end;

//-----------------------------------------------------
function GetFIOParts(
	pFIO: PChar;
  Parts: PPartsFIO): Integer; stdcall; export;
var
	�������,
	���,
	��������: string;
  �������: Integer;
begin
	Result := 0;
	�������������(pFIO, �������, ���, ��������);
  Try
  	������� := Length(���);
    if ������� + 1 > Parts.nFirstName then
    begin
      Result := -4;
    end;
    Parts.nFirstName := �������;
    StrPLCopy(Parts.pFirstName, ���, Parts.nFirstName);
  Except
  End;

  Try
  	������� := Length(�������);
    if ������� + 1 > Parts.nLastName then
    begin
      Result := -3;
    end;
    Parts.nLastName := �������;
    StrPLCopy(Parts.pLastName, �������, Parts.nLastName);
  Except
  End;

  Try
  	������� := Length(��������);
    if ������� + 1 > Parts.nMiddleName then
    begin
      Result := -5;
    end;
    Parts.nMiddleName := �������;
    StrPLCopy(Parts.pMiddleName, ��������, Parts.nMiddleName);
  Except
  End;

end;

//-----------------------------------------------------
function Update_Exceptions: Boolean; stdcall; export;
begin
	Result := ����������������������();
end;

//-----------------------------------------------------
function GetExceptionsFileName(
	pResult: PChar;
  var nLen: LongInt): Integer; stdcall; export;
var
  �������: Integer;
begin
	Result := 0;
  ������� := Length(������������������);
  if ������� + 1 > nLen then
  begin
  	Result := -3;
  end;
  nLen := �������;
  StrPLCopy(pResult, ������������������, nLen);
end;

//-----------------------------------------------------
function SetDictionary(FileName: PChar): Boolean; stdcall; export;
begin
  ������������������ := FileName;
	Result := ����������������������();
end;

//-----------------------------------------------------
procedure SetStatusProc(Proc: TCallbackProc); stdcall; export;
begin
	StatusProc := Proc;
end;

//-----------------------------------------------------
procedure SetMessageProc(Proc: TCallbackProc); stdcall; export;
begin
	MessageProc := Proc;
end;

end.
