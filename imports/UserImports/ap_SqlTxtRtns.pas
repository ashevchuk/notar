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
unit ap_SqlTxtRtns;

interface

uses
  SysUtils,
  Classes,
  FIBPlatforms,
  StrUtil,
  DB,
  SqlTxtRtns,
  System.Variants,
  ap_StrUtil,
  atScript;

{$WARNINGS OFF}

type
  TatSqlTxtRtnsLibrary = class(TatScripterLibrary)
    procedure __DispositionFrom(AMachine: TatVirtualMachine);
    procedure __AllSQLTables(AMachine: TatVirtualMachine);
    procedure __AllTables(AMachine: TatVirtualMachine);
    procedure __TableByAlias(AMachine: TatVirtualMachine);
    procedure __AliasForTable(AMachine: TatVirtualMachine);
    procedure __FullFieldName(AMachine: TatVirtualMachine);
    procedure __FieldNameFromSelect(AMachine: TatVirtualMachine);
    procedure __AddToWhereClause(AMachine: TatVirtualMachine);
    procedure __GetWhereClause(AMachine: TatVirtualMachine);
    procedure __WhereCount(AMachine: TatVirtualMachine);
    procedure __MainWhereIndex(AMachine: TatVirtualMachine);
    procedure __MainFrom(AMachine: TatVirtualMachine);
    procedure __MainWhereClause(AMachine: TatVirtualMachine);
    procedure __GetOrderInfo(AMachine: TatVirtualMachine);
    procedure __OrderStringTxt(AMachine: TatVirtualMachine);
    procedure __SetOrderClause(AMachine: TatVirtualMachine);
    procedure __SetOrderString(AMachine: TatVirtualMachine);
    procedure __PrepareConstraint(AMachine: TatVirtualMachine);
    procedure __CountSelect(AMachine: TatVirtualMachine);
    procedure __FieldsClause(AMachine: TatVirtualMachine);
    procedure __SetFirstClause(AMachine: TatVirtualMachine);
    procedure __GetModifyTable(AMachine: TatVirtualMachine);
    procedure __GetSQLKind(AMachine: TatVirtualMachine);
    procedure __GetLinkFieldName(AMachine: TatVirtualMachine);
    procedure __GetFieldByAlias(AMachine: TatVirtualMachine);
    procedure __IsWhereBeginPos(AMachine: TatVirtualMachine);
    procedure __IsWhereEndPos(AMachine: TatVirtualMachine);
    procedure __InvertOrderClause(AMachine: TatVirtualMachine);
    procedure __IsEquelSQLNames(AMachine: TatVirtualMachine);
    procedure __CutTableName(AMachine: TatVirtualMachine);
    procedure __CutAlias(AMachine: TatVirtualMachine);
    procedure __PosAlias(AMachine: TatVirtualMachine);
    procedure __FieldNameForSQL(AMachine: TatVirtualMachine);
    procedure __FieldUsedInClause(AMachine: TatVirtualMachine);
    procedure __ChangeToSQLDecimalSeparator(AMachine: TatVirtualMachine);
    procedure __GetExportDataScript(AMachine: TatVirtualMachine);
    procedure __GetExportDataScriptToFile(AMachine: TatVirtualMachine);
    procedure __GenerateInsertRow(AMachine: TatVirtualMachine);
    procedure __ParseMacroString(AMachine: TatVirtualMachine);
    procedure __PosClause(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TSQLParserClass = class of TSQLParser;

  TatSqlTxtRtnsDispatcher = class(TatEventDispatcher)
  private
    procedure __TOnScanSQLText( Position: integer; var StopScan: boolean);
  end;


implementation



procedure TatSqlTxtRtnsDispatcher.__TOnScanSQLText( Position: integer; var StopScan: boolean);
var
  StopScanTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TOnScanSQLText(BeforeCall)(Position,StopScan);
    StopScanTemp := StopScan;
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [Position,StopScanTemp]);
    StopScan := StopScanTemp;
    if AssignedMethod(AfterCall) then
      TOnScanSQLText(AfterCall)(Position,StopScan);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__DispositionFrom(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := integer(TPositionWrapper.Create(SqlTxtRtns.DispositionFrom(VarToStr(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__AllSQLTables(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Case InputArgCount of
      2: SqlTxtRtns.AllSQLTables(VarToStr(GetInputArg(0)),GetInputArg(1));
      3: SqlTxtRtns.AllSQLTables(VarToStr(GetInputArg(0)),GetInputArg(1),GetInputArg(2));
      4: SqlTxtRtns.AllSQLTables(VarToStr(GetInputArg(0)),GetInputArg(1),GetInputArg(2),GetInputArg(3));
    end;
  end;
end;

procedure TatSqlTxtRtnsLibrary.__AllTables(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Case InputArgCount of
      2: SqlTxtRtns.AllTables(VarToStr(GetInputArg(0)),GetInputArg(1));
      3: SqlTxtRtns.AllTables(VarToStr(GetInputArg(0)),GetInputArg(1),GetInputArg(2));
      4: SqlTxtRtns.AllTables(VarToStr(GetInputArg(0)),GetInputArg(1),GetInputArg(2),GetInputArg(3));
    end;
  end;
end;

procedure TatSqlTxtRtnsLibrary.__TableByAlias(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(SqlTxtRtns.TableByAlias(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__AliasForTable(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(SqlTxtRtns.AliasForTable(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__FullFieldName(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(SqlTxtRtns.FullFieldName(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__FieldNameFromSelect(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(SqlTxtRtns.FieldNameFromSelect(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__AddToWhereClause(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
case InputArgCount of
2: AResult := string(SqlTxtRtns.AddToWhereClause(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1))));
3: AResult := string(SqlTxtRtns.AddToWhereClause(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1)),GetInputArg(2)));
end;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__GetWhereClause(AMachine: TatVirtualMachine);
  var
  Param2: integer;
  Param3: integer;
  AResult: variant;
begin
  with AMachine do
  begin
Param2 := VarToInteger(GetInputArg(2));
Param3 := VarToInteger(GetInputArg(3));
AResult := string(SqlTxtRtns.GetWhereClause(VarToStr(GetInputArg(0)),VarToInteger(GetInputArg(1)),Param2,Param3));
    ReturnOutputArg(AResult);
    SetInputArg(2,Integer(Param2));
    SetInputArg(3,Integer(Param3));
  end;
end;

procedure TatSqlTxtRtnsLibrary.__WhereCount(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(SqlTxtRtns.WhereCount(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__MainWhereIndex(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(SqlTxtRtns.MainWhereIndex(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__MainFrom(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(SqlTxtRtns.MainFrom(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__MainWhereClause(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(SqlTxtRtns.MainWhereClause(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__GetOrderInfo(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
case InputArgCount of
1: AResult := SqlTxtRtns.GetOrderInfo(VarToStr(GetInputArg(0)));
2: AResult := SqlTxtRtns.GetOrderInfo(VarToStr(GetInputArg(0)),GetInputArg(1));
end;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__OrderStringTxt(AMachine: TatVirtualMachine);
  var
  Param1: integer;
  Param2: integer;
  AResult: variant;
begin
  with AMachine do
  begin
Param1 := VarToInteger(GetInputArg(1));
Param2 := VarToInteger(GetInputArg(2));
AResult := string(SqlTxtRtns.OrderStringTxt(VarToStr(GetInputArg(0)),Param1,Param2));
    ReturnOutputArg(AResult);
    SetInputArg(1,Integer(Param1));
    SetInputArg(2,Integer(Param2));
  end;
end;

procedure TatSqlTxtRtnsLibrary.__SetOrderClause(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(SqlTxtRtns.SetOrderClause(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__SetOrderString(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    SqlTxtRtns.SetOrderString(GetInputArg(0),VarToStr(GetInputArg(1)));
  end;
end;

procedure TatSqlTxtRtnsLibrary.__PrepareConstraint(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(SqlTxtRtns.PrepareConstraint(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__CountSelect(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(SqlTxtRtns.CountSelect(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__FieldsClause(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(SqlTxtRtns.FieldsClause(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__SetFirstClause(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(SqlTxtRtns.SetFirstClause(VarToStr(GetInputArg(0)),VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__GetModifyTable(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
case InputArgCount of
1: AResult := string(SqlTxtRtns.GetModifyTable(VarToStr(GetInputArg(0))));
2: AResult := string(SqlTxtRtns.GetModifyTable(VarToStr(GetInputArg(0)),GetInputArg(1)));
end;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__GetSQLKind(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(SqlTxtRtns.GetSQLKind(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__GetLinkFieldName(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(SqlTxtRtns.GetLinkFieldName(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__GetFieldByAlias(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(SqlTxtRtns.GetFieldByAlias(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__IsWhereBeginPos(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := SqlTxtRtns.IsWhereBeginPos(VarToStr(GetInputArg(0)),VarToInteger(GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__IsWhereEndPos(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := SqlTxtRtns.IsWhereEndPos(VarToStr(GetInputArg(0)),VarToInteger(GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__InvertOrderClause(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(SqlTxtRtns.InvertOrderClause(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__IsEquelSQLNames(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := SqlTxtRtns.IsEquelSQLNames(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__CutTableName(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
case InputArgCount of
1: AResult := string(SqlTxtRtns.CutTableName(VarToStr(GetInputArg(0))));
2: AResult := string(SqlTxtRtns.CutTableName(VarToStr(GetInputArg(0)),VarToInteger(GetInputArg(1))));
end;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__CutAlias(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
case InputArgCount of
1: AResult := string(SqlTxtRtns.CutAlias(VarToStr(GetInputArg(0))));
2: AResult := string(SqlTxtRtns.CutAlias(VarToStr(GetInputArg(0)),VarToInteger(GetInputArg(1))));
end;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__PosAlias(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(SqlTxtRtns.PosAlias(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__FieldNameForSQL(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(SqlTxtRtns.FieldNameForSQL(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__FieldUsedInClause(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := SqlTxtRtns.FieldUsedInClause(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1)),VarToStr(GetInputArg(2)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__ChangeToSQLDecimalSeparator(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(SqlTxtRtns.ChangeToSQLDecimalSeparator(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__GetExportDataScript(AMachine: TatVirtualMachine);
  var
  Param2: TStrings;
begin
  with AMachine do
  begin
Param2 := GetInputArg(2);
    Case InputArgCount of
      3: SqlTxtRtns.GetExportDataScript(GetInputArg(0),VarToStr(GetInputArg(1)),Param2);
      4: SqlTxtRtns.GetExportDataScript(GetInputArg(0),VarToStr(GetInputArg(1)),Param2,GetInputArg(3));
      5: SqlTxtRtns.GetExportDataScript(GetInputArg(0),VarToStr(GetInputArg(1)),Param2,GetInputArg(3),VarToStr(GetInputArg(4)));
    end;
    SetInputArg(2,Param2);
  end;
end;

procedure TatSqlTxtRtnsLibrary.__GetExportDataScriptToFile(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Case InputArgCount of
      3: SqlTxtRtns.GetExportDataScriptToFile(GetInputArg(0),VarToStr(GetInputArg(1)),VarToStr(GetInputArg(2)));
      4: SqlTxtRtns.GetExportDataScriptToFile(GetInputArg(0),VarToStr(GetInputArg(1)),VarToStr(GetInputArg(2)),GetInputArg(3));
      5: SqlTxtRtns.GetExportDataScriptToFile(GetInputArg(0),VarToStr(GetInputArg(1)),VarToStr(GetInputArg(2)),GetInputArg(3),VarToStr(GetInputArg(4)));
    end;
  end;
end;

procedure TatSqlTxtRtnsLibrary.__GenerateInsertRow(AMachine: TatVirtualMachine);
  var
  Param2: string;
  AResult: variant;
begin
  with AMachine do
  begin
Param2 := VarToStr(GetInputArg(2));
case InputArgCount of
3: AResult := string(SqlTxtRtns.GenerateInsertRow(GetInputArg(0),VarToStr(GetInputArg(1)),Param2));
4: AResult := string(SqlTxtRtns.GenerateInsertRow(GetInputArg(0),VarToStr(GetInputArg(1)),Param2,GetInputArg(3)));
end;
    ReturnOutputArg(AResult);
    SetInputArg(2,string(Param2));
  end;
end;

procedure TatSqlTxtRtnsLibrary.__ParseMacroString(AMachine: TatVirtualMachine);
  var
  Param2: string;
  AResult: variant;
begin
  with AMachine do
  begin
Param2 := VarToStr(GetInputArg(2));
AResult := string(SqlTxtRtns.ParseMacroString(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1))[1],Param2));
    ReturnOutputArg(AResult);
    SetInputArg(2,string(Param2));
  end;
end;

procedure TatSqlTxtRtnsLibrary.__PosClause(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(SqlTxtRtns.PosClause(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatSqlTxtRtnsLibrary.Init;
begin
  Scripter.DefineClassByRTTI(TSQLParser);
  DefineEventAdapter(TypeInfo(TOnScanSQLText), TatSqlTxtRtnsDispatcher, @TatSqlTxtRtnsDispatcher.__TOnScanSQLText);
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('DispositionFrom',1,tkVariant,nil,__DispositionFrom,false,0,'SQLText: string');
    DefineMethod('AllSQLTables',4,tkNone,nil,__AllSQLTables,false,2,'SQLText: string; aTables: TStrings; WithSP: boolean = False
 ; WithAliases: boolean = False');
    DefineMethod('AllTables',4,tkNone,nil,__AllTables,false,2,'SQLText: string; aTables: TStrings; WithSP: boolean = False
  ; WithAliases: boolean = False');
    DefineMethod('TableByAlias',2,tkVariant,nil,__TableByAlias,false,0,'SQLText: string; Alias: string');
    DefineMethod('AliasForTable',2,tkVariant,nil,__AliasForTable,false,0,'SQLText: string; TableName: string');
    DefineMethod('FullFieldName',2,tkVariant,nil,__FullFieldName,false,0,'SQLText: string; aFieldName: string');
    DefineMethod('FieldNameFromSelect',2,tkVariant,nil,__FieldNameFromSelect,false,0,'SQLText: string; FieldName: string');
    DefineMethod('AddToWhereClause',3,tkVariant,nil,__AddToWhereClause,false,1,'SQLText: string; NewClause: string; ForceCLRF: boolean = True');
    DefineMethod('GetWhereClause',4,tkVariant,nil,__GetWhereClause,false,0,'SQLText: string; N: integer; StartPos: integer; EndPos: integer').SetVarArgs([2,3]);
    DefineMethod('WhereCount',1,tkInteger,nil,__WhereCount,false,0,'SQLText: string');
    DefineMethod('MainWhereIndex',1,tkInteger,nil,__MainWhereIndex,false,0,'SQLText: string');
    DefineMethod('MainFrom',1,tkVariant,nil,__MainFrom,false,0,'SQLText: string');
    DefineMethod('MainWhereClause',1,tkVariant,nil,__MainWhereClause,false,0,'SQLText: string');
    DefineMethod('GetOrderInfo',2,tkVariant,nil,__GetOrderInfo,false,1,'SQLText: string; NullsFirstDef: boolean = False');
    DefineMethod('OrderStringTxt',3,tkVariant,nil,__OrderStringTxt,false,0,'SQLText: string; StartPos: integer; EndPos: integer').SetVarArgs([1,2]);
    DefineMethod('SetOrderClause',2,tkVariant,nil,__SetOrderClause,false,0,'SQLText: string; NewClause: string');
    DefineMethod('SetOrderString',2,tkNone,nil,__SetOrderString,false,0,'SQLText: TStrings; OrderTxt: string');
    DefineMethod('PrepareConstraint',1,tkVariant,nil,__PrepareConstraint,false,0,'Src: Tstrings');
    DefineMethod('CountSelect',1,tkVariant,nil,__CountSelect,false,0,'SrcSQL: string');
    DefineMethod('FieldsClause',1,tkVariant,nil,__FieldsClause,false,0,'SrcSQL: string');
    DefineMethod('SetFirstClause',2,tkVariant,nil,__SetFirstClause,false,0,'SrcSQL: string; FirstCount: integer');
    DefineMethod('GetModifyTable',2,tkVariant,nil,__GetModifyTable,false,1,'SQLText: string; WithAlias: boolean = False');
    DefineMethod('GetSQLKind',1,tkEnumeration,nil,__GetSQLKind,false,0,'SQLText: string');
    DefineMethod('GetLinkFieldName',2,tkVariant,nil,__GetLinkFieldName,false,0,'SQLText: string; ParamName: string');
    DefineMethod('GetFieldByAlias',2,tkVariant,nil,__GetFieldByAlias,false,0,'SQLText: string; FieldName: string');
    DefineMethod('IsWhereBeginPos',2,tkVariant,nil,__IsWhereBeginPos,false,0,'SQLText: string; Position: integer');
    DefineMethod('IsWhereEndPos',2,tkVariant,nil,__IsWhereEndPos,false,0,'SQLText: string; Position: integer');
    DefineMethod('InvertOrderClause',1,tkVariant,nil,__InvertOrderClause,false,0,'OrderText: string');
    DefineMethod('IsEquelSQLNames',2,tkVariant,nil,__IsEquelSQLNames,false,0,'Name1: string; Name2: string');
    DefineMethod('CutTableName',2,tkVariant,nil,__CutTableName,false,1,'SQLString: string; AliasPosition: integer = 0');
    DefineMethod('CutAlias',2,tkVariant,nil,__CutAlias,false,1,'SQLString: string; AliasPosition: integer = 0');
    DefineMethod('PosAlias',1,tkInteger,nil,__PosAlias,false,0,'SQLString: string');
    DefineMethod('FieldNameForSQL',2,tkVariant,nil,__FieldNameForSQL,false,0,'TableAlias: string; FieldName: string');
    DefineMethod('FieldUsedInClause',3,tkVariant,nil,__FieldUsedInClause,false,0,'TableAlias: string; FieldName: string; Clause: string');
    DefineMethod('ChangeToSQLDecimalSeparator',1,tkVariant,nil,__ChangeToSQLDecimalSeparator,false,0,'Source: string');
    DefineMethod('GetExportDataScript',5,tkNone,nil,__GetExportDataScript,false,2,'DataSet: TDataSet; TableName: string; Put: TStrings; UseFieldNames: boolean = True; FieldList: string = ''''').SetVarArgs([2]);
    DefineMethod('GetExportDataScriptToFile',5,tkNone,nil,__GetExportDataScriptToFile,false,2,'DataSet: TDataSet; TableName: string; FileName: string; UseFieldNames: boolean = True; FieldList: string = ''''');
    DefineMethod('GenerateInsertRow',4,tkVariant,nil,__GenerateInsertRow,false,1,'DataSet: TDataSet; TableName: string; fNames: string; FieldList: TList = nil').SetVarArgs([2]);
    DefineMethod('ParseMacroString',3,tkVariant,nil,__ParseMacroString,false,0,'MacroString: string; aMacroChar: Char; DefValue: string').SetVarArgs([2]);
    DefineMethod('PosClause',2,tkInteger,nil,__PosClause,false,0,'Clause: string; SQLText: string');
    AddConstant('skUnknown',skUnknown);
    AddConstant('skSelect',skSelect);
    AddConstant('skUpdate',skUpdate);
    AddConstant('skInsert',skInsert);
    AddConstant('skDelete',skDelete);
    AddConstant('skExecuteProc',skExecuteProc);
    AddConstant('skDDL',skDDL);
    AddConstant('skExecuteBlock',skExecuteBlock);
    AddConstant('skUpdateOrInsert',skUpdateOrInsert);
    AddConstant('sNormal',sNormal);
    AddConstant('sQuote',sQuote);
    AddConstant('sComment',sComment);
    AddConstant('sFBComment',sFBComment);
    AddConstant('sQuoteSingle',sQuoteSingle);
    AddConstant('stUnknown',stUnknown);
    AddConstant('stSelect',stSelect);
    AddConstant('stFields',stFields);
    AddConstant('stUpdate',stUpdate);
    AddConstant('stInsert',stInsert);
    AddConstant('stDelete',stDelete);
    AddConstant('stExecute',stExecute);
    AddConstant('stSet',stSet);
    AddConstant('stComment',stComment);
    AddConstant('stFrom',stFrom);
    AddConstant('stWhere',stWhere);
    AddConstant('stGroupBy',stGroupBy);
    AddConstant('stHaving',stHaving);
    AddConstant('stUnion',stUnion);
    AddConstant('stPlan',stPlan);
    AddConstant('stOrderBy',stOrderBy);
    AddConstant('stForUpdate',stForUpdate);
    AddConstant('SpaceStr',SpaceStr);
    AddConstant('ForceNewStr',ForceNewStr);
    AddConstant('QuotMarks',QuotMarks);
    AddConstant('CharsAfterClause',IntFromConstSet(CharsAfterClause));
    AddConstant('CharsBeforeClause',IntFromConstSet(CharsBeforeClause));
    AddConstant('endLexem',IntFromConstSet(endLexem));
    AddConstant('IBStdCharSetsCount',IBStdCharSetsCount);
    AddConstant('IBStdCollationsCount',IBStdCollationsCount);
    AddConstant('UnknownStr',UnknownStr);
    AddConstant('BeginWhere',BeginWhere);
  end;
end;

class function TatSqlTxtRtnsLibrary.LibraryName: string;
begin
  result := 'SqlTxtRtns';
end;

initialization
  RegisterScripterLibrary(TatSqlTxtRtnsLibrary, True);

{$WARNINGS ON}

end.

