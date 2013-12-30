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
unit ap_pFIBInterfaces;

interface

uses
  Windows,
  FIBMDTInterface,
  Classes,
  DB,
  StrUtil,
  pFIBInterfaces,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatpFIBInterfacesLibrary = class(TatScripterLibrary)
    procedure __GetexpDatabaseClass(AMachine: TatVirtualMachine);
    procedure __SetexpDatabaseClass(AMachine: TatVirtualMachine);
    procedure __GetexpDatasetClass(AMachine: TatVirtualMachine);
    procedure __SetexpDatasetClass(AMachine: TatVirtualMachine);
    procedure __GetexpTransactionClass(AMachine: TatVirtualMachine);
    procedure __SetexpTransactionClass(AMachine: TatVirtualMachine);
    procedure __GetexpQueryClass(AMachine: TatVirtualMachine);
    procedure __SetexpQueryClass(AMachine: TatVirtualMachine);
    procedure __GetexpServicesClass(AMachine: TatVirtualMachine);
    procedure __SetexpServicesClass(AMachine: TatVirtualMachine);
    procedure __GetexpDeltaReceiverClass(AMachine: TatVirtualMachine);
    procedure __SetexpDeltaReceiverClass(AMachine: TatVirtualMachine);
    procedure __GetexpScripter(AMachine: TatVirtualMachine);
    procedure __SetexpScripter(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;


  TatpFIBInterfacesDispatcher = class(TatEventDispatcher)
  private
    procedure __TOnScriptStatementExec( Line: Integer;  StatementNo: Integer);
  end;


implementation



procedure TatpFIBInterfacesDispatcher.__TOnScriptStatementExec( Line: Integer;  StatementNo: Integer);
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TOnScriptStatementExec(BeforeCall)(Line,StatementNo);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [Line,StatementNo]);
    if AssignedMethod(AfterCall) then
      TOnScriptStatementExec(AfterCall)(Line,StatementNo);
  end;
end;

procedure TatpFIBInterfacesLibrary.__GetexpDatabaseClass(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(pFIBInterfaces.expDatabaseClass);
  end;
end;

procedure TatpFIBInterfacesLibrary.__SetexpDatabaseClass(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    pFIBInterfaces.expDatabaseClass:=GetInputArg(0);
  end;
end;

procedure TatpFIBInterfacesLibrary.__GetexpDatasetClass(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(pFIBInterfaces.expDatasetClass);
  end;
end;

procedure TatpFIBInterfacesLibrary.__SetexpDatasetClass(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    pFIBInterfaces.expDatasetClass:=GetInputArg(0);
  end;
end;

procedure TatpFIBInterfacesLibrary.__GetexpTransactionClass(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(pFIBInterfaces.expTransactionClass);
  end;
end;

procedure TatpFIBInterfacesLibrary.__SetexpTransactionClass(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    pFIBInterfaces.expTransactionClass:=GetInputArg(0);
  end;
end;

procedure TatpFIBInterfacesLibrary.__GetexpQueryClass(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(pFIBInterfaces.expQueryClass);
  end;
end;

procedure TatpFIBInterfacesLibrary.__SetexpQueryClass(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    pFIBInterfaces.expQueryClass:=GetInputArg(0);
  end;
end;

procedure TatpFIBInterfacesLibrary.__GetexpServicesClass(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(pFIBInterfaces.expServicesClass);
  end;
end;

procedure TatpFIBInterfacesLibrary.__SetexpServicesClass(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    pFIBInterfaces.expServicesClass:=GetInputArg(0);
  end;
end;

procedure TatpFIBInterfacesLibrary.__GetexpDeltaReceiverClass(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(pFIBInterfaces.expDeltaReceiverClass);
  end;
end;

procedure TatpFIBInterfacesLibrary.__SetexpDeltaReceiverClass(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    pFIBInterfaces.expDeltaReceiverClass:=GetInputArg(0);
  end;
end;

procedure TatpFIBInterfacesLibrary.__GetexpScripter(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(pFIBInterfaces.expScripter);
  end;
end;

procedure TatpFIBInterfacesLibrary.__SetexpScripter(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    pFIBInterfaces.expScripter:=GetInputArg(0);
  end;
end;

procedure TatpFIBInterfacesLibrary.Init;
begin
  DefineEventAdapter(TypeInfo(TOnScriptStatementExec), TatpFIBInterfacesDispatcher, @TatpFIBInterfacesDispatcher.__TOnScriptStatementExec);
  With Scripter.DefineClass(ClassType) do
  begin
    DefineProp('expDatabaseClass',tkVariant,__GetexpDatabaseClass,__SetexpDatabaseClass,nil,false,0);
    DefineProp('expDatasetClass',tkVariant,__GetexpDatasetClass,__SetexpDatasetClass,nil,false,0);
    DefineProp('expTransactionClass',tkVariant,__GetexpTransactionClass,__SetexpTransactionClass,nil,false,0);
    DefineProp('expQueryClass',tkVariant,__GetexpQueryClass,__SetexpQueryClass,nil,false,0);
    DefineProp('expServicesClass',tkVariant,__GetexpServicesClass,__SetexpServicesClass,nil,false,0);
    DefineProp('expDeltaReceiverClass',tkVariant,__GetexpDeltaReceiverClass,__SetexpDeltaReceiverClass,nil,false,0);
    DefineProp('expScripter',tkVariant,__GetexpScripter,__SetexpScripter,nil,false,0);
    AddConstant('lfQPrepare',lfQPrepare);
    AddConstant('lfQExecute',lfQExecute);
    AddConstant('lfQFetch',lfQFetch);
    AddConstant('lfConnect',lfConnect);
    AddConstant('lfTransact',lfTransact);
    AddConstant('lfService',lfService);
    AddConstant('lfMisc',lfMisc);
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
  end;
end;

class function TatpFIBInterfacesLibrary.LibraryName: string;
begin
  result := 'pFIBInterfaces';
end;

initialization
  RegisterScripterLibrary(TatpFIBInterfacesLibrary, True);

{$WARNINGS ON}

end.

