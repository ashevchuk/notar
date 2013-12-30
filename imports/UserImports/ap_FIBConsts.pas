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
unit ap_FIBConsts;

interface

uses
  FIBPlatforms,
  FIBConsts,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatFIBConstsLibrary = class(TatScripterLibrary)
    procedure Init; override;
    class function LibraryName: string; override;
  end;




implementation



procedure TatFIBConstsLibrary.Init;
begin
  With Scripter.DefineClass(ClassType) do
  begin
    AddConstant('SCantFindApiProc',SCantFindApiProc);
    AddConstant('SCantLoadLibrary',SCantLoadLibrary);
    AddConstant('SUnknownClientLibrary',SUnknownClientLibrary);
    AddConstant('STransactionForOtherLibrary',STransactionForOtherLibrary);
    AddConstant('SEdErrorPrefix',SEdErrorPrefix);
    AddConstant('SEdDeadLockMess',SEdDeadLockMess);
    AddConstant('SEdNotExistRecord',SEdNotExistRecord);
    AddConstant('SEdMultiplyRecord',SEdMultiplyRecord);
    AddConstant('SEdUnknownError',SEdUnknownError);
    AddConstant('SCantSort',SCantSort);
    AddConstant('SCantGetInfo',SCantGetInfo);
    AddConstant('SDataBaseNotAssigned',SDataBaseNotAssigned);
    AddConstant('SOKButton',SOKButton);
    AddConstant('SCancelButton',SCancelButton);
    AddConstant('SDBEditUserName',SDBEditUserName);
    AddConstant('SDBEditPassword',SDBEditPassword);
    AddConstant('SDBEditSQLRole',SDBEditSQLRole);
    AddConstant('SLoginDlgLoginCaption',SLoginDlgLoginCaption);
    AddConstant('SLoginDlgDatabase',SLoginDlgDatabase);
    AddConstant('SCompEditDataSet_ID',SCompEditDataSet_ID);
    AddConstant('SCompEditDataSetInfoNotExists',SCompEditDataSetInfoNotExists);
    AddConstant('SCompEditDataSetInfoForbid',SCompEditDataSetInfoForbid);
    AddConstant('SCompEditUnableInsertInfoRecord',SCompEditUnableInsertInfoRecord);
    AddConstant('SCompEditFieldInfoLoadError',SCompEditFieldInfoLoadError);
    AddConstant('SFIBErrorCloneCursor',SFIBErrorCloneCursor);
    AddConstant('SFIBErrorBeforeDisconnectDetail',SFIBErrorBeforeDisconnectDetail);
    AddConstant('SFIBErrorBeforeDisconnect',SFIBErrorBeforeDisconnect);
    AddConstant('SFIBErrorAfterDisconnectDetail',SFIBErrorAfterDisconnectDetail);
    AddConstant('SFIBErrorAfterDisconnect',SFIBErrorAfterDisconnect);
    AddConstant('SFIBErrorNoDBLoginDialog',SFIBErrorNoDBLoginDialog);
    AddConstant('SFIBErrorInstallPropertyEditorPackage',SFIBErrorInstallPropertyEditorPackage);
    AddConstant('SFIBErrorIncludeDBLoginDialog',SFIBErrorIncludeDBLoginDialog);
    AddConstant('SFIBErrorCircularLinks',SFIBErrorCircularLinks);
    AddConstant('SFIBErrorParamNotExist',SFIBErrorParamNotExist);
    AddConstant('SFIBErrorWideStringValueTooLong',SFIBErrorWideStringValueTooLong);
    AddConstant('SFIBParamsCountNotEquelValuesCount',SFIBParamsCountNotEquelValuesCount);
    AddConstant('SFIBErrorEOFInComments',SFIBErrorEOFInComments);
    AddConstant('SFIBErrorEOFInString',SFIBErrorEOFInString);
    AddConstant('SFIBErrorParamNameExpected',SFIBErrorParamNameExpected);
    AddConstant('SFIBErrorInvalidComp',SFIBErrorInvalidComp);
    AddConstant('SFIBErrorNotDataSet',SFIBErrorNotDataSet);
    AddConstant('SFIBErrorNotDataSetDetail',SFIBErrorNotDataSetDetail);
    AddConstant('SFIBErrorNotifyEvent',SFIBErrorNotifyEvent);
    AddConstant('SFIBErrorNotifyEventIndexOut',SFIBErrorNotifyEventIndexOut);
    AddConstant('SFIBErrorNotifyEventInvalid',SFIBErrorNotifyEventInvalid);
    AddConstant('SFIBErrorHandlerExists',SFIBErrorHandlerExists);
    AddConstant('SFIBErrorUnableStreamLoad',SFIBErrorUnableStreamLoad);
    AddConstant('SFIBErrorAbortUpdates',SFIBErrorAbortUpdates);
    AddConstant('SFIBErrorUnableGetRecordCount',SFIBErrorUnableGetRecordCount);
    AddConstant('SFIBErrorUnableLock',SFIBErrorUnableLock);
    AddConstant('SFIBErrorGenerationError',SFIBErrorGenerationError);
    AddConstant('SSuccess',SSuccess);
    AddConstant('SDelphiException',SDelphiException);
    AddConstant('SNoOptionsSet',SNoOptionsSet);
    AddConstant('SNoDestinationDirectory',SNoDestinationDirectory);
    AddConstant('SNosourceDirectory',SNosourceDirectory);
    AddConstant('SNoUninstallFile',SNoUninstallFile);
    AddConstant('SOptionNeedsClient',SOptionNeedsClient);
    AddConstant('SOptionNeedsServer',SOptionNeedsServer);
    AddConstant('SInvalidOption',SInvalidOption);
    AddConstant('SInvalidOnErrorResult',SInvalidOnErrorResult);
    AddConstant('SInvalidOnStatusResult',SInvalidOnStatusResult);
    AddConstant('reVarNotArray',reVarNotArray);
    AddConstant('reVarArrayBounds',reVarArrayBounds);
    AddConstant('reVarArrayCreate',reVarArrayCreate);
    AddConstant('SFIBStatNoSave',SFIBStatNoSave);
    AddConstant('SFIBStatNoSaveAppID',SFIBStatNoSaveAppID);
    AddConstant('SCompDatabaseNotConnected',SCompDatabaseNotConnected);
    AddConstant('SEInvalidCharsetData',SEInvalidCharsetData);
    AddConstant('SErrorInProc',SErrorInProc);
    AddConstant('SDBEditCaption',SDBEditCaption);
    AddConstant('SDBEditServerGroup',SDBEditServerGroup);
    AddConstant('SDBEditServer',SDBEditServer);
    AddConstant('SDBEditNetProtocol',SDBEditNetProtocol);
    AddConstant('SDBEditDatabase',SDBEditDatabase);
    AddConstant('SDBEditAlias',SDBEditAlias);
    AddConstant('SDBEditLocal',SDBEditLocal);
    AddConstant('SDBEditRemote',SDBEditRemote);
    AddConstant('SDBEditBrowse',SDBEditBrowse);
    AddConstant('SDBEditConnectParams',SDBEditConnectParams);
    AddConstant('SDBEditConnectCharSet',SDBEditConnectCharSet);
    AddConstant('SDBEditSQLDialect',SDBEditSQLDialect);
    AddConstant('SDBEditLoginPromt',SDBEditLoginPromt);
    AddConstant('SDBEditTestButton',SDBEditTestButton);
    AddConstant('SDBEditGDBFilter',SDBEditGDBFilter);
    AddConstant('SDBEditSuccessConnection',SDBEditSuccessConnection);
    AddConstant('STransEditCaption',STransEditCaption);
    AddConstant('STransEditKind',STransEditKind);
    AddConstant('STransEditSettings',STransEditSettings);
    AddConstant('STransEditNewKind',STransEditNewKind);
    AddConstant('STransEditSaveKindButton',STransEditSaveKindButton);
    AddConstant('STransEditExportButton',STransEditExportButton);
    AddConstant('STransEditImportButton',STransEditImportButton);
    AddConstant('STransEditOpenFilter',STransEditOpenFilter);
    AddConstant('STransEditSaveFilter',STransEditSaveFilter);
    AddConstant('STransEditExportTitle',STransEditExportTitle);
    AddConstant('STransEditNewKindDialog',STransEditNewKindDialog);
    AddConstant('STransEditNewKindName',STransEditNewKindName);
    AddConstant('SFieldInfoCaption',SFieldInfoCaption);
    AddConstant('SFieldInfoCopyFieldsHint',SFieldInfoCopyFieldsHint);
    AddConstant('SFieldInfoCopyFields',SFieldInfoCopyFields);
    AddConstant('SFieldInfoFilter',SFieldInfoFilter);
    AddConstant('SFieldInfoKindTables',SFieldInfoKindTables);
    AddConstant('SFieldInfoProcedures',SFieldInfoProcedures);
    AddConstant('SFieldInfoFilterHint',SFieldInfoFilterHint);
    AddConstant('SFieldInfoGridHint',SFieldInfoGridHint);
    AddConstant('SFieldInfoTablesItem',SFieldInfoTablesItem);
    AddConstant('SFieldInfoProcedureItem',SFieldInfoProcedureItem);
    AddConstant('SFieldInfoUserFormsItem',SFieldInfoUserFormsItem);
    AddConstant('SEdDataSetInfoCaption',SEdDataSetInfoCaption);
    AddConstant('SEdDataSetInfoFields',SEdDataSetInfoFields);
    AddConstant('SEdDataSetInfoKeyField',SEdDataSetInfoKeyField);
    AddConstant('SEdDataSetInfoGenerator',SEdDataSetInfoGenerator);
    AddConstant('SEdDataSetInfoFilter',SEdDataSetInfoFilter);
    AddConstant('FPAutoOptEditorCaption',FPAutoOptEditorCaption);
    AddConstant('FPAutoOptEditorPrimaryKey',FPAutoOptEditorPrimaryKey);
    AddConstant('FPAutoOptEditorModTable',FPAutoOptEditorModTable);
    AddConstant('FPAutoOptEditorSQL',FPAutoOptEditorSQL);
    AddConstant('FPAutoOptEditorAutoGen',FPAutoOptEditorAutoGen);
    AddConstant('FPAutoOptEditorModFields',FPAutoOptEditorModFields);
    AddConstant('FPAutoOptEditorAutoInc',FPAutoOptEditorAutoInc);
    AddConstant('FPAutoOptEditorGenName',FPAutoOptEditorGenName);
    AddConstant('FPAutoOptEditorWhenGet1',FPAutoOptEditorWhenGet1);
    AddConstant('FPAutoOptEditorWhenGet2',FPAutoOptEditorWhenGet2);
    AddConstant('FPAutoOptEditorWhenGet3',FPAutoOptEditorWhenGet3);
    AddConstant('FPConditionsCaption',FPConditionsCaption);
    AddConstant('FPConditionsText',FPConditionsText);
    AddConstant('FPConditionsNames',FPConditionsNames);
    AddConstant('FPConditionsColumnConditions',FPConditionsColumnConditions);
    AddConstant('FPConditionsDelete',FPConditionsDelete);
    AddConstant('FPConditionsAdd',FPConditionsAdd);
    AddConstant('FPConditionsClear',FPConditionsClear);
    AddConstant('FPOptionsCaption',FPOptionsCaption);
    AddConstant('FPOptionsPage',FPOptionsPage);
    AddConstant('FPOptionsTrimChars',FPOptionsTrimChars);
    AddConstant('FPOptionsRefresh',FPOptionsRefresh);
    AddConstant('FPOptionsRefreshDelete',FPOptionsRefreshDelete);
    AddConstant('FPOptionsAutoStart',FPOptionsAutoStart);
    AddConstant('FPOptionsApplyFormats',FPOptionsApplyFormats);
    AddConstant('FPOptionsIdleUpdate',FPOptionsIdleUpdate);
    AddConstant('FPOptionsKeepSort',FPOptionsKeepSort);
    AddConstant('FPOptionsRestoreSort',FPOptionsRestoreSort);
    AddConstant('FPOptionsPreparePage',FPOptionsPreparePage);
    AddConstant('FPOptionsSetRequired',FPOptionsSetRequired);
    AddConstant('FPOptionsSetReadOnly',FPOptionsSetReadOnly);
    AddConstant('FPOptionsSetDefault',FPOptionsSetDefault);
    AddConstant('FPOptionsEmulateBoolean',FPOptionsEmulateBoolean);
    AddConstant('FPOptionsCreateBCD',FPOptionsCreateBCD);
    AddConstant('FPOptionsApplyRepository',FPOptionsApplyRepository);
    AddConstant('FPOptionsSortFields',FPOptionsSortFields);
    AddConstant('FPOptionsRecordCount',FPOptionsRecordCount);
    AddConstant('FPVisibleRecno',FPVisibleRecno);
    AddConstant('SCheckSQLs',SCheckSQLs);
    AddConstant('SEditSQL',SEditSQL);
    AddConstant('SNoErrors',SNoErrors);
    AddConstant('SErrorIn',SErrorIn);
    AddConstant('SNoTimers',SNoTimers);
    AddConstant('SGenSQLCaption',SGenSQLCaption);
    AddConstant('SGenSQLOptions',SGenSQLOptions);
    AddConstant('SGenSQLGetFieldsButton',SGenSQLGetFieldsButton);
    AddConstant('SGenSQLGenerateButton',SGenSQLGenerateButton);
    AddConstant('SGenSQLClearButton',SGenSQLClearButton);
    AddConstant('SGenSQLOnSaveGroup',SGenSQLOnSaveGroup);
    AddConstant('SGenSQLCheckSQLHint',SGenSQLCheckSQLHint);
    AddConstant('SGenSQLCheckSQL',SGenSQLCheckSQL);
    AddConstant('SGenSQLFieldOriginHint',SGenSQLFieldOriginHint);
    AddConstant('SGenSQLFieldOrigin',SGenSQLFieldOrigin);
    AddConstant('SGenSQLGeneratorOptions',SGenSQLGeneratorOptions);
    AddConstant('SGenSQLPrimaryHint',SGenSQLPrimaryHint);
    AddConstant('SGenSQLPrimary',SGenSQLPrimary);
    AddConstant('SGenSQLNonUpdatePrimaryHint',SGenSQLNonUpdatePrimaryHint);
    AddConstant('SGenSQLNonUpdatePrimary',SGenSQLNonUpdatePrimary);
    AddConstant('SGenSQLDefaultSymbol',SGenSQLDefaultSymbol);
    AddConstant('SGenSQLCheckButton',SGenSQLCheckButton);
    AddConstant('SGenSQLKeyFields',SGenSQLKeyFields);
    AddConstant('SGenSQLUpdateFields',SGenSQLUpdateFields);
    AddConstant('SGenSQL_SQLsTabs',SGenSQL_SQLsTabs);
    AddConstant('SGenSQLStatement',SGenSQLStatement);
    AddConstant('SGenSQLMakeSQLTab',SGenSQLMakeSQLTab);
    AddConstant('SGenSQLFilterBy',SGenSQLFilterBy);
    AddConstant('SGenSQLAlias',SGenSQLAlias);
    AddConstant('SGenSQLTablesColumn',SGenSQLTablesColumn);
    AddConstant('SGenSQLView1',SGenSQLView1);
    AddConstant('SGenSQLView2',SGenSQLView2);
    AddConstant('SGenSQLView3',SGenSQLView3);
    AddConstant('SGenSQLTargetMemo',SGenSQLTargetMemo);
    AddConstant('SGenSQLOutput1',SGenSQLOutput1);
    AddConstant('SGenSQLOutput2',SGenSQLOutput2);
    AddConstant('SGenSQLOutput3',SGenSQLOutput3);
    AddConstant('SGenSQLSaveAllButton',SGenSQLSaveAllButton);
    AddConstant('SGenSQLReplaceButton',SGenSQLReplaceButton);
    AddConstant('SGenSQLCheckErrorButton',SGenSQLCheckErrorButton);
    AddConstant('SGenSQLSaveSQLButtonHint',SGenSQLSaveSQLButtonHint);
    AddConstant('SReplaceSQL',SReplaceSQL);
    AddConstant('SGenSQLSaveSQLButton',SGenSQLSaveSQLButton);
    AddConstant('SGenSQLErrorPreffix',SGenSQLErrorPreffix);
    AddConstant('SGenSQLEmpty',SGenSQLEmpty);
    AddConstant('SGenSQLCorrectSQL',SGenSQLCorrectSQL);
    AddConstant('SGenSQLFromNotFound',SGenSQLFromNotFound);
    AddConstant('SCompEditInfoTableNotExist',SCompEditInfoTableNotExist);
    AddConstant('SCompEditEditTransaction',SCompEditEditTransaction);
    AddConstant('SCompEditInfoFieldsNotExist',SCompEditInfoFieldsNotExist);
    AddConstant('SCompEditInfoFieldsForbid',SCompEditInfoFieldsForbid);
    AddConstant('SCompEditEditFieldInfo',SCompEditEditFieldInfo);
    AddConstant('SCompEditErrorMessages',SCompEditErrorMessages);
    AddConstant('SCompEditErrorTableNotExist',SCompEditErrorTableNotExist);
    AddConstant('SCompEditErrorTableForbid',SCompEditErrorTableForbid);
    AddConstant('SCompEditDBEditor',SCompEditDBEditor);
    AddConstant('SCompEditSQLGenerator',SCompEditSQLGenerator);
    AddConstant('SCompSaveToDataSetInfo',SCompSaveToDataSetInfo);
    AddConstant('SCompChooseDataSetInfo',SCompChooseDataSetInfo);
    AddConstant('SCompEditDataSetInfo',SCompEditDataSetInfo);
    AddConstant('SCompEditSQLText',SCompEditSQLText);
    AddConstant('SCompEditStatTableExist',SCompEditStatTableExist);
    AddConstant('SCompEditStatTableCreated',SCompEditStatTableCreated);
    AddConstant('SCompEditCreateStatTable',SCompEditCreateStatTable);
    AddConstant('SCompEditSaveDataSetProperty',SCompEditSaveDataSetProperty);
    AddConstant('SCompEditDataSetDesc',SCompEditDataSetDesc);
    AddConstant('ErrInstallMess',ErrInstallMess);
    AddConstant('FPFIBPlusMenu',FPFIBPlusMenu);
    AddConstant('FPPreferencesMenu',FPPreferencesMenu);
    AddConstant('FPSQLNavigator',FPSQLNavigator);
    AddConstant('FPBuildMenu',FPBuildMenu);
    AddConstant('FPTPrefCaption',FPTPrefCaption);
    AddConstant('FPTGeneratorPref',FPTGeneratorPref);
    AddConstant('FPTGeneratorSuf',FPTGeneratorSuf);
    AddConstant('FPTCharSet',FPTCharSet);
    AddConstant('FPTSQLDialect',FPTSQLDialect);
    AddConstant('FPTStoreConnected',FPTStoreConnected);
    AddConstant('FPTSyncTime',FPTSyncTime);
    AddConstant('FPTUpperOldNames',FPTUpperOldNames);
    AddConstant('FPTUseLoginPromt',FPTUseLoginPromt);
    AddConstant('FPTTimeoutAction',FPTTimeoutAction);
    AddConstant('FPTTimeout',FPTTimeout);
    AddConstant('FPTGotoFirstRecord',FPTGotoFirstRecord);
    AddConstant('FPTCheckParam',FPTCheckParam);
    AddConstant('FPTAutoStartTrans',FPTAutoStartTrans);
    AddConstant('FPTAutoCommitTrans',FPTAutoCommitTrans);
    AddConstant('FPTNavCaption',FPTNavCaption);
    AddConstant('FPTNavGetFormsButtonHint',FPTNavGetFormsButtonHint);
    AddConstant('FPTNavCloseFormsButtonHint',FPTNavCloseFormsButtonHint);
    AddConstant('FPTNavSaveSQLButtonHint',FPTNavSaveSQLButtonHint);
    AddConstant('FPTNavFindButtonHint',FPTNavFindButtonHint);
    AddConstant('FPTNavCheckButtonHint',FPTNavCheckButtonHint);
    AddConstant('FPTNavSaveCallsHint',FPTNavSaveCallsHint);
    AddConstant('FPTNavHideSearchButtonHint',FPTNavHideSearchButtonHint);
    AddConstant('FPTNavShowOIButtonHint',FPTNavShowOIButtonHint);
    AddConstant('FPTNavSearchResults',FPTNavSearchResults);
    AddConstant('FPTNavSelectAllItem',FPTNavSelectAllItem);
    AddConstant('FPTNavUnselectAllItem',FPTNavUnselectAllItem);
    AddConstant('FPTNavGotoCurrentItem',FPTNavGotoCurrentItem);
    AddConstant('FPTNavShowResultsItem',FPTNavShowResultsItem);
    AddConstant('FPTNavHideResultsItem',FPTNavHideResultsItem);
    AddConstant('FPTNavCopyToClipboardItem',FPTNavCopyToClipboardItem);
    AddConstant('FPTNavSaveAllItem',FPTNavSaveAllItem);
    AddConstant('FPTNavSaveSelectSQlItem',FPTNavSaveSelectSQlItem);
    AddConstant('FPTNavSaveCallsItem',FPTNavSaveCallsItem);
    AddConstant('FPTNavClearCallsItem',FPTNavClearCallsItem);
    AddConstant('FPTNavOptions',FPTNavOptions);
    AddConstant('FPTNavIncludeMachineItem',FPTNavIncludeMachineItem);
    AddConstant('FPTNavSQLFilter',FPTNavSQLFilter);
    AddConstant('FPTNavSearchResultCaption',FPTNavSearchResultCaption);
    AddConstant('FPTNavNotFound',FPTNavNotFound);
    AddConstant('FPTNavUnableToGoto',FPTNavUnableToGoto);
    AddConstant('FPTNavProjectsNotExist',FPTNavProjectsNotExist);
  end;
end;

class function TatFIBConstsLibrary.LibraryName: string;
begin
  result := 'FIBConsts';
end;

initialization
  RegisterScripterLibrary(TatFIBConstsLibrary, True);

{$WARNINGS ON}

end.

