{***************************************************************************}
{ This source code was generated automatically by                           }
{ Pas file import tool for Scripter Studio (Pro)                            }
{                                                                           }
{ Scripter Studio and Pas file import tool for Scripter Studio              }
{ written by TMS Software                                                   }
{            copyright � 1997 - 2010                                        }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{***************************************************************************}
unit ap_WideStrings;

interface

uses
  Classes,
  SysUtils,
  WideStrings,
  Variants,
  atScript;

{$WARNINGS OFF}

type
  TatWideStringsLibrary = class(TatScripterLibrary)
    procedure __TWideStringsEnumeratorCreate(AMachine: TatVirtualMachine);
    procedure __TWideStringsEnumeratorGetCurrent(AMachine: TatVirtualMachine);
    procedure __TWideStringsEnumeratorMoveNext(AMachine: TatVirtualMachine);
    procedure __GetTWideStringsEnumeratorCurrent(AMachine: TatVirtualMachine);
    procedure __TWideStringsDestroy(AMachine: TatVirtualMachine);
    procedure __TWideStringsAdd(AMachine: TatVirtualMachine);
    procedure __TWideStringsAddObject(AMachine: TatVirtualMachine);
    procedure __TWideStringsAppend(AMachine: TatVirtualMachine);
    procedure __TWideStringsAddStrings(AMachine: TatVirtualMachine);
    procedure __TWideStringsAssign(AMachine: TatVirtualMachine);
    procedure __TWideStringsBeginUpdate(AMachine: TatVirtualMachine);
    procedure __TWideStringsClear(AMachine: TatVirtualMachine);
    procedure __TWideStringsDelete(AMachine: TatVirtualMachine);
    procedure __TWideStringsEndUpdate(AMachine: TatVirtualMachine);
    procedure __TWideStringsEquals(AMachine: TatVirtualMachine);
    procedure __TWideStringsExchange(AMachine: TatVirtualMachine);
    procedure __TWideStringsGetEnumerator(AMachine: TatVirtualMachine);
    procedure __TWideStringsGetText(AMachine: TatVirtualMachine);
    procedure __TWideStringsIndexOf(AMachine: TatVirtualMachine);
    procedure __TWideStringsIndexOfName(AMachine: TatVirtualMachine);
    procedure __TWideStringsIndexOfObject(AMachine: TatVirtualMachine);
    procedure __TWideStringsInsert(AMachine: TatVirtualMachine);
    procedure __TWideStringsInsertObject(AMachine: TatVirtualMachine);
    procedure __TWideStringsLoadFromFile(AMachine: TatVirtualMachine);
    procedure __TWideStringsLoadFromStream(AMachine: TatVirtualMachine);
    procedure __TWideStringsMove(AMachine: TatVirtualMachine);
    procedure __TWideStringsSaveToFile(AMachine: TatVirtualMachine);
    procedure __TWideStringsSaveToStream(AMachine: TatVirtualMachine);
    procedure __TWideStringsSetText(AMachine: TatVirtualMachine);
    procedure __GetTWideStringsCapacity(AMachine: TatVirtualMachine);
    procedure __SetTWideStringsCapacity(AMachine: TatVirtualMachine);
    procedure __GetTWideStringsCommaText(AMachine: TatVirtualMachine);
    procedure __SetTWideStringsCommaText(AMachine: TatVirtualMachine);
    procedure __GetTWideStringsCount(AMachine: TatVirtualMachine);
    procedure __GetTWideStringsDelimiter(AMachine: TatVirtualMachine);
    procedure __SetTWideStringsDelimiter(AMachine: TatVirtualMachine);
    procedure __GetTWideStringsDelimitedText(AMachine: TatVirtualMachine);
    procedure __SetTWideStringsDelimitedText(AMachine: TatVirtualMachine);
    procedure __GetTWideStringsLineBreak(AMachine: TatVirtualMachine);
    procedure __SetTWideStringsLineBreak(AMachine: TatVirtualMachine);
    procedure __GetTWideStringsNames(AMachine: TatVirtualMachine);
    procedure __GetTWideStringsObjects(AMachine: TatVirtualMachine);
    procedure __SetTWideStringsObjects(AMachine: TatVirtualMachine);
    procedure __GetTWideStringsQuoteChar(AMachine: TatVirtualMachine);
    procedure __SetTWideStringsQuoteChar(AMachine: TatVirtualMachine);
    procedure __GetTWideStringsValues(AMachine: TatVirtualMachine);
    procedure __SetTWideStringsValues(AMachine: TatVirtualMachine);
    procedure __GetTWideStringsValueFromIndex(AMachine: TatVirtualMachine);
    procedure __SetTWideStringsValueFromIndex(AMachine: TatVirtualMachine);
    procedure __GetTWideStringsNameValueSeparator(AMachine: TatVirtualMachine);
    procedure __SetTWideStringsNameValueSeparator(AMachine: TatVirtualMachine);
    procedure __GetTWideStringsStrictDelimiter(AMachine: TatVirtualMachine);
    procedure __SetTWideStringsStrictDelimiter(AMachine: TatVirtualMachine);
    procedure __GetTWideStringsStrings(AMachine: TatVirtualMachine);
    procedure __SetTWideStringsStrings(AMachine: TatVirtualMachine);
    procedure __GetTWideStringsText(AMachine: TatVirtualMachine);
    procedure __SetTWideStringsText(AMachine: TatVirtualMachine);
    procedure __TWideStringListCreate(AMachine: TatVirtualMachine);
    procedure __TWideStringListDestroy(AMachine: TatVirtualMachine);
    procedure __TWideStringListAdd(AMachine: TatVirtualMachine);
    procedure __TWideStringListAddObject(AMachine: TatVirtualMachine);
    procedure __TWideStringListClear(AMachine: TatVirtualMachine);
    procedure __TWideStringListDelete(AMachine: TatVirtualMachine);
    procedure __TWideStringListExchange(AMachine: TatVirtualMachine);
    procedure __TWideStringListFind(AMachine: TatVirtualMachine);
    procedure __TWideStringListIndexOf(AMachine: TatVirtualMachine);
    procedure __TWideStringListInsert(AMachine: TatVirtualMachine);
    procedure __TWideStringListInsertObject(AMachine: TatVirtualMachine);
    procedure __TWideStringListSort(AMachine: TatVirtualMachine);
    procedure __GetTWideStringListDuplicates(AMachine: TatVirtualMachine);
    procedure __SetTWideStringListDuplicates(AMachine: TatVirtualMachine);
    procedure __GetTWideStringListSorted(AMachine: TatVirtualMachine);
    procedure __SetTWideStringListSorted(AMachine: TatVirtualMachine);
    procedure __GetTWideStringListCaseSensitive(AMachine: TatVirtualMachine);
    procedure __SetTWideStringListCaseSensitive(AMachine: TatVirtualMachine);
    procedure __GetTWideStringListOwnsObjects(AMachine: TatVirtualMachine);
    procedure __SetTWideStringListOwnsObjects(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TWideStringsEnumeratorClass = class of TWideStringsEnumerator;
  TWideStringsClass = class of TWideStrings;
  TWideStringListClass = class of TWideStringList;


  TWideStringItemWrapper = class(TatRecordWrapper)
  private
    FFString: WideString;
    FFObject: TObject;
  public
    constructor Create(ARecord: TWideStringItem);
    function ObjToRec: TWideStringItem;
  published
    property FString: WideString read FFString write FFString;
    property FObject: TObject read FFObject write FFObject;
  end;
  

implementation

constructor TWideStringItemWrapper.Create(ARecord: TWideStringItem);
begin
  inherited Create;
  FFString := ARecord.FString;
  FFObject := ARecord.FObject;
end;

function TWideStringItemWrapper.ObjToRec: TWideStringItem;
begin
  result.FString := FFString;
  result.FObject := FFObject;
end;



procedure TatWideStringsLibrary.__TWideStringsEnumeratorCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TWideStringsEnumeratorClass(CurrentClass.ClassRef).Create(TWideStrings(Integer(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStringsLibrary.__TWideStringsEnumeratorGetCurrent(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TWideStringsEnumerator(CurrentObject).GetCurrent;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStringsLibrary.__TWideStringsEnumeratorMoveNext(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TWideStringsEnumerator(CurrentObject).MoveNext;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStringsLibrary.__GetTWideStringsEnumeratorCurrent(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TWideStringsEnumerator(CurrentObject).Current);
  end;
end;

procedure TatWideStringsLibrary.__TWideStringsDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStrings(CurrentObject).Destroy;
  end;
end;

procedure TatWideStringsLibrary.__TWideStringsAdd(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TWideStrings(CurrentObject).Add(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStringsLibrary.__TWideStringsAddObject(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TWideStrings(CurrentObject).AddObject(GetInputArg(0),TObject(Integer(GetInputArg(1)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStringsLibrary.__TWideStringsAppend(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStrings(CurrentObject).Append(GetInputArg(0));
  end;
end;

procedure TatWideStringsLibrary.__TWideStringsAddStrings(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStrings(CurrentObject).AddStrings(TStrings(Integer(GetInputArg(0))));
  end;
end;

procedure TatWideStringsLibrary.__TWideStringsAssign(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStrings(CurrentObject).Assign(TPersistent(Integer(GetInputArg(0))));
  end;
end;

procedure TatWideStringsLibrary.__TWideStringsBeginUpdate(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStrings(CurrentObject).BeginUpdate;
  end;
end;

procedure TatWideStringsLibrary.__TWideStringsClear(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStrings(CurrentObject).Clear;
  end;
end;

procedure TatWideStringsLibrary.__TWideStringsDelete(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStrings(CurrentObject).Delete(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatWideStringsLibrary.__TWideStringsEndUpdate(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStrings(CurrentObject).EndUpdate;
  end;
end;

procedure TatWideStringsLibrary.__TWideStringsEquals(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TWideStrings(CurrentObject).Equals(TWideStrings(Integer(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStringsLibrary.__TWideStringsExchange(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStrings(CurrentObject).Exchange(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)));
  end;
end;

procedure TatWideStringsLibrary.__TWideStringsGetEnumerator(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TWideStrings(CurrentObject).GetEnumerator);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStringsLibrary.__TWideStringsGetText(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := WideCharToString(TWideStrings(CurrentObject).GetText);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStringsLibrary.__TWideStringsIndexOf(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TWideStrings(CurrentObject).IndexOf(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStringsLibrary.__TWideStringsIndexOfName(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TWideStrings(CurrentObject).IndexOfName(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStringsLibrary.__TWideStringsIndexOfObject(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TWideStrings(CurrentObject).IndexOfObject(TObject(Integer(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStringsLibrary.__TWideStringsInsert(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStrings(CurrentObject).Insert(VarToInteger(GetInputArg(0)),GetInputArg(1));
  end;
end;

procedure TatWideStringsLibrary.__TWideStringsInsertObject(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStrings(CurrentObject).InsertObject(VarToInteger(GetInputArg(0)),GetInputArg(1),TObject(Integer(GetInputArg(2))));
  end;
end;

procedure TatWideStringsLibrary.__TWideStringsLoadFromFile(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStrings(CurrentObject).LoadFromFile(GetInputArg(0));
  end;
end;

procedure TatWideStringsLibrary.__TWideStringsLoadFromStream(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStrings(CurrentObject).LoadFromStream(TStream(Integer(GetInputArg(0))));
  end;
end;

procedure TatWideStringsLibrary.__TWideStringsMove(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStrings(CurrentObject).Move(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)));
  end;
end;

procedure TatWideStringsLibrary.__TWideStringsSaveToFile(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStrings(CurrentObject).SaveToFile(GetInputArg(0));
  end;
end;

procedure TatWideStringsLibrary.__TWideStringsSaveToStream(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStrings(CurrentObject).SaveToStream(TStream(Integer(GetInputArg(0))));
  end;
end;

procedure TatWideStringsLibrary.__TWideStringsSetText(AMachine: TatVirtualMachine);
  var
  Param0Buf: array of WideChar;
begin
  with AMachine do
  begin
SetLength(Param0Buf, Length(VarToStr(GetInputArg(0))) + 1);
    TWideStrings(CurrentObject).SetText(StringToWideChar(VarToStr(GetInputArg(0)),@Param0Buf[0],Length(Param0Buf)));
  end;
end;

procedure TatWideStringsLibrary.__GetTWideStringsCapacity(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TWideStrings(CurrentObject).Capacity));
  end;
end;

procedure TatWideStringsLibrary.__SetTWideStringsCapacity(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStrings(CurrentObject).Capacity:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatWideStringsLibrary.__GetTWideStringsCommaText(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TWideStrings(CurrentObject).CommaText);
  end;
end;

procedure TatWideStringsLibrary.__SetTWideStringsCommaText(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStrings(CurrentObject).CommaText:=GetInputArg(0);
  end;
end;

procedure TatWideStringsLibrary.__GetTWideStringsCount(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TWideStrings(CurrentObject).Count));
  end;
end;

procedure TatWideStringsLibrary.__GetTWideStringsDelimiter(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(WideCharToString(PWideChar(TWideStrings(CurrentObject).Delimiter)));
  end;
end;

procedure TatWideStringsLibrary.__SetTWideStringsDelimiter(AMachine: TatVirtualMachine);
  var
  TempVarBuf: array of WideChar;
begin
  with AMachine do
  begin
    SetLength(TempVarBuf, Length(VarToStr(GetInputArg(0))) + 1);
    TWideStrings(CurrentObject).Delimiter:=StringToWideChar(VarToStr(GetInputArg(0)),@TempVarBuf[0],Length(TempVarBuf))^;
  end;
end;

procedure TatWideStringsLibrary.__GetTWideStringsDelimitedText(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TWideStrings(CurrentObject).DelimitedText);
  end;
end;

procedure TatWideStringsLibrary.__SetTWideStringsDelimitedText(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStrings(CurrentObject).DelimitedText:=GetInputArg(0);
  end;
end;

procedure TatWideStringsLibrary.__GetTWideStringsLineBreak(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TWideStrings(CurrentObject).LineBreak);
  end;
end;

procedure TatWideStringsLibrary.__SetTWideStringsLineBreak(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStrings(CurrentObject).LineBreak:=GetInputArg(0);
  end;
end;

procedure TatWideStringsLibrary.__GetTWideStringsNames(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TWideStrings(CurrentObject).Names[VarToInteger(GetArrayIndex(0))]);
  end;
end;

procedure TatWideStringsLibrary.__GetTWideStringsObjects(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TWideStrings(CurrentObject).Objects[VarToInteger(GetArrayIndex(0))]));
  end;
end;

procedure TatWideStringsLibrary.__SetTWideStringsObjects(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStrings(CurrentObject).Objects[VarToInteger(GetArrayIndex(0))]:=TObject(Integer(GetInputArg(0)));
  end;
end;

procedure TatWideStringsLibrary.__GetTWideStringsQuoteChar(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(WideCharToString(PWideChar(TWideStrings(CurrentObject).QuoteChar)));
  end;
end;

procedure TatWideStringsLibrary.__SetTWideStringsQuoteChar(AMachine: TatVirtualMachine);
  var
  TempVarBuf: array of WideChar;
begin
  with AMachine do
  begin
    SetLength(TempVarBuf, Length(VarToStr(GetInputArg(0))) + 1);
    TWideStrings(CurrentObject).QuoteChar:=StringToWideChar(VarToStr(GetInputArg(0)),@TempVarBuf[0],Length(TempVarBuf))^;
  end;
end;

procedure TatWideStringsLibrary.__GetTWideStringsValues(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TWideStrings(CurrentObject).Values[GetArrayIndex(0)]);
  end;
end;

procedure TatWideStringsLibrary.__SetTWideStringsValues(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStrings(CurrentObject).Values[GetArrayIndex(0)]:=GetInputArg(0);
  end;
end;

procedure TatWideStringsLibrary.__GetTWideStringsValueFromIndex(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TWideStrings(CurrentObject).ValueFromIndex[VarToInteger(GetArrayIndex(0))]);
  end;
end;

procedure TatWideStringsLibrary.__SetTWideStringsValueFromIndex(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStrings(CurrentObject).ValueFromIndex[VarToInteger(GetArrayIndex(0))]:=GetInputArg(0);
  end;
end;

procedure TatWideStringsLibrary.__GetTWideStringsNameValueSeparator(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(WideCharToString(PWideChar(TWideStrings(CurrentObject).NameValueSeparator)));
  end;
end;

procedure TatWideStringsLibrary.__SetTWideStringsNameValueSeparator(AMachine: TatVirtualMachine);
  var
  TempVarBuf: array of WideChar;
begin
  with AMachine do
  begin
    SetLength(TempVarBuf, Length(VarToStr(GetInputArg(0))) + 1);
    TWideStrings(CurrentObject).NameValueSeparator:=StringToWideChar(VarToStr(GetInputArg(0)),@TempVarBuf[0],Length(TempVarBuf))^;
  end;
end;

procedure TatWideStringsLibrary.__GetTWideStringsStrictDelimiter(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TWideStrings(CurrentObject).StrictDelimiter);
  end;
end;

procedure TatWideStringsLibrary.__SetTWideStringsStrictDelimiter(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStrings(CurrentObject).StrictDelimiter:=GetInputArg(0);
  end;
end;

procedure TatWideStringsLibrary.__GetTWideStringsStrings(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TWideStrings(CurrentObject).Strings[VarToInteger(GetArrayIndex(0))]);
  end;
end;

procedure TatWideStringsLibrary.__SetTWideStringsStrings(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStrings(CurrentObject).Strings[VarToInteger(GetArrayIndex(0))]:=GetInputArg(0);
  end;
end;

procedure TatWideStringsLibrary.__GetTWideStringsText(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TWideStrings(CurrentObject).Text);
  end;
end;

procedure TatWideStringsLibrary.__SetTWideStringsText(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStrings(CurrentObject).Text:=GetInputArg(0);
  end;
end;

procedure TatWideStringsLibrary.__TWideStringListCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TWideStringListClass(CurrentClass.ClassRef).Create);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStringsLibrary.__TWideStringListDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStringList(CurrentObject).Destroy;
  end;
end;

procedure TatWideStringsLibrary.__TWideStringListAdd(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TWideStringList(CurrentObject).Add(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStringsLibrary.__TWideStringListAddObject(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TWideStringList(CurrentObject).AddObject(GetInputArg(0),TObject(Integer(GetInputArg(1)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStringsLibrary.__TWideStringListClear(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStringList(CurrentObject).Clear;
  end;
end;

procedure TatWideStringsLibrary.__TWideStringListDelete(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStringList(CurrentObject).Delete(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatWideStringsLibrary.__TWideStringListExchange(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStringList(CurrentObject).Exchange(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)));
  end;
end;

procedure TatWideStringsLibrary.__TWideStringListFind(AMachine: TatVirtualMachine);
  var
  Param1: Integer;
  AResult: variant;
begin
  with AMachine do
  begin
Param1 := VarToInteger(GetInputArg(1));
AResult := TWideStringList(CurrentObject).Find(GetInputArg(0),Param1);
    ReturnOutputArg(AResult);
    SetInputArg(1,Integer(Param1));
  end;
end;

procedure TatWideStringsLibrary.__TWideStringListIndexOf(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TWideStringList(CurrentObject).IndexOf(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatWideStringsLibrary.__TWideStringListInsert(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStringList(CurrentObject).Insert(VarToInteger(GetInputArg(0)),GetInputArg(1));
  end;
end;

procedure TatWideStringsLibrary.__TWideStringListInsertObject(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStringList(CurrentObject).InsertObject(VarToInteger(GetInputArg(0)),GetInputArg(1),TObject(Integer(GetInputArg(2))));
  end;
end;

procedure TatWideStringsLibrary.__TWideStringListSort(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStringList(CurrentObject).Sort;
  end;
end;

procedure TatWideStringsLibrary.__GetTWideStringListDuplicates(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TWideStringList(CurrentObject).Duplicates);
  end;
end;

procedure TatWideStringsLibrary.__SetTWideStringListDuplicates(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStringList(CurrentObject).Duplicates:=GetInputArg(0);
  end;
end;

procedure TatWideStringsLibrary.__GetTWideStringListSorted(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TWideStringList(CurrentObject).Sorted);
  end;
end;

procedure TatWideStringsLibrary.__SetTWideStringListSorted(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStringList(CurrentObject).Sorted:=GetInputArg(0);
  end;
end;

procedure TatWideStringsLibrary.__GetTWideStringListCaseSensitive(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TWideStringList(CurrentObject).CaseSensitive);
  end;
end;

procedure TatWideStringsLibrary.__SetTWideStringListCaseSensitive(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStringList(CurrentObject).CaseSensitive:=GetInputArg(0);
  end;
end;

procedure TatWideStringsLibrary.__GetTWideStringListOwnsObjects(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TWideStringList(CurrentObject).OwnsObjects);
  end;
end;

procedure TatWideStringsLibrary.__SetTWideStringListOwnsObjects(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWideStringList(CurrentObject).OwnsObjects:=GetInputArg(0);
  end;
end;

procedure TatWideStringsLibrary.Init;
begin
  With Scripter.DefineClass(TWideStringsEnumerator) do
  begin
    DefineMethod('Create',1,tkClass,TWideStringsEnumerator,__TWideStringsEnumeratorCreate,true,0,'AStrings: TWideStrings');
    DefineMethod('GetCurrent',0,tkVariant,nil,__TWideStringsEnumeratorGetCurrent,false,0,'');
    DefineMethod('MoveNext',0,tkVariant,nil,__TWideStringsEnumeratorMoveNext,false,0,'');
    DefineProp('Current',tkVariant,__GetTWideStringsEnumeratorCurrent,nil,nil,false,0);
  end;
  With Scripter.DefineClass(TWideStrings) do
  begin
    DefineMethod('Destroy',0,tkNone,nil,__TWideStringsDestroy,false,0,'');
    DefineMethod('Add',1,tkInteger,nil,__TWideStringsAdd,false,0,'S: WideString');
    DefineMethod('AddObject',2,tkInteger,nil,__TWideStringsAddObject,false,0,'S: WideString; AObject: TObject');
    DefineMethod('Append',1,tkNone,nil,__TWideStringsAppend,false,0,'S: WideString');
    DefineMethod('AddStrings',1,tkNone,nil,__TWideStringsAddStrings,false,0,'Strings: TStrings');
    DefineMethod('Assign',1,tkNone,nil,__TWideStringsAssign,false,0,'Source: TPersistent');
    DefineMethod('BeginUpdate',0,tkNone,nil,__TWideStringsBeginUpdate,false,0,'');
    DefineMethod('Clear',0,tkNone,nil,__TWideStringsClear,false,0,'');
    DefineMethod('Delete',1,tkNone,nil,__TWideStringsDelete,false,0,'Index: Integer');
    DefineMethod('EndUpdate',0,tkNone,nil,__TWideStringsEndUpdate,false,0,'');
    DefineMethod('Equals',1,tkVariant,nil,__TWideStringsEquals,false,0,'Strings: TWideStrings');
    DefineMethod('Exchange',2,tkNone,nil,__TWideStringsExchange,false,0,'Index1: Integer; Index2: Integer');
    DefineMethod('GetEnumerator',0,tkClass,TWideStringsEnumerator,__TWideStringsGetEnumerator,false,0,'');
    DefineMethod('GetText',0,tkVariant,nil,__TWideStringsGetText,false,0,'');
    DefineMethod('IndexOf',1,tkInteger,nil,__TWideStringsIndexOf,false,0,'S: WideString');
    DefineMethod('IndexOfName',1,tkInteger,nil,__TWideStringsIndexOfName,false,0,'Name: WideString');
    DefineMethod('IndexOfObject',1,tkInteger,nil,__TWideStringsIndexOfObject,false,0,'AObject: TObject');
    DefineMethod('Insert',2,tkNone,nil,__TWideStringsInsert,false,0,'Index: Integer; S: WideString');
    DefineMethod('InsertObject',3,tkNone,nil,__TWideStringsInsertObject,false,0,'Index: Integer; S: WideString; AObject: TObject');
    DefineMethod('LoadFromFile',1,tkNone,nil,__TWideStringsLoadFromFile,false,0,'FileName: WideString');
    DefineMethod('LoadFromStream',1,tkNone,nil,__TWideStringsLoadFromStream,false,0,'Stream: TStream');
    DefineMethod('Move',2,tkNone,nil,__TWideStringsMove,false,0,'CurIndex: Integer; NewIndex: Integer');
    DefineMethod('SaveToFile',1,tkNone,nil,__TWideStringsSaveToFile,false,0,'FileName: WideString');
    DefineMethod('SaveToStream',1,tkNone,nil,__TWideStringsSaveToStream,false,0,'Stream: TStream');
    DefineMethod('SetText',1,tkNone,nil,__TWideStringsSetText,false,0,'Text: PWideChar');
    DefineProp('Capacity',tkInteger,__GetTWideStringsCapacity,__SetTWideStringsCapacity,nil,false,0);
    DefineProp('CommaText',tkVariant,__GetTWideStringsCommaText,__SetTWideStringsCommaText,nil,false,0);
    DefineProp('Count',tkInteger,__GetTWideStringsCount,nil,nil,false,0);
    DefineProp('Delimiter',tkVariant,__GetTWideStringsDelimiter,__SetTWideStringsDelimiter,nil,false,0);
    DefineProp('DelimitedText',tkVariant,__GetTWideStringsDelimitedText,__SetTWideStringsDelimitedText,nil,false,0);
    DefineProp('LineBreak',tkVariant,__GetTWideStringsLineBreak,__SetTWideStringsLineBreak,nil,false,0);
    DefineProp('Names',tkVariant,__GetTWideStringsNames,nil,nil,false,1);
    DefineProp('Objects',tkClass,__GetTWideStringsObjects,__SetTWideStringsObjects,TObject,false,1);
    DefineProp('QuoteChar',tkVariant,__GetTWideStringsQuoteChar,__SetTWideStringsQuoteChar,nil,false,0);
    DefineProp('Values',tkVariant,__GetTWideStringsValues,__SetTWideStringsValues,nil,false,1);
    DefineProp('ValueFromIndex',tkVariant,__GetTWideStringsValueFromIndex,__SetTWideStringsValueFromIndex,nil,false,1);
    DefineProp('NameValueSeparator',tkVariant,__GetTWideStringsNameValueSeparator,__SetTWideStringsNameValueSeparator,nil,false,0);
    DefineProp('StrictDelimiter',tkVariant,__GetTWideStringsStrictDelimiter,__SetTWideStringsStrictDelimiter,nil,false,0);
    DefaultProperty := DefineProp('Strings',tkVariant,__GetTWideStringsStrings,__SetTWideStringsStrings,nil,false,1);
    DefineProp('Text',tkVariant,__GetTWideStringsText,__SetTWideStringsText,nil,false,0);
  end;
  With Scripter.DefineClass(TWideStringList) do
  begin
    DefineMethod('Create',0,tkClass,TWideStringList,__TWideStringListCreate,true,0,'');
    DefineMethod('Destroy',0,tkNone,nil,__TWideStringListDestroy,false,0,'');
    DefineMethod('Add',1,tkInteger,nil,__TWideStringListAdd,false,0,'S: WideString');
    DefineMethod('AddObject',2,tkInteger,nil,__TWideStringListAddObject,false,0,'S: WideString; AObject: TObject');
    DefineMethod('Clear',0,tkNone,nil,__TWideStringListClear,false,0,'');
    DefineMethod('Delete',1,tkNone,nil,__TWideStringListDelete,false,0,'Index: Integer');
    DefineMethod('Exchange',2,tkNone,nil,__TWideStringListExchange,false,0,'Index1: Integer; Index2: Integer');
    DefineMethod('Find',2,tkVariant,nil,__TWideStringListFind,false,0,'S: WideString; Index: Integer').SetVarArgs([1]);
    DefineMethod('IndexOf',1,tkInteger,nil,__TWideStringListIndexOf,false,0,'S: WideString');
    DefineMethod('Insert',2,tkNone,nil,__TWideStringListInsert,false,0,'Index: Integer; S: WideString');
    DefineMethod('InsertObject',3,tkNone,nil,__TWideStringListInsertObject,false,0,'Index: Integer; S: WideString; AObject: TObject');
    DefineMethod('Sort',0,tkNone,nil,__TWideStringListSort,false,0,'');
    DefineProp('Duplicates',tkEnumeration,__GetTWideStringListDuplicates,__SetTWideStringListDuplicates,nil,false,0);
    DefineProp('Sorted',tkVariant,__GetTWideStringListSorted,__SetTWideStringListSorted,nil,false,0);
    DefineProp('CaseSensitive',tkVariant,__GetTWideStringListCaseSensitive,__SetTWideStringListCaseSensitive,nil,false,0);
    DefineProp('OwnsObjects',tkVariant,__GetTWideStringListOwnsObjects,__SetTWideStringListOwnsObjects,nil,false,0);
  end;
  With Scripter.DefineClass(ClassType) do
  begin
  end;
end;

class function TatWideStringsLibrary.LibraryName: string;
begin
  result := 'WideStrings';
end;

initialization
  RegisterScripterLibrary(TatWideStringsLibrary, True);

{$WARNINGS ON}

end.

