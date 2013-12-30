unit uRegFIBPlus;

interface

uses
  IDEMain, ap_Mask,
  ap_fib,
  ap_FIBConsts,
  ap_FIBDatabase,
  ap_FIBDataSet,
  ap_FIBQuery;

procedure IDERegisterFIBPlusTab(AEngine: TIDEEngine);

implementation
uses   ibase,
  IB_Intf,
  ib_externals,
  fib,
  FIBPlatforms,
  pFIBProps,
  pFIBFieldsDescr,
  DB,
  FIBCacheManage,
  DBCommon,
  DbConsts,
  DBParsers,
  FIBDatabase,
  FIBQuery,
  FIBMiscellaneous,
  SqlTxtRtns,
  pFIBLists,
  FIBCloneComponents,
  pFIBInterfaces,
  pFIBEventLists,
  FIBMDTInterface,
  Classes,
  StdFuncs,
  Forms,
  Controls,
  FIBDataSet,
  System.Variants,
  atScript;

procedure IDERegisterFIBPlusTab(AEngine: TIDEEngine);
begin
  With AEngine do
  begin
    BeginRegisterComponents;
    try
      RegisterComponent('FireBird',     TFIBDatabase,    'FIBDatabase,DB,FIBQuery,FIBDataSet');
      RegisterComponent('FireBird',     TFIBTransaction, 'FIBDatabase,DB,FIBQuery,FIBDataSet');
      RegisterComponent('FireBird',     TFIBDataSet,     'FIBDatabase,DB,FIBQuery,FIBDataSet');
      RegisterComponent('FireBird',     TFIBQuery,       'FIBDatabase,DB,FIBQuery,FIBDataSet');
    finally
      EndRegisterComponents;
    end;
  end;
end;

end.
