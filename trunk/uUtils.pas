unit uUtils;

interface

function ValidateObj(Obj: TObject): Pointer;
function IsPathRelative(APath: string): boolean;
function AddPathDelim(APath: string): string;
function ObjectToVariant(const AObject: TObject): Variant;

implementation
uses System.SysUtils;

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
