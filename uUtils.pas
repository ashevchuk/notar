unit uUtils;

interface

type
 TCharSet = set of Char;

function ValidateObj(Obj: TObject): Pointer;
function IsPathRelative(APath: string): boolean;
function AddPathDelim(APath: string): string;
function ObjectToVariant(const AObject: TObject): Variant;

function WordPosition(const N: Integer; const S: string; const WordDelims: TCharSet): Integer;
function ExtractWord(N: Integer; const S: string; const WordDelims: TCharSet): string;

implementation
uses System.SysUtils;

function WordPosition(const N: Integer; const S: string; const WordDelims: TCharSet): Integer;
var
 Count, I: Integer;
begin
 Count := 0;
 I := 1;
 Result := 0;
 while (I <= Length(S)) and (Count <> N) do begin
   { skip over delimiters }
   while (I <= Length(S)) and (S[I] in WordDelims) do Inc(I);
   { if we"re not beyond end of S, we"re at the start of a word }
   if I <= Length(S) then Inc(Count);
   { if not finished, find the end of the current word }
   if Count <> N then
     while (I <= Length(S)) and not (S[I] in WordDelims) do Inc(I)
   else Result := I;
 end;
end;

function ExtractWord(N: Integer; const S: string; const WordDelims: TCharSet): string;
var
 I: Integer;
 Len: Integer;
begin
 Len := 0;
 I := WordPosition(N, S, WordDelims);
 if I <> 0 then
   { find the end of the current word }
   while (I <= Length(S)) and not(S[I] in WordDelims) do begin
     { add the I"th character to result }
     Inc(Len);
     SetLength(Result, Len);
     Result[Len] := S[I];
     Inc(I);
   end;
 SetLength(Result, Len);
end;

function ObjectToVariant(const AObject: TObject): Variant;
begin
  Result := IntToStr(Integer(Pointer(AObject)));
end;


function ValidateObj(Obj: TObject): Pointer;
begin
  Result := Obj;
  if Assigned(Result) then
    try
      if Pointer(PPointer(Obj)^) <> Pointer(Pointer(Cardinal(PPointer(Obj)^) + Cardinal(vmtSelfPtr))^) then Result := nil;
    except
      Result := nil;
    end;
end;

function IsPathRelative(APath: string): boolean;
begin
  result := true;
  if Length(APath) > 0 then
  begin
    if IsPathDelimiter(APath, 1) then
    begin
      result := false;
      exit;
    end;
    if ExtractFileDrive(APath) <> '' then
    begin
      result := false;
      exit;
    end;
  end;
end;

function AddPathDelim(APath: string): string;
begin
  result := IncludeTrailingBackslash(APath);
end;

end.
