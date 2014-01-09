unit uExport_functions;

interface

uses
  uCore;

//-----------------------------------------------------
// Ёкспортируемые функции по примеру Padeg.DLL (рус.)
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
// Ёкспортируемые функции дл€ обратной св€зи
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
	вр–ез: String;
  врƒлина: Integer;
  врѕол: String;
begin
	Result := 0;
  if (nPadeg < 1) or (nPadeg > 7) then
  begin
  	вр–ез := pFIO;
    nLen := Length(вр–ез);
	  StrLCopy(pResult, pFIO, nLen);
  	Result := -1;
    Exit;
  end;
  if bSex then
  	врѕол := 'м'
  else
  	врѕол := 'ж';
	вр–ез := скл—клон€ть‘»ќ(pFIO, врѕол, nPadeg, 'UA', 0, 0);
  врƒлина := Length(вр–ез);
  if врƒлина + 1 > nLen then
  begin
  	Result := -3;
  end;
  nLen := врƒлина;
  StrPLCopy(pResult, вр–ез, nLen);
end;

//-----------------------------------------------------
function GetFIOPadegFromStrAutoSex(
	pFIO: PChar;
  nPadeg: LongInt;
	pResult: PChar;
  var nLen: LongInt): Integer; stdcall; export;
var
  врѕол: String;
	bSex: Boolean;
begin
  врѕол := склќпределитьѕолѕоќтчеству(pFIO);
  If врѕол = 'м' then
  	bSex := True
  else if врѕол = 'ж' then
  	bSex := False
  else if врѕол = '-' then
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
	вр–ез: String;
  врƒлина: Integer;
  —трана,
  врѕол,
	‘амили€,
	»м€,
	ќтчество,
	–ез‘амили€,
	–ез»м€,
	–езќтчество: string;
  ќбработали—уществительноеƒолжности,
  ѕадеж: Byte;
begin
	Result := 0;
  if (nPadeg < 1) or (nPadeg > 7) then
  begin
  	вр–ез := pLastName + ' ' + pFirstName + ' ' + pMiddleName;
    nLen := Length(вр–ез);
	  StrPLCopy(pResult, вр–ез, nLen);
  	Result := -1;
    Exit;
  end;
  if bSex then
  	врѕол := 'м'
  else
  	врѕол := 'ж';

  —трана := 'UA';
  ѕадеж := nPadeg;
  ‘амили€ := pLastName;
  »м€ := pFirstName;
  ќтчество := pMiddleName;

	–ез‘амили€ := скл—клон€ть—лово(‘амили€, врѕол, ќбработали—уществительноеƒолжности, ѕадеж, —трана, '‘');
	–ез»м€ := скл—клон€ть—лово(»м€, врѕол, ќбработали—уществительноеƒолжности, ѕадеж, —трана, '»');
	–езќтчество := скл—клон€ть—лово(ќтчество, врѕол, ќбработали—уществительноеƒолжности, ѕадеж, —трана, 'ќ');

	вр–ез := '';
	If ѕуста€—трока(–ез‘амили€) = 0 then begin
		вр–ез := вр–ез + –ез‘амили€;
	end;
	If ѕуста€—трока(–ез»м€) = 0 then begin
		If вр–ез <> '' then begin
			вр–ез := вр–ез + ' ';
		end;
		вр–ез := вр–ез + –ез»м€;
	end;
	If ѕуста€—трока(–езќтчество) = 0 then begin
		If вр–ез <> '' then begin
			вр–ез := вр–ез + ' ';
		end;
		вр–ез := вр–ез + –езќтчество;
	end;

  врƒлина := Length(вр–ез);
  if врƒлина + 1 > nLen then
  begin
  	Result := -3;
  end;
  nLen := врƒлина;
  StrPLCopy(pResult, вр–ез, nLen);
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
  врѕол,
  вр–ез: String;
	bSex: Boolean;
begin
  врѕол := склќпределитьѕолѕоќтчеству(pMiddleName);
  If врѕол = 'м' then
  	bSex := True
  else if врѕол = 'ж' then
  	bSex := False
  else if врѕол = '-' then
  begin
  	вр–ез := pLastName + ' ' + pFirstName + ' ' + pMiddleName;
    nLen := Length(вр–ез);
	  StrPLCopy(pResult, вр–ез, nLen);
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
	‘амили€,
	»м€,
	ќтчество: string;
	вр–ез: String;
  врƒлина: Integer;
  —трана,
  врѕол,
	–ез‘амили€,
	–ез»м€: string;
  ќбработали—уществительноеƒолжности,
  ѕадеж: Byte;
