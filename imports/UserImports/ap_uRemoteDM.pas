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
unit ap_uRemoteDM;

interface

uses
  System.SysUtils,
  System.Classes,
  System.Types,
  ufmMain,
  uUtils,
  fib,
  FIBDatabase,
  pFIBDatabase,
  pFIBSQLLog,
  SIBEABase,
  SIBFIBEA,
  FIBSQLMonitor,
  pFIBErrorHandler,
  Data.DB,
  FIBDataSet,
  pFIBDataSet,
  FIBQuery,
  pFIBQuery,
  RegularExpressions,
  ZInterbaseAnalyser,
  ZInterbaseToken,
  ZSelectSchema,
  uRemoteDM,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatuRemoteDMLibrary = class(TatScripterLibrary)
    procedure __TRemoteDataModuleDataModuleCreate(AMachine: TatVirtualMachine);
    procedure __TRemoteDataModuleDataModuleDestroy(AMachine: TatVirtualMachine);
    procedure __TRemoteDataModuleFibErrorHandlerFIBErrorEvent(AMachine: TatVirtualMachine);
    procedure __TRemoteDataModuleFIBSQLMonitorSQL(AMachine: TatVirtualMachine);
    procedure __TRemoteDataModuleConnectDataBase(AMachine: TatVirtualMachine);
    procedure __TRemoteDataModulegetFieldInfo(AMachine: TatVirtualMachine);
    procedure __TRemoteDataModulegetFields(AMachine: TatVirtualMachine);
    procedure __TRemoteDataModuleregisterDataSet(AMachine: TatVirtualMachine);
    procedure __TRemoteDataModuleunregisterDataSet(AMachine: TatVirtualMachine);
    procedure __TRemoteDataModulenotifyDataSets(AMachine: TatVirtualMachine);
    procedure __TRemoteDataModulegenerateGroups(AMachine: TatVirtualMachine);
    procedure __TRemoteDataModulepreloadTablesData(AMachine: TatVirtualMachine);
    procedure __TRemoteDataModulegetDatabase(AMachine: TatVirtualMachine);
    procedure __TRemoteDataModulegetTransaction(AMachine: TatVirtualMachine);
    procedure __GetRemoteDataModule(AMachine: TatVirtualMachine);
    procedure __SetRemoteDataModule(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TTableFieldInfoClass = class of TTableFieldInfo;
  TRemoteDataModuleClass = class of TRemoteDataModule;

implementation

procedure TatuRemoteDMLibrary.__TRemoteDataModuleDataModuleCreate(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TRemoteDataModule(CurrentObject).DataModuleCreate(TObject(GetInputArgAsClass(0)));
  end;
end;

procedure TatuRemoteDMLibrary.__TRemoteDataModuleDataModuleDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TRemoteDataModule(CurrentObject).DataModuleDestroy(TObject(GetInputArgAsClass(0)));
  end;
end;

procedure TatuRemoteDMLibrary.__TRemoteDataModuleFibErrorHandlerFIBErrorEvent(AMachine: TatVirtualMachine);
  var
  Param3: Boolean;
begin
  with AMachine do
  begin
Param3 := GetInputArg(3);
    TRemoteDataModule(CurrentObject).FibErrorHandlerFIBErrorEvent(TObject(GetInputArgAsClass(0)),EFIBError(VarToObject(GetInputArg(1))),TKindIBError(VarToInteger(GetInputArg(2))),Param3);
    SetInputArg(3,Param3);
  end;
end;

procedure TatuRemoteDMLibrary.__TRemoteDataModuleFIBSQLMonitorSQL(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TRemoteDataModule(CurrentObject).FIBSQLMonitorSQL(VarToStr(GetInputArg(0)),GetInputArg(1));
  end;
end;

procedure TatuRemoteDMLibrary.__TRemoteDataModuleConnectDataBase(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TRemoteDataModule(CurrentObject).ConnectDataBase;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatuRemoteDMLibrary.__TRemoteDataModulegetFieldInfo(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
case InputArgCount of
2: AResult := string(TRemoteDataModule(CurrentObject).getFieldInfo(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1))));
3: AResult := string(TRemoteDataModule(CurrentObject).getFieldInfo(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1)),VarToStr(GetInputArg(2))));
end;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatuRemoteDMLibrary.__TRemoteDataModulegetFields(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(TRemoteDataModule(CurrentObject).getFields(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatuRemoteDMLibrary.__TRemoteDataModuleregisterDataSet(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TRemoteDataModule(CurrentObject).registerDataSet(TpFIBDataSet(VarToObject(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatuRemoteDMLibrary.__TRemoteDataModuleunregisterDataSet(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TRemoteDataModule(CurrentObject).unregisterDataSet(TpFIBDataSet(VarToObject(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatuRemoteDMLibrary.__TRemoteDataModulenotifyDataSets(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TRemoteDataModule(CurrentObject).notifyDataSets(VarToStr(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatuRemoteDMLibrary.__TRemoteDataModulegenerateGroups(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TRemoteDataModule(CurrentObject).generateGroups(VarToStr(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatuRemoteDMLibrary.__TRemoteDataModulepreloadTablesData(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TRemoteDataModule(CurrentObject).preloadTablesData;
    ReturnOutputArg(AResult);
  end;
end;

function ObjectToVar(const AObject: TObject): Variant;
begin
  Result := IntToStr(Integer(Pointer(AObject)));
end;


procedure TatuRemoteDMLibrary.__TRemoteDataModulegetDatabase(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TRemoteDataModule(CurrentObject).getDatabase);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatuRemoteDMLibrary.__TRemoteDataModulegetTransaction(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TRemoteDataModule(CurrentObject).getTransaction);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatuRemoteDMLibrary.__GetRemoteDataModule(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(uRemoteDM.RemoteDataModule));
  end;
end;

procedure TatuRemoteDMLibrary.__SetRemoteDataModule(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    uRemoteDM.RemoteDataModule:=TRemoteDataModule(VarToObject(GetInputArg(0)));
  end;
end;

procedure TatuRemoteDMLibrary.Init;
begin
  With Scripter.DefineClass(TTableFieldInfo) do
  begin
  end;
  With Scripter.DefineClass(TRemoteDataModule) do
  begin
    DefineMethod('DataModuleCreate',1,tkNone,nil,__TRemoteDataModuleDataModuleCreate,false,0,'Sender: TObject');
    DefineMethod('DataModuleDestroy',1,tkNone,nil,__TRemoteDataModuleDataModuleDestroy,false,0,'Sender: TObject');
    DefineMethod('FibErrorHandlerFIBErrorEvent',4,tkNone,nil,__TRemoteDataModuleFibErrorHandlerFIBErrorEvent,false,0,'Sender: TObject; ErrorValue: EFIBError; KindIBError: TKindIBError; DoRaise: Boolean').SetVarArgs([3]);
    DefineMethod('FIBSQLMonitorSQL',2,tkNone,nil,__TRemoteDataModuleFIBSQLMonitorSQL,false,0,'EventText: string; EventTime: TDateTime');
    DefineMethod('ConnectDataBase',0,tkVariant,nil,__TRemoteDataModuleConnectDataBase,false,0,'');
    DefineMethod('getFieldInfo',3,tkVariant,nil,__TRemoteDataModulegetFieldInfo,false,1,'ATable: string; AField: string; AType: string = ''FIELD_DESCRIPTION''');
    DefineMethod('getFields',1,tkVariant,nil,__TRemoteDataModulegetFields,false,0,'ATable: string');
    DefineMethod('registerDataSet',1,tkVariant,nil,__TRemoteDataModuleregisterDataSet,false,0,'ADataSet: TpFIBDataSet');
    DefineMethod('unregisterDataSet',1,tkVariant,nil,__TRemoteDataModuleunregisterDataSet,false,0,'ADataSet: TpFIBDataSet');
    DefineMethod('notifyDataSets',1,tkVariant,nil,__TRemoteDataModulenotifyDataSets,false,0,'ATableName: string');
    DefineMethod('generateGroups',1,tkVariant,nil,__TRemoteDataModulegenerateGroups,false,0,'ATable: string');
    DefineMethod('preloadTablesData',0,tkVariant,nil,__TRemoteDataModulepreloadTablesData,false,0,'');
    DefineMethod('getDatabase',0,tkClass,TpFIBDatabase,__TRemoteDataModulegetDatabase,false,0,'');
    DefineMethod('getTransaction',0,tkClass,TpFIBTransaction,__TRemoteDataModulegetTransaction,false,0,'');
  end;
  With Scripter.DefineClass(ClassType) do
  begin
    DefineProp('RemoteDataModule',tkClass,__GetRemoteDataModule,__SetRemoteDataModule,TRemoteDataModule,false,0);
  end;
end;

class function TatuRemoteDMLibrary.LibraryName: string;
begin
  result := 'uRemoteDM';
end;

initialization
  RegisterScripterLibrary(TatuRemoteDMLibrary, True);

{$WARNINGS ON}

end.

