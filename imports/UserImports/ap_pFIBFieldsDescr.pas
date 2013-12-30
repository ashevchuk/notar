{***************************************************************************}
{ This source code was generated automatically by                           }
{ Pas file import tool for Scripter Studio (Pro)                            }
{                                                                           }
{ Scripter Studio and Pas file import tool for Scripter Studio              }
{ written by TMS Software                                                   }
{            copyright © 1997 - 2010                                        }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{***************************************************************************}
unit ap_pFIBFieldsDescr;

interface

uses
  Classes,
  IB_Externals,
  pFIBFieldsDescr,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatpFIBFieldsDescrLibrary = class(TatScripterLibrary)
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TFIBFieldDescrListClass = class of TFIBFieldDescrList;


  TFIBFieldDescrWrapper = class(TatRecordWrapper)
  private
    FfdDataType: Short;
    FfdDataScale: Short;
    FfdNullable: Boolean;
    FfdDataSize: Short;
    FfdDataOfs: Integer;
    FfdIsDBKey: boolean;
    FfdIsSeparateString: boolean;
    FfdStrIndex: integer;
    FfdAddedFields: TAddedTypeFields;
    FfdSubType: Short;
    FfdRelationTable: Ansistring;
    FfdRelationField: Ansistring;
    FfdTableAlias: Ansistring;
  public
    constructor Create(ARecord: TFIBFieldDescr);
    function ObjToRec: TFIBFieldDescr;
  published
    property fdDataType: Short read FfdDataType write FfdDataType;
    property fdDataScale: Short read FfdDataScale write FfdDataScale;
    property fdNullable: Boolean read FfdNullable write FfdNullable;
    property fdDataSize: Short read FfdDataSize write FfdDataSize;
    property fdDataOfs: Integer read FfdDataOfs write FfdDataOfs;
    property fdIsDBKey: boolean read FfdIsDBKey write FfdIsDBKey;
    property fdIsSeparateString: boolean read FfdIsSeparateString write FfdIsSeparateString;
    property fdStrIndex: integer read FfdStrIndex write FfdStrIndex;
    property fdAddedFields: TAddedTypeFields read FfdAddedFields write FfdAddedFields;
    property fdSubType: Short read FfdSubType write FfdSubType;
    property fdRelationTable: Ansistring read FfdRelationTable write FfdRelationTable;
    property fdRelationField: Ansistring read FfdRelationField write FfdRelationField;
    property fdTableAlias: Ansistring read FfdTableAlias write FfdTableAlias;
  end;
  

implementation

constructor TFIBFieldDescrWrapper.Create(ARecord: TFIBFieldDescr);
begin
  inherited Create;
  FfdDataType := ARecord.fdDataType;
  FfdDataScale := ARecord.fdDataScale;
  FfdNullable := ARecord.fdNullable;
  FfdDataSize := ARecord.fdDataSize;
  FfdDataOfs := ARecord.fdDataOfs;
  FfdIsDBKey := ARecord.fdIsDBKey;
  FfdIsSeparateString := ARecord.fdIsSeparateString;
  FfdStrIndex := ARecord.fdStrIndex;
  FfdAddedFields := ARecord.fdAddedFields;
  FfdSubType := ARecord.fdSubType;
  FfdRelationTable := ARecord.fdRelationTable;
  FfdRelationField := ARecord.fdRelationField;
  FfdTableAlias := ARecord.fdTableAlias;
end;

function TFIBFieldDescrWrapper.ObjToRec: TFIBFieldDescr;
begin
  result.fdDataType := FfdDataType;
  result.fdDataScale := FfdDataScale;
  result.fdNullable := FfdNullable;
  result.fdDataSize := FfdDataSize;
  result.fdDataOfs := FfdDataOfs;
  result.fdIsDBKey := FfdIsDBKey;
  result.fdIsSeparateString := FfdIsSeparateString;
  result.fdStrIndex := FfdStrIndex;
  result.fdAddedFields := FfdAddedFields;
  result.fdSubType := FfdSubType;
  result.fdRelationTable := FfdRelationTable;
  result.fdRelationField := FfdRelationField;
  result.fdTableAlias := FfdTableAlias;
end;



procedure TatpFIBFieldsDescrLibrary.Init;
begin
  Scripter.DefineRecordByRTTI(TypeInfo(TFIBFieldDescr));
  Scripter.DefineClassByRTTI(TFIBFieldDescrList);
  With Scripter.DefineClass(ClassType) do
  begin
    AddConstant('atfStandard',atfStandard);
    AddConstant('atfGuidField',atfGuidField);
    AddConstant('atfWideStringField',atfWideStringField);
  end;
end;

class function TatpFIBFieldsDescrLibrary.LibraryName: string;
begin
  result := 'pFIBFieldsDescr';
end;

initialization
  RegisterScripterLibrary(TatpFIBFieldsDescrLibrary, True);

{$WARNINGS ON}

end.

