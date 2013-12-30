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
unit ap_pFIBDataInfo;

interface

uses
  SyncObjs,
  SysUtils,
  Classes,
  DB,
  FIBPlatforms,
  FIBDataSet,
  FIBDataBase,
  FIBQuery,
  pFIBQuery,
  pFIBDataBase,
  pFIBProps,
  FIBMDTInterface,
  pFIBDataInfo,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatpFIBDataInfoLibrary = class(TatScripterLibrary)
    procedure __CreateFRepositaryTable(AMachine: TatVirtualMachine);
    procedure __CreateDRepositaryTable(AMachine: TatVirtualMachine);
    procedure __CreateERepositaryTable(AMachine: TatVirtualMachine);
    procedure __ExistFRepositaryTable(AMachine: TatVirtualMachine);
    procedure __ExistDRepositaryTable(AMachine: TatVirtualMachine);
    procedure __ExistERepositaryTable(AMachine: TatVirtualMachine);
    procedure __ExistBooleanDomain(AMachine: TatVirtualMachine);
    procedure __SaveFIBDataSetInfo(AMachine: TatVirtualMachine);
    procedure __GetFieldInfos(AMachine: TatVirtualMachine);
    procedure __GetOtherFieldInfo(AMachine: TatVirtualMachine);
    procedure __Update1RepositaryTable(AMachine: TatVirtualMachine);
    procedure __Update2RepositaryTable(AMachine: TatVirtualMachine);
    procedure __DBPrimaryKeyFields(AMachine: TatVirtualMachine);
    procedure __GetListTableInfo(AMachine: TatVirtualMachine);
    procedure __SetListTableInfo(AMachine: TatVirtualMachine);
    procedure __GetListDataSetInfo(AMachine: TatVirtualMachine);
    procedure __SetListDataSetInfo(AMachine: TatVirtualMachine);
    procedure __GetListSPInfo(AMachine: TatVirtualMachine);
    procedure __SetListSPInfo(AMachine: TatVirtualMachine);
    procedure __GetListErrorMessages(AMachine: TatVirtualMachine);
    procedure __SetListErrorMessages(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TpFIBFieldInfoClass = class of TpFIBFieldInfo;
  TpFIBTableInfoClass = class of TpFIBTableInfo;
  TpFIBTableInfoCollectClass = class of TpFIBTableInfoCollect;
  TpDataSetInfoClass = class of TpDataSetInfo;
  TpDataSetInfoCollectClass = class of TpDataSetInfoCollect;
  TpStoredProcCollectClass = class of TpStoredProcCollect;
  TpErrorMessageClass = class of TpErrorMessage;
  TpErrorMessagesCollectClass = class of TpErrorMessagesCollect;



implementation



procedure TatpFIBDataInfoLibrary.__CreateFRepositaryTable(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    pFIBDataInfo.CreateFRepositaryTable(TFIBDatabase(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatpFIBDataInfoLibrary.__CreateDRepositaryTable(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    pFIBDataInfo.CreateDRepositaryTable(TFIBDatabase(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatpFIBDataInfoLibrary.__CreateERepositaryTable(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    pFIBDataInfo.CreateERepositaryTable(TFIBDatabase(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatpFIBDataInfoLibrary.__ExistFRepositaryTable(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := pFIBDataInfo.ExistFRepositaryTable(TFIBDatabase(VarToObject(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatpFIBDataInfoLibrary.__ExistDRepositaryTable(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := pFIBDataInfo.ExistDRepositaryTable(TFIBDatabase(VarToObject(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatpFIBDataInfoLibrary.__ExistERepositaryTable(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := pFIBDataInfo.ExistERepositaryTable(TFIBDatabase(VarToObject(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatpFIBDataInfoLibrary.__ExistBooleanDomain(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := pFIBDataInfo.ExistBooleanDomain(TFIBDatabase(VarToObject(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatpFIBDataInfoLibrary.__SaveFIBDataSetInfo(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := pFIBDataInfo.SaveFIBDataSetInfo(TFIBDataSet(VarToObject(GetInputArg(0))),VarToStr(GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatpFIBDataInfoLibrary.__GetFieldInfos(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(pFIBDataInfo.GetFieldInfos(GetInputArg(0),GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatpFIBDataInfoLibrary.__GetOtherFieldInfo(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(pFIBDataInfo.GetOtherFieldInfo(GetInputArg(0),VarToStr(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatpFIBDataInfoLibrary.__Update1RepositaryTable(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    pFIBDataInfo.Update1RepositaryTable(TFIBTransaction(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatpFIBDataInfoLibrary.__Update2RepositaryTable(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    pFIBDataInfo.Update2RepositaryTable(TFIBTransaction(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatpFIBDataInfoLibrary.__DBPrimaryKeyFields(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(pFIBDataInfo.DBPrimaryKeyFields(VarToStr(GetInputArg(0)),TFIBTransaction(VarToObject(GetInputArg(1)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatpFIBDataInfoLibrary.__GetListTableInfo(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(pFIBDataInfo.ListTableInfo));
  end;
end;

procedure TatpFIBDataInfoLibrary.__SetListTableInfo(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    pFIBDataInfo.ListTableInfo:=TpFIBTableInfoCollect(VarToObject(GetInputArg(0)));
  end;
end;

procedure TatpFIBDataInfoLibrary.__GetListDataSetInfo(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(pFIBDataInfo.ListDataSetInfo));
  end;
end;

procedure TatpFIBDataInfoLibrary.__SetListDataSetInfo(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    pFIBDataInfo.ListDataSetInfo:=TpDataSetInfoCollect(VarToObject(GetInputArg(0)));
  end;
end;

procedure TatpFIBDataInfoLibrary.__GetListSPInfo(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(pFIBDataInfo.ListSPInfo));
  end;
end;

procedure TatpFIBDataInfoLibrary.__SetListSPInfo(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    pFIBDataInfo.ListSPInfo:=TpStoredProcCollect(VarToObject(GetInputArg(0)));
  end;
end;

procedure TatpFIBDataInfoLibrary.__GetListErrorMessages(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(pFIBDataInfo.ListErrorMessages));
  end;
end;

procedure TatpFIBDataInfoLibrary.__SetListErrorMessages(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    pFIBDataInfo.ListErrorMessages:=TpErrorMessagesCollect(VarToObject(GetInputArg(0)));
  end;
end;

procedure TatpFIBDataInfoLibrary.Init;
begin
  Scripter.DefineClassByRTTI(TpFIBFieldInfo);
  Scripter.DefineClassByRTTI(TpFIBTableInfo);
  Scripter.DefineClassByRTTI(TpFIBTableInfoCollect);
  Scripter.DefineClassByRTTI(TpDataSetInfo);
  Scripter.DefineClassByRTTI(TpDataSetInfoCollect);
  Scripter.DefineClassByRTTI(TpStoredProcCollect);
  Scripter.DefineClassByRTTI(TpErrorMessage);
  Scripter.DefineClassByRTTI(TpErrorMessagesCollect);
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('CreateFRepositaryTable',1,tkNone,nil,__CreateFRepositaryTable,false,0,'DB: TFIBDatabase');
    DefineMethod('CreateDRepositaryTable',1,tkNone,nil,__CreateDRepositaryTable,false,0,'DB: TFIBDatabase');
    DefineMethod('CreateERepositaryTable',1,tkNone,nil,__CreateERepositaryTable,false,0,'DB: TFIBDatabase');
    DefineMethod('ExistFRepositaryTable',1,tkVariant,nil,__ExistFRepositaryTable,false,0,'DB: TFIBDatabase');
    DefineMethod('ExistDRepositaryTable',1,tkVariant,nil,__ExistDRepositaryTable,false,0,'DB: TFIBDatabase');
    DefineMethod('ExistERepositaryTable',1,tkVariant,nil,__ExistERepositaryTable,false,0,'DB: TFIBDatabase');
    DefineMethod('ExistBooleanDomain',1,tkVariant,nil,__ExistBooleanDomain,false,0,'DB: TFIBDatabase');
    DefineMethod('SaveFIBDataSetInfo',2,tkVariant,nil,__SaveFIBDataSetInfo,false,0,'DataSet: TFibDataSet; Name: string');
    DefineMethod('GetFieldInfos',2,tkClass,TpFIBFieldInfo,__GetFieldInfos,false,0,'Field: TField; RepositaryInfo: boolean');
    DefineMethod('GetOtherFieldInfo',2,tkVariant,nil,__GetOtherFieldInfo,false,0,'Field: TField; InfoName: string');
    DefineMethod('Update1RepositaryTable',1,tkNone,nil,__Update1RepositaryTable,false,0,'Tr: TFIBTransaction');
    DefineMethod('Update2RepositaryTable',1,tkNone,nil,__Update2RepositaryTable,false,0,'Tr: TFIBTransaction');
    DefineMethod('DBPrimaryKeyFields',2,tkVariant,nil,__DBPrimaryKeyFields,false,0,'TableName: string; aTransaction: TFIBTransaction');
    DefineProp('ListTableInfo',tkClass,__GetListTableInfo,__SetListTableInfo,TpFIBTableInfoCollect,false,0);
    DefineProp('ListDataSetInfo',tkClass,__GetListDataSetInfo,__SetListDataSetInfo,TpDataSetInfoCollect,false,0);
    DefineProp('ListSPInfo',tkClass,__GetListSPInfo,__SetListSPInfo,TpStoredProcCollect,false,0);
    DefineProp('ListErrorMessages',tkClass,__GetListErrorMessages,__SetListErrorMessages,TpErrorMessagesCollect,false,0);
    AddConstant('eFalse',eFalse);
    AddConstant('eTrue',eTrue);
    AddConstant('eUnknown',eUnknown);
  end;
end;

class function TatpFIBDataInfoLibrary.LibraryName: string;
begin
  result := 'pFIBDataInfo';
end;

initialization
  RegisterScripterLibrary(TatpFIBDataInfoLibrary, True);

{$WARNINGS ON}

end.