begin
	скл»звлечь‘»ќ(pIF, »м€, ‘амили€, ќтчество);

	Result := 0;
  if (nPadeg < 1) or (nPadeg > 7) then
  begin
  	вр–ез := »м€ + ' ' + ‘амили€;
    nLen := Length(вр–ез);
	  StrPLCopy(pResult, вр–ез, nLen);
  	Result := -1;
    Exit;
  end;
  if bSex then
  	врѕол := 'м'
  else
  	врѕол := 'ж';

  —трана := 'UA';
  ѕадеж := nPadeg;

	–ез‘амили€ := скл—клон€ть—лово(‘амили€, врѕол, ќбработали—уществительноеƒолжности, ѕадеж, —трана, '‘');
	–ез»м€ := скл—клон€ть—лово(»м€, врѕол, ќбработали—уществительноеƒолжности, ѕадеж, —трана, '»');

	вр–ез := '';
	If ѕуста€—трока(–ез»м€) = 0 then begin
		вр–ез := вр–ез + –ез»м€;
	end;
	If ѕуста€—трока(–ез‘амили€) = 0 then begin
		If вр–ез <> '' then begin
			вр–ез := вр–ез + ' ';
		end;
		вр–ез := вр–ез + –ез‘амили€;
	end;

  врƒлина := Length(вр–ез);
  if врƒлина + 1 > nLen then
  begin
  	Result := -3;
  end;
  nLen := врƒлина;
  StrPLCopy(pResult, вр–ез, nLen);
end;

//-----------------------------------------------------
function GetFullAppointmentPadeg(
	pAppointment,
  pOffice: PChar;
  nPadeg: LongInt;
  pResult: PChar;
  var nLen: LongInt): Integer; stdcall; export;
var
	вр–ез: String;
  врƒлина: Integer;
begin
	Result := 0;
  if (nPadeg < 1) or (nPadeg > 7) then
  begin
  	вр–ез := pAppointment + ' ' + pOffice;
    nLen := Length(вр–ез);
	  StrPLCopy(pResult, вр–ез, nLen);
  	Result := -1;
    Exit;
  end;
	вр–ез := скл—клон€тьƒолжность(pAppointment, pOffice, 'м', nPadeg, 'UA');
  врƒлина := Length(вр–ез);
  if врƒлина + 1 > nLen then
  begin
  	Result := -3;
  end;
  nLen := врƒлина;
  StrPLCopy(pResult, вр–ез, nLen);
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
	врѕол: String;
begin
	врѕол := склќпределитьѕолѕоќтчеству(pMiddleName);
  if врѕол = 'м' then
  	Result := 1
  else if врѕол = 'ж' then
  	Result := 0
  else
  	Result := -1;
end;

//-----------------------------------------------------
function GetFIOParts(
	pFIO: PChar;
  Parts: PPartsFIO): Integer; stdcall; export;
var
	‘амили€,
	»м€,
	ќтчество: string;
  врƒлина: Integer;
begin
	Result := 0;
	скл»звлечь‘»ќ(pFIO, ‘амили€, »м€, ќтчество);
  Try
  	врƒлина := Length(»м€);
    if врƒлина + 1 > Parts.nFirstName then
    begin
      Result := -4;
    end;
    Parts.nFirstName := врƒлина;
    StrPLCopy(Parts.pFirstName, »м€, Parts.nFirstName);
  Except
  End;

  Try
  	врƒлина := Length(‘амили€);
    if врƒлина + 1 > Parts.nLastName then
    begin
      Result := -3;
    end;
    Parts.nLastName := врƒлина;
    StrPLCopy(Parts.pLastName, ‘амили€, Parts.nLastName);
  Except
  End;

  Try
  	врƒлина := Length(ќтчество);
    if врƒлина + 1 > Parts.nMiddleName then
    begin
      Result := -5;
    end;
    Parts.nMiddleName := врƒлина;
    StrPLCopy(Parts.pMiddleName, ќтчество, Parts.nMiddleName);
  Except
  End;

end;

//-----------------------------------------------------
function Update_Exceptions: Boolean; stdcall; export;
begin
	Result := ќбновить‘айл»сключений();
end;

//-----------------------------------------------------
function GetExceptionsFileName(
	pResult: PChar;
  var nLen: LongInt): Integer; stdcall; export;
var
  врƒлина: Integer;
begin
	Result := 0;
  врƒлина := Length(»м€‘айла»сключений);
  if врƒлина + 1 > nLen then
  begin
  	Result := -3;
  end;
  nLen := врƒлина;
  StrPLCopy(pResult, »м€‘айла»сключений, nLen);
end;

//-----------------------------------------------------
function SetDictionary(FileName: PChar): Boolean; stdcall; export;
begin
  »м€‘айла»сключений := FileName;
	Result := ќбновить‘айл»сключений();
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
