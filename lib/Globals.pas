unit Globals;

interface
uses SysUtils, Data.DB, FIBDataSet, pFIBDataSet;

function DatePart(ADate: TDateTime; APart: Char): Word;
function DatePartStr(ADate: TDateTime; APart: Char): String;
function FieldByName(ADataSet: TpFIBDataSet; AFieldName: string): string;
function DSisEOF(ADataSet: TpFIBDataSet): Boolean;
function DSisBOF(ADataSet: TpFIBDataSet): Boolean;
function DSIsEmpty(ADataSet: TpFIBDataSet): Boolean;
function DSRecCount(ADataSet: TpFIBDataSet): Integer;
function DSRecNo(ADataSet: TpFIBDataSet): Integer;
function ifFalse(AValue: Boolean; AResultString: string): string;
function ifTrue(AValue: Boolean; AResultString: string): string;
function ifSingle(ACheckValue: integer; AResultString: string): string;
function ifNone(ACheckValue: integer; AResultString: string): string;
function ifMore(ACheckValue: integer; AResultString: string): string;
function ifAny(ACheckValue: integer; AResultString: string): string;
function ifFieldEq(ADataSet: TpFIBDataSet; AFieldName: string; AValue: string; AResultString: string): string;
function Count(ADataSet: TpFIBDataSet): Integer;

implementation

function DatePart(ADate: TDateTime; APart: Char): Word;
var Year, Month, Day: Word;
begin
  DecodeDate(ADate, Year, Month, Day);

  case APart of
    'Y': Result := Year;
    'M': Result := Month;
    'D': Result := Day;
  end;
end;

function DatePartStr(ADate: TDateTime; APart: Char): String;
var Year, Month, Day: Word;
begin
  DecodeDate(ADate, Year, Month, Day);

  case APart of
    'Y': Result := IntToStr(Year);
    'M': Result := IntToStr(Month);
    'D': Result := IntToStr(Day);
  end;
end;

function FieldByName(ADataSet: TpFIBDataSet; AFieldName: string): string;
begin
  Result := ADataSet.FieldByName(AFieldName).AsString;
end;

function Count(ADataSet: TpFIBDataSet): Integer;
begin
  Result := ADataSet.RecordCount;
end;

function DSisEOF(ADataSet: TpFIBDataSet): Boolean;
begin
  //Result := ADataSet.Eof;
  Result := ADataSet.RecNo = ADataSet.RecordCount;
end;

function DSisBOF(ADataSet: TpFIBDataSet): Boolean;
begin
  Result := ADataSet.Bof;
//  Result := ADataSet.RecNo = 1;
end;

function DSIsEmpty(ADataSet: TpFIBDataSet): Boolean;
begin
  Result := ADataSet.AllRecordCount = 0;
end;

function DSRecCount(ADataSet: TpFIBDataSet): Integer;
begin
  Result := ADataSet.RecordCount;
end;

function DSRecNo(ADataSet: TpFIBDataSet): Integer;
begin
  Result := ADataSet.RecNo;
end;

function ifFalse(AValue: Boolean; AResultString: string): string;
begin
  if AValue = False then
    Result := AResultString
  else Result := '';
end;

function ifTrue(AValue: Boolean; AResultString: string): string;
begin
  if AValue = True then
    Result := AResultString
  else Result := '';
end;

function ifSingle(ACheckValue: integer; AResultString: string): string;
begin
  if ACheckValue = 1 then
    Result := AResultString
  else Result := '';
end;

function ifNone(ACheckValue: integer; AResultString: string): string;
begin
  if ACheckValue = 0 then
    Result := AResultString
  else Result := '';
end;

function ifMore(ACheckValue: integer; AResultString: string): string;
begin
  if ACheckValue > 1 then
    Result := AResultString
  else Result := '';
end;

function ifAny(ACheckValue: integer; AResultString: string): string;
begin
  if ACheckValue > 0 then
    Result := AResultString
  else Result := '';
end;

function ifFieldEq(ADataSet: TpFIBDataSet; AFieldName: string; AValue: string; AResultString: string): string;
begin
  if ADataSet.FieldByName(AFieldName).AsString = AValue then
    Result := AResultString
  else Result := '';
end;

end.
