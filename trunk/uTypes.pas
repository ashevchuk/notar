unit uTypes;

interface

uses Variants;

type
  TCatalogSelectorCallback = procedure(AID: Variant) of object;

  TIdStorage = class(TObject)
    constructor Create; overload;
    constructor Create(AID: Variant); overload;
    private
      FID: Variant;
    public
      function getID: Variant;
      function setID(AID: Variant): Variant;
  end;

implementation

{ TIdStorage }

constructor TIdStorage.Create;
begin
  inherited;
end;

constructor TIdStorage.Create(AID: Variant);
begin
  inherited Create;
  FID := AID;
end;

function TIdStorage.getID: Variant;
begin
  Result := FID;
end;

function TIdStorage.setID(AID: Variant): Variant;
begin
  FID := AID;
  Result := FID;
end;

end.
