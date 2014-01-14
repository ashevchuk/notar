unit IMPORT_Math;
interface
uses
  Math,
  SysUtils,
  Classes,
  PaxCompiler,
  PaxProgram,
  PAXCOMP_CONSTANTS;

procedure RegisterForPaxCompiler(C: TPaxCompiler; L1, L2: TList);
procedure RegisterForPaxProgram(P: TPaxProgram; L1, L2: TList);

implementation

// TRIGONOMETRY ROUTINES ///////////////////////////////////////////////////////

procedure RegisterForPaxProgram(P: TPaxProgram; L1, L2: TList);
var
  I: Integer;
begin
  if L1.Count <> L2.Count then
    raise Exception.Create('Error');

  for I:=0 to L1.Count - 1 do
    P.SetAddress(Integer(L1[I]), L2[I]);
end;

function _ArcCos(const X: Double): Double;
begin
  result := ArcCos(X);
end;

procedure RegisterForPaxCompiler(C: TPaxCompiler; L1, L2: TList);
var
  H_Namespace, H: Integer;
begin
// TRIGONOMETRY ROUTINES ///////////////////////////////////////////////////////

  H_Namespace := C.RegisterNamespace(0, 'Math');

  H := C.RegisterRoutine(H_Namespace, 'ArcCos', typeDOUBLE, ccREGISTER);
  C.RegisterParameter(H, typeDOUBLE);
  L1.Add(Pointer(H));
  L2.Add(@_ArcCos);
end;

end.
