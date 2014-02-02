uses SysUtils;

const
  Month_Case_Nominative_Array: array[1..12] of string = (
    'січень', 'лютий', 'березень', 'квітень', 'травень', 'червень', 'липень', 'серпень', 'вересень', 'жовтень', 'листопад', 'грудень'
  );

const
  Month_Case_Genitive_Array: array[1..12] of string = (
    'січня', 'лютого', 'березня', 'квітеня', 'травня', 'червеня', 'липня', 'серпня', 'вересеня', 'жовтеня', 'листопада', 'грудня'
  );

function Month_Case_Genitive(Date: TDateTime): String;
var Year, Month, Day: Word;
begin
  DecodeDate(Date, Year, Month, Day);
  Result := Month_Case_Genitive_Array[Month];
end;

function Month_Case_Nominative(Date: TDateTime): String;
var Year, Month, Day: Word;
begin
  DecodeDate(Date, Year, Month, Day);
  Result := Month_Case_Nominative_Array[Month];
end;

function DatePart(Date: TDateTime; Part: Char): Word;
var Year, Month, Day: Word;
begin
  DecodeDate(Date, Year, Month, Day);

  case UpperCase(Part) of
    'Y': Result := Year;
    'M': Result := Month;
    'D': Result := Day;
  end;
end;

function FieldByName(ADataSet: TpFIBDataSet; AFieldName: string): string; cdecl;
begin
  Result := ADataSet.FieldByName(AFieldName).AsString;
end;

function Count(ADataSet: TpFIBDataSet): Integer; cdecl;
begin
  Result := ADataSet.RecordCount;
end;

function DSisEOF(ADataSet: TpFIBDataSet): Boolean; cdecl;
begin
  //Result := ADataSet.Eof;
  Result := ADataSet.RecNo = ADataSet.RecordCount;
end;

function DSisBOF(ADataSet: TpFIBDataSet): Boolean; cdecl;
begin
  Result := ADataSet.Bof;
//  Result := ADataSet.RecNo = 1;
end;

function DSIsEmpty(ADataSet: TpFIBDataSet): Boolean; cdecl;
begin
  Result := ADataSet.AllRecordCount = 0;
end;

function DSRecCount(ADataSet: TpFIBDataSet): Integer; cdecl;
begin
  Result := ADataSet.RecordCount;
end;

function DSRecNo(ADataSet: TpFIBDataSet): Integer; cdecl;
begin
  Result := ADataSet.RecNo;
end;

function ifFalse(AValue: Boolean; AResultString: string): string; cdecl;
begin
  if AValue = False then
    Result := AResultString
  else Result := '';
end;

function ifTrue(AValue: Boolean; AResultString: string): string; cdecl;
begin
  if AValue = True then
    Result := AResultString
  else Result := '';
end;

function RepresentativesCount: Integer; cdecl;
begin
  Result := Representatives.RecordCount;
end;

function ifSingle(ACheckValue: integer; AResultString: string): string; cdecl;
begin
  if ACheckValue = 1 then
    Result := AResultString
  else Result := '';
end;

function ifNone(ACheckValue: integer; AResultString: string): string; cdecl;
begin
  if ACheckValue = 0 then
    Result := AResultString
  else Result := '';
end;

function ifMore(ACheckValue: integer; AResultString: string): string; cdecl;
begin
  if ACheckValue > 1 then
    Result := AResultString
  else Result := '';
end;

function ifAny(ACheckValue: integer; AResultString: string): string; cdecl;
begin
  if ACheckValue > 0 then
    Result := AResultString
  else Result := '';
end;

function ifFieldEq(ADataSet: TpFIBDataSet; AFieldName: string; AValue: string; AResultString: string): string; cdecl;
begin
  if ADataSet.FieldByName(AFieldName).AsString = AValue then
    Result := AResultString
  else Result := '';
end;
{
procedure DSFirst(ADataSet: TpFIBDataSet); cdecl;
begin
  ADataSet.First;
end;

procedure DSLast(ADataSet: TpFIBDataSet); cdecl;
begin
  ADataSet.Last;
end;

procedure DSNext(ADataSet: TpFIBDataSet); cdecl;
begin
  ADataSet.Next;
end;

procedure DSFPrior(ADataSet: TpFIBDataSet); cdecl;
begin
  ADataSet.Prior;
end;
}

begin
end.