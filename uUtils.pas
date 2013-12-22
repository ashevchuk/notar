unit uUtils;

interface

function ValidateObj(Obj: TObject): Pointer;

implementation

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

end.
