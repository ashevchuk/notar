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
unit ap_pFIBCacheQueries;

interface

uses
  SysUtils,
  Classes,
  FIBQuery,
  FIBDatabase,
  SyncObjs,
  pFIBCacheQueries,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatpFIBCacheQueriesLibrary = class(TatScripterLibrary)
    procedure __GetQueryForUse(AMachine: TatVirtualMachine);
    procedure __FreeQueryForUse(AMachine: TatVirtualMachine);
    procedure __FreeHandleCachedQuery(AMachine: TatVirtualMachine);
    procedure __ClearQueryCacheList(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;




implementation



procedure TatpFIBCacheQueriesLibrary.__GetQueryForUse(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(pFIBCacheQueries.GetQueryForUse(TFIBTransaction(VarToObject(GetInputArg(0))),VarToStr(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatpFIBCacheQueriesLibrary.__FreeQueryForUse(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    pFIBCacheQueries.FreeQueryForUse(TFIBQuery(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatpFIBCacheQueriesLibrary.__FreeHandleCachedQuery(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    pFIBCacheQueries.FreeHandleCachedQuery(TFIBDatabase(VarToObject(GetInputArg(0))),VarToStr(GetInputArg(1)));
  end;
end;

procedure TatpFIBCacheQueriesLibrary.__ClearQueryCacheList(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    pFIBCacheQueries.ClearQueryCacheList(TFIBDatabase(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatpFIBCacheQueriesLibrary.Init;
begin
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('GetQueryForUse',2,tkClass,TFIBQuery,__GetQueryForUse,false,0,'aTransaction: TFIBTransaction; SQLText: string');
    DefineMethod('FreeQueryForUse',1,tkNone,nil,__FreeQueryForUse,false,0,'aFIBQuery: TFIBQuery');
    DefineMethod('FreeHandleCachedQuery',2,tkNone,nil,__FreeHandleCachedQuery,false,0,'DB: TFIBDataBase; SQLText: string');
    DefineMethod('ClearQueryCacheList',1,tkNone,nil,__ClearQueryCacheList,false,0,'DB: TFIBDataBase');
  end;
end;

class function TatpFIBCacheQueriesLibrary.LibraryName: string;
begin
  result := 'pFIBCacheQueries';
end;

initialization
  RegisterScripterLibrary(TatpFIBCacheQueriesLibrary, True);

{$WARNINGS ON}

end.

