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
unit ap_pFIBProps;

interface

uses
  Classes,
  SysUtils,
  DB,
  IniFiles,
  FIBPlatforms,
  pFIBProps,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatpFIBPropsLibrary = class(TatScripterLibrary)
    procedure __GetDefaultPrepareOptions(AMachine: TatVirtualMachine);
    procedure __GetDefaultOptions(AMachine: TatVirtualMachine);
    procedure __GetDefaultDetailConditions(AMachine: TatVirtualMachine);
    procedure __GetDefStoreConnected(AMachine: TatVirtualMachine);
    procedure __GetDefSynchronizeTime(AMachine: TatVirtualMachine);
    procedure __GetDefUpperOldNames(AMachine: TatVirtualMachine);
    procedure __GetDefUseLoginPrompt(AMachine: TatVirtualMachine);
    procedure __GetDefCharSet(AMachine: TatVirtualMachine);
    procedure __GetDefSQLDialect(AMachine: TatVirtualMachine);
    procedure __GetDefTimeOutAction(AMachine: TatVirtualMachine);
    procedure __GetDefTimeOut(AMachine: TatVirtualMachine);
    procedure __GetDefTPBMode(AMachine: TatVirtualMachine);
    procedure __GetDefParamCheck(AMachine: TatVirtualMachine);
    procedure __GetDefGoToFirstRecordOnExecute(AMachine: TatVirtualMachine);
    procedure __GetDefQueryOptions(AMachine: TatVirtualMachine);
    procedure __GetDefPrefixGenName(AMachine: TatVirtualMachine);
    procedure __GetDefSufixGenName(AMachine: TatVirtualMachine);
    procedure __GetDefEmptyStrToNull(AMachine: TatVirtualMachine);
    procedure __GetFF_UseRuntimeDefaults(AMachine: TatVirtualMachine);
    procedure __GetRDefDateFormat(AMachine: TatVirtualMachine);
    procedure __GetRDefTimeFormat(AMachine: TatVirtualMachine);
    procedure __GetRDefDisplayFormatNum(AMachine: TatVirtualMachine);
    procedure __GetRDefEditFormatNum(AMachine: TatVirtualMachine);
    procedure __GetdDefDateFormat(AMachine: TatVirtualMachine);
    procedure __GetdDefTimeFormat(AMachine: TatVirtualMachine);
    procedure __GetdDefDateTimeFormat(AMachine: TatVirtualMachine);
    procedure __GetdDefDisplayFormatNum(AMachine: TatVirtualMachine);
    procedure __GetdDefEditFormatNum(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TSQLsClass = class of TSQLs;
  TFormatFieldsClass = class of TFormatFields;
  TAutoUpdateOptionsClass = class of TAutoUpdateOptions;
  TGeneratorParamsClass = class of TGeneratorParams;
  TGeneratorsCacheClass = class of TGeneratorsCache;
  TConnectParamsClass = class of TConnectParams;
  TCacheSchemaOptionsClass = class of TCacheSchemaOptions;
  TDBParamsClass = class of TDBParams;
  TBlobSwapSupportClass = class of TBlobSwapSupport;
  TConditionClass = class of TCondition;
  TConditionsClass = class of TConditions;
  TMemoSubtypesClass = class of TMemoSubtypes;



implementation



procedure TatpFIBPropsLibrary.__GetDefaultPrepareOptions(AMachine: TatVirtualMachine);
var
PropValueSet: TpPrepareOptions;
begin
  with AMachine do
  begin
    PropValueSet := pFIBProps.DefaultPrepareOptions;
    ReturnOutputArg(IntFromSet(PropValueSet, SizeOf(PropValueSet)));
  end;
end;

procedure TatpFIBPropsLibrary.__GetDefaultOptions(AMachine: TatVirtualMachine);
var
PropValueSet: TpFIBDsOptions;
begin
  with AMachine do
  begin
    PropValueSet := pFIBProps.DefaultOptions;
    ReturnOutputArg(IntFromSet(PropValueSet, SizeOf(PropValueSet)));
  end;
end;

procedure TatpFIBPropsLibrary.__GetDefaultDetailConditions(AMachine: TatVirtualMachine);
var
PropValueSet: TDetailConditions;
begin
  with AMachine do
  begin
    PropValueSet := pFIBProps.DefaultDetailConditions;
    ReturnOutputArg(IntFromSet(PropValueSet, SizeOf(PropValueSet)));
  end;
end;

procedure TatpFIBPropsLibrary.__GetDefStoreConnected(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(pFIBProps.DefStoreConnected);
  end;
end;

procedure TatpFIBPropsLibrary.__GetDefSynchronizeTime(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(pFIBProps.DefSynchronizeTime);
  end;
end;

procedure TatpFIBPropsLibrary.__GetDefUpperOldNames(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(pFIBProps.DefUpperOldNames);
  end;
end;

procedure TatpFIBPropsLibrary.__GetDefUseLoginPrompt(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(pFIBProps.DefUseLoginPrompt);
  end;
end;

procedure TatpFIBPropsLibrary.__GetDefCharSet(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(pFIBProps.DefCharSet));
  end;
end;

procedure TatpFIBPropsLibrary.__GetDefSQLDialect(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(pFIBProps.DefSQLDialect));
  end;
end;

procedure TatpFIBPropsLibrary.__GetDefTimeOutAction(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(pFIBProps.DefTimeOutAction));
  end;
end;

procedure TatpFIBPropsLibrary.__GetDefTimeOut(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(pFIBProps.DefTimeOut));
  end;
end;

procedure TatpFIBPropsLibrary.__GetDefTPBMode(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(pFIBProps.DefTPBMode));
  end;
end;

procedure TatpFIBPropsLibrary.__GetDefParamCheck(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(pFIBProps.DefParamCheck);
  end;
end;

procedure TatpFIBPropsLibrary.__GetDefGoToFirstRecordOnExecute(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(pFIBProps.DefGoToFirstRecordOnExecute);
  end;
end;

procedure TatpFIBPropsLibrary.__GetDefQueryOptions(AMachine: TatVirtualMachine);
var
PropValueSet: TpFIBQueryOptions;
begin
  with AMachine do
  begin
    PropValueSet := pFIBProps.DefQueryOptions;
    ReturnOutputArg(IntFromSet(PropValueSet, SizeOf(PropValueSet)));
  end;
end;

procedure TatpFIBPropsLibrary.__GetDefPrefixGenName(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(pFIBProps.DefPrefixGenName));
  end;
end;

procedure TatpFIBPropsLibrary.__GetDefSufixGenName(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(pFIBProps.DefSufixGenName));
  end;
end;

procedure TatpFIBPropsLibrary.__GetDefEmptyStrToNull(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(pFIBProps.DefEmptyStrToNull);
  end;
end;

procedure TatpFIBPropsLibrary.__GetFF_UseRuntimeDefaults(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(pFIBProps.FF_UseRuntimeDefaults);
  end;
end;

procedure TatpFIBPropsLibrary.__GetRDefDateFormat(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(pFIBProps.RDefDateFormat));
  end;
end;

procedure TatpFIBPropsLibrary.__GetRDefTimeFormat(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(pFIBProps.RDefTimeFormat));
  end;
end;

procedure TatpFIBPropsLibrary.__GetRDefDisplayFormatNum(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(pFIBProps.RDefDisplayFormatNum));
  end;
end;

procedure TatpFIBPropsLibrary.__GetRDefEditFormatNum(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(pFIBProps.RDefEditFormatNum));
  end;
end;

procedure TatpFIBPropsLibrary.__GetdDefDateFormat(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(pFIBProps.dDefDateFormat));
  end;
end;

procedure TatpFIBPropsLibrary.__GetdDefTimeFormat(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(pFIBProps.dDefTimeFormat));
  end;
end;

procedure TatpFIBPropsLibrary.__GetdDefDateTimeFormat(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(pFIBProps.dDefDateTimeFormat));
  end;
end;

procedure TatpFIBPropsLibrary.__GetdDefDisplayFormatNum(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(pFIBProps.dDefDisplayFormatNum));
  end;
end;

procedure TatpFIBPropsLibrary.__GetdDefEditFormatNum(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(pFIBProps.dDefEditFormatNum));
  end;
end;

procedure TatpFIBPropsLibrary.Init;
begin
  Scripter.DefineClassByRTTI(TSQLs);
  Scripter.DefineClassByRTTI(TFormatFields);
  Scripter.DefineClassByRTTI(TAutoUpdateOptions);
  Scripter.DefineClassByRTTI(TGeneratorParams);
  Scripter.DefineClassByRTTI(TGeneratorsCache);
  Scripter.DefineClassByRTTI(TConnectParams);
  Scripter.DefineClassByRTTI(TCacheSchemaOptions);
  Scripter.DefineClassByRTTI(TDBParams);
  Scripter.DefineClassByRTTI(TBlobSwapSupport);
  Scripter.DefineClassByRTTI(TCondition);
  Scripter.DefineClassByRTTI(TConditions);
  Scripter.DefineClassByRTTI(TMemoSubtypes);
  With Scripter.DefineClass(ClassType) do
  begin
    DefineProp('DefaultPrepareOptions',tkInteger,__GetDefaultPrepareOptions,nil,nil,false,0);
    DefineProp('DefaultOptions',tkInteger,__GetDefaultOptions,nil,nil,false,0);
    DefineProp('DefaultDetailConditions',tkInteger,__GetDefaultDetailConditions,nil,nil,false,0);
    DefineProp('DefStoreConnected',tkVariant,__GetDefStoreConnected,nil,nil,false,0);
    DefineProp('DefSynchronizeTime',tkVariant,__GetDefSynchronizeTime,nil,nil,false,0);
    DefineProp('DefUpperOldNames',tkVariant,__GetDefUpperOldNames,nil,nil,false,0);
    DefineProp('DefUseLoginPrompt',tkVariant,__GetDefUseLoginPrompt,nil,nil,false,0);
    DefineProp('DefCharSet',tkVariant,__GetDefCharSet,nil,nil,false,0);
    DefineProp('DefSQLDialect',tkInteger,__GetDefSQLDialect,nil,nil,false,0);
    DefineProp('DefTimeOutAction',tkEnumeration,__GetDefTimeOutAction,nil,nil,false,0);
    DefineProp('DefTimeOut',tkInteger,__GetDefTimeOut,nil,nil,false,0);
    DefineProp('DefTPBMode',tkEnumeration,__GetDefTPBMode,nil,nil,false,0);
    DefineProp('DefParamCheck',tkVariant,__GetDefParamCheck,nil,nil,false,0);
    DefineProp('DefGoToFirstRecordOnExecute',tkVariant,__GetDefGoToFirstRecordOnExecute,nil,nil,false,0);
    DefineProp('DefQueryOptions',tkInteger,__GetDefQueryOptions,nil,nil,false,0);
    DefineProp('DefPrefixGenName',tkVariant,__GetDefPrefixGenName,nil,nil,false,0);
    DefineProp('DefSufixGenName',tkVariant,__GetDefSufixGenName,nil,nil,false,0);
    DefineProp('DefEmptyStrToNull',tkVariant,__GetDefEmptyStrToNull,nil,nil,false,0);
    DefineProp('FF_UseRuntimeDefaults',tkVariant,__GetFF_UseRuntimeDefaults,nil,nil,false,0);
    DefineProp('RDefDateFormat',tkVariant,__GetRDefDateFormat,nil,nil,false,0);
    DefineProp('RDefTimeFormat',tkVariant,__GetRDefTimeFormat,nil,nil,false,0);
    DefineProp('RDefDisplayFormatNum',tkVariant,__GetRDefDisplayFormatNum,nil,nil,false,0);
    DefineProp('RDefEditFormatNum',tkVariant,__GetRDefEditFormatNum,nil,nil,false,0);
    DefineProp('dDefDateFormat',tkVariant,__GetdDefDateFormat,nil,nil,false,0);
    DefineProp('dDefTimeFormat',tkVariant,__GetdDefTimeFormat,nil,nil,false,0);
    DefineProp('dDefDateTimeFormat',tkVariant,__GetdDefDateTimeFormat,nil,nil,false,0);
    DefineProp('dDefDisplayFormatNum',tkVariant,__GetdDefDisplayFormatNum,nil,nil,false,0);
    DefineProp('dDefEditFormatNum',tkVariant,__GetdDefEditFormatNum,nil,nil,false,0);
    AddConstant('koBefore',koBefore);
    AddConstant('koAfter',koAfter);
    AddConstant('koOther',koOther);
    AddConstant('eoYes',eoYes);
    AddConstant('eoNo',eoNo);
    AddConstant('eoUnknown',eoUnknown);
    AddConstant('pfSetRequiredFields',pfSetRequiredFields);
    AddConstant('pfSetReadOnlyFields',pfSetReadOnlyFields);
    AddConstant('pfImportDefaultValues',pfImportDefaultValues);
    AddConstant('psUseBooleanField',psUseBooleanField);
    AddConstant('psUseGuidField',psUseGuidField);
    AddConstant('psSQLINT64ToBCD',psSQLINT64ToBCD);
    AddConstant('psApplyRepositary',psApplyRepositary);
    AddConstant('psGetOrderInfo',psGetOrderInfo);
    AddConstant('psAskRecordCount',psAskRecordCount);
    AddConstant('psCanEditComputedFields',psCanEditComputedFields);
    AddConstant('psSetEmptyStrToNull',psSetEmptyStrToNull);
    AddConstant('psSupportUnicodeBlobs',psSupportUnicodeBlobs);
    AddConstant('psUseLargeIntField',psUseLargeIntField);
    AddConstant('poTrimCharFields',poTrimCharFields);
    AddConstant('poRefreshAfterPost',poRefreshAfterPost);
    AddConstant('poRefreshDeletedRecord',poRefreshDeletedRecord);
    AddConstant('poStartTransaction',poStartTransaction);
    AddConstant('poAutoFormatFields',poAutoFormatFields);
    AddConstant('poProtectedEdit',poProtectedEdit);
    AddConstant('poUseSelectForLock',poUseSelectForLock);
    AddConstant('poKeepSorting',poKeepSorting);
    AddConstant('poPersistentSorting',poPersistentSorting);
    AddConstant('poVisibleRecno',poVisibleRecno);
    AddConstant('poNoForceIsNull',poNoForceIsNull);
    AddConstant('poFetchAll',poFetchAll);
    AddConstant('poFreeHandlesAfterClose',poFreeHandlesAfterClose);
    AddConstant('poCacheCalcFields',poCacheCalcFields);
    AddConstant('poRefreshAfterDelete',poRefreshAfterDelete);
    AddConstant('poDontCloseAfterEndTransaction',poDontCloseAfterEndTransaction);
    AddConstant('qoStartTransaction',qoStartTransaction);
    AddConstant('qoAutoCommit',qoAutoCommit);
    AddConstant('qoTrimCharFields',qoTrimCharFields);
    AddConstant('qoNoForceIsNull',qoNoForceIsNull);
    AddConstant('qoFreeHandleAfterExecute',qoFreeHandleAfterExecute);
    AddConstant('dcForceOpen',dcForceOpen);
    AddConstant('dcIgnoreMasterClose',dcIgnoreMasterClose);
    AddConstant('dcForceMasterRefresh',dcForceMasterRefresh);
    AddConstant('dcWaitEndMasterScroll',dcWaitEndMasterScroll);
    AddConstant('forNoRule',forNoRule);
    AddConstant('forTableAndFieldName',forTableAndFieldName);
    AddConstant('forClientFieldName',forClientFieldName);
    AddConstant('forTableAliasAndFieldName',forTableAliasAndFieldName);
    AddConstant('wgNever',wgNever);
    AddConstant('wgOnNewRecord',wgOnNewRecord);
    AddConstant('wgBeforePost',wgBeforePost);
    AddConstant('rfAll',rfAll);
    AddConstant('rfKeyFields',rfKeyFields);
    AddConstant('rfBlobFields',rfBlobFields);
    AddConstant('No',No);
    AddConstant('forAll',forAll);
    AddConstant('forGeneratorList',forGeneratorList);
    AddConstant('TARollback1',TARollback1);
    AddConstant('TARollbackRetaining1',TARollbackRetaining1);
    AddConstant('TACommit1',TACommit1);
    AddConstant('TACommitRetaining1',TACommitRetaining1);
    AddConstant('tpbDefault',tpbDefault);
    AddConstant('tpbReadCommitted',tpbReadCommitted);
    AddConstant('tpbRepeatableRead',tpbRepeatableRead);
    AddConstant('csInApply',csInApply);
    AddConstant('csInCancel',csInCancel);
    AddConstant('csInRestorePrimarySQL',csInRestorePrimarySQL);
    AddConstant('StatDefPrepareOptions',IntFromConstSet(StatDefPrepareOptions));
    AddConstant('StatDefDataSetOptions',IntFromConstSet(StatDefDataSetOptions));
    AddConstant('RegFIBRoot',RegFIBRoot);
    AddConstant('RegFIBTrKinds',RegFIBTrKinds);
    AddConstant('RegPreferences',RegPreferences);
    AddConstant('RegRepository',RegRepository);
  end;
end;

class function TatpFIBPropsLibrary.LibraryName: string;
begin
  result := 'pFIBProps';
end;

initialization
  RegisterScripterLibrary(TatpFIBPropsLibrary, True);

{$WARNINGS ON}

end.

