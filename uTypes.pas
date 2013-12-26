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
      function getID: Variant;
      procedure setID(AID: Variant);
    public
      property ID: Variant read getID write setID;
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

procedure TIdStorage.setID(AID: Variant);
begin
  FID := AID;
end;

end.
