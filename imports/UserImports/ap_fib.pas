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
unit ap_fib;

interface

uses
  SyncObjs,
  SysUtils,
  Classes,
  ibase,
  IB_Intf,
  ib_externals,
  Db,
  FIBPlatforms,
  fib,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatfibLibrary = class(TatScripterLibrary)
    procedure __FIBAlloc(AMachine: TatVirtualMachine);
    procedure __RegisterErrorHandler(AMachine: TatVirtualMachine);
    procedure __UnRegisterErrorHandler(AMachine: TatVirtualMachine);
    procedure __ErrorHandlerRegistered(AMachine: TatVirtualMachine);
    procedure __StatusVectorAsText(AMachine: TatVirtualMachine);
    procedure __GenerateDPB(AMachine: TatVirtualMachine);
    procedure __GenerateTPB(AMachine: TatVirtualMachine);
    procedure __SetIBErrorMessages(AMachine: TatVirtualMachine);
    procedure __GetIBErrorMessages(AMachine: TatVirtualMachine);
    procedure __GetFIBCS(AMachine: TatVirtualMachine);
    procedure __SetFIBCS(AMachine: TatVirtualMachine);
    procedure __GethFIBTLGlobals(AMachine: TatVirtualMachine);
    procedure __SethFIBTLGlobals(AMachine: TatVirtualMachine);
//    procedure __GetIBErrorMessages(AMachine: TatVirtualMachine); overload;
//    procedure __SetIBErrorMessages(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  EFIBErrorClass = class of EFIBError;
  EFIBInterBaseErrorClass = class of EFIBInterBaseError;
  EFIBClientErrorClass = class of EFIBClientError;



implementation



procedure TatfibLibrary.__FIBAlloc(AMachine: TatVirtualMachine);
  var
  Param0: Variant;
begin
  with AMachine do
  begin
Param0 := GetInputArg(0);
    fib.FIBAlloc(Param0,VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)));
    SetInputArg(0,Param0);
  end;
end;

procedure TatfibLibrary.__RegisterErrorHandler(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    fib.RegisterErrorHandler(TComponent(GetInputArgAsClass(0)));
  end;
end;

procedure TatfibLibrary.__UnRegisterErrorHandler(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    fib.UnRegisterErrorHandler;
  end;
end;

procedure TatfibLibrary.__ErrorHandlerRegistered(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := fib.ErrorHandlerRegistered;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatfibLibrary.__StatusVectorAsText(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(fib.StatusVectorAsText);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatfibLibrary.__GenerateDPB(AMachine: TatVirtualMachine);
  var
  Param1: AnsiString;
  Param2: Short;
begin
  with AMachine do
  begin
Param1 := GetInputArg(1);
Param2 := VarToInteger(GetInputArg(2));
    fib.GenerateDPB(TStrings(GetInputArgAsClass(0)),Param1,Param2,GetInputArg(3));
    SetInputArg(1,Param1);
    SetInputArg(2,Integer(Param2));
  end;
end;

procedure TatfibLibrary.__GenerateTPB(AMachine: TatVirtualMachine);
  var
  Param1: AnsiString;
  Param2: Short;
begin
  with AMachine do
  begin
Param1 := GetInputArg(1);
Param2 := VarToInteger(GetInputArg(2));
    fib.GenerateTPB(TStrings(GetInputArgAsClass(0)),Param1,Param2,GetInputArg(3));
    SetInputArg(1,Param1);
    SetInputArg(2,Integer(Param2));
  end;
end;

procedure TatfibLibrary.__SetIBErrorMessages(AMachine: TatVirtualMachine);
  var
  Param0: TIBErrorMessages;
begin
  with AMachine do
  begin
IntToSet(Param0, VarToInteger(GetInputArg(0)), SizeOf(Param0));
    fib.SetIBErrorMessages(Param0);
  end;
end;

procedure TatfibLibrary.__GetIBErrorMessages(AMachine: TatVirtualMachine);
  var
  AResultSet: TIBErrorMessages;
  AResult: variant;
begin
  with AMachine do
  begin
    AResultSet := fib.GetIBErrorMessages;
    AResult := IntFromSet(AResultSet, SizeOf(AResultSet));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatfibLibrary.__GetFIBCS(AMachine: TatVirtualMachine);
var
  Return: Variant;
begin
  TVarData(Return).VPointer := fib.FIBCS;
  with AMachine do
  begin
    ReturnOutputArg(Return);
  end;
end;

procedure TatfibLibrary.__SetFIBCS(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    fib.FIBCS:=TCriticalSection(AMachine.GetInputArgAsClass(0));
  end;
end;

procedure TatfibLibrary.__GethFIBTLGlobals(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(fib.hFIBTLGlobals));
  end;
end;

procedure TatfibLibrary.__SethFIBTLGlobals(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    fib.hFIBTLGlobals:=VarToInteger(GetInputArg(0));
  end;
end;

{
procedure TatfibLibrary.__GetIBErrorMessages(AMachine: TatVirtualMachine);
var
PropValueSet: TIBErrorMessages;
begin
  with AMachine do
  begin
    PropValueSet := fib.IBErrorMessages;
    ReturnOutputArg(IntFromSet(PropValueSet, SizeOf(PropValueSet)));
  end;
end;

procedure TatfibLibrary.__SetIBErrorMessages(AMachine: TatVirtualMachine);
  var
  TempVar: TIBErrorMessages;
begin
  with AMachine do
  begin
    IntToSet(TempVar, VarToInteger(GetInputArg(0)), SizeOf(TempVar));
    fib.IBErrorMessages:=TempVar;
  end;
end;
 }

procedure TatfibLibrary.Init;
begin
  Scripter.DefineClassByRTTI(EFIBError);
  Scripter.DefineClassByRTTI(EFIBInterBaseError);
  Scripter.DefineClassByRTTI(EFIBClientError);
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('FIBAlloc',3,tkNone,nil,__FIBAlloc,false,0,'p; OldSize: DWord; NewSize: DWord').SetVarArgs([0]);
    DefineMethod('RegisterErrorHandler',1,tkNone,nil,__RegisterErrorHandler,false,0,'aErrorHandler: TComponent');
    DefineMethod('UnRegisterErrorHandler',0,tkNone,nil,__UnRegisterErrorHandler,false,0,'');
    DefineMethod('ErrorHandlerRegistered',0,tkVariant,nil,__ErrorHandlerRegistered,false,0,'');
    DefineMethod('StatusVectorAsText',0,tkVariant,nil,__StatusVectorAsText,false,0,'');
    DefineMethod('GenerateDPB',4,tkNone,nil,__GenerateDPB,false,0,'sl: TStrings; DPB: AnsiString; DPBLength: Short; IsFirebird: boolean').SetVarArgs([1,2]);
    DefineMethod('GenerateTPB',4,tkNone,nil,__GenerateTPB,false,0,'sl: TStrings; TPB: AnsiString; TPBLength: Short; IsFB21orMore: boolean').SetVarArgs([1,2]);
    DefineMethod('SetIBErrorMessages',1,tkNone,nil,__SetIBErrorMessages,false,0,'Value: TIBErrorMessages');
    DefineMethod('GetIBErrorMessages',0,tkInteger,nil,__GetIBErrorMessages,false,0,'');
    DefineProp('FIBCS',tkVariant,__GetFIBCS,__SetFIBCS,nil,false,0);
    DefineProp('hFIBTLGlobals',tkInteger,__GethFIBTLGlobals,__SethFIBTLGlobals,nil,false,0);
    DefineProp('IBErrorMessages',tkInteger,__GetIBErrorMessages,__SetIBErrorMessages,nil,false,0);
    AddConstant('ShowSQLCode',ShowSQLCode);
    AddConstant('ShowIBMessage',ShowIBMessage);
    AddConstant('ShowSQLMessage',ShowSQLMessage);
    AddConstant('ShowRaiserName',ShowRaiserName);
    AddConstant('feUnknownError',feUnknownError);
    AddConstant('feNotSupported',feNotSupported);
    AddConstant('feNotPermitted',feNotPermitted);
    AddConstant('feFileAccessError',feFileAccessError);
    AddConstant('feConnectionTimeout',feConnectionTimeout);
    AddConstant('feCannotSetDatabase',feCannotSetDatabase);
    AddConstant('feCannotSetTransaction',feCannotSetTransaction);
    AddConstant('feOperationCancelled',feOperationCancelled);
    AddConstant('feDPBConstantNotSupported',feDPBConstantNotSupported);
    AddConstant('feDPBConstantUnknown',feDPBConstantUnknown);
    AddConstant('feTPBConstantNotSupported',feTPBConstantNotSupported);
    AddConstant('feTPBConstantUnknown',feTPBConstantUnknown);
    AddConstant('feDatabaseClosed',feDatabaseClosed);
    AddConstant('feDatabaseOpen',feDatabaseOpen);
    AddConstant('feDatabaseNameMissing',feDatabaseNameMissing);
    AddConstant('feNotInTransaction',feNotInTransaction);
    AddConstant('feInTransaction',feInTransaction);
    AddConstant('feTimeoutNegative',feTimeoutNegative);
    AddConstant('feNoDatabasesInTransaction',feNoDatabasesInTransaction);
    AddConstant('feUpdateWrongDB',feUpdateWrongDB);
    AddConstant('feUpdateWrongTR',feUpdateWrongTR);
    AddConstant('feDatabaseNotAssigned',feDatabaseNotAssigned);
    AddConstant('feTransactionNotAssigned',feTransactionNotAssigned);
    AddConstant('feXSQLDAIndexOutOfRange',feXSQLDAIndexOutOfRange);
    AddConstant('feXSQLDANameDoesNotExist',feXSQLDANameDoesNotExist);
    AddConstant('feEOF',feEOF);
    AddConstant('feBOF',feBOF);
    AddConstant('feInvalidStatementHandle',feInvalidStatementHandle);
    AddConstant('feDatasetOpen',feDatasetOpen);
    AddConstant('feDatasetClosed',feDatasetClosed);
    AddConstant('feUnknownSQLDataType',feUnknownSQLDataType);
    AddConstant('feInvalidColumnIndex',feInvalidColumnIndex);
    AddConstant('feInvalidParamColumnIndex',feInvalidParamColumnIndex);
    AddConstant('feInvalidDataConversion',feInvalidDataConversion);
    AddConstant('feColumnIsNotNullable',feColumnIsNotNullable);
    AddConstant('feBlobCannotBeRead',feBlobCannotBeRead);
    AddConstant('feBlobCannotBeWritten',feBlobCannotBeWritten);
    AddConstant('feEmptyQuery',feEmptyQuery);
    AddConstant('feCannotOpenNonSQLSelect',feCannotOpenNonSQLSelect);
    AddConstant('feNoFieldAccess',feNoFieldAccess);
    AddConstant('feFieldReadOnly',feFieldReadOnly);
    AddConstant('feFieldNotFound',feFieldNotFound);
    AddConstant('feNotInEditState',feNotInEditState);
    AddConstant('feNotEditing',feNotEditing);
    AddConstant('feCannotInsert',feCannotInsert);
    AddConstant('feCannotPost',feCannotPost);
    AddConstant('feCannotUpdate',feCannotUpdate);
    AddConstant('feCannotDelete',feCannotDelete);
    AddConstant('feCannotRefresh',feCannotRefresh);
    AddConstant('feBufferNotSet',feBufferNotSet);
    AddConstant('feCircularReference',feCircularReference);
    AddConstant('feSQLParseError',feSQLParseError);
    AddConstant('feUserAbort',feUserAbort);
    AddConstant('feDataSetUniDirectional',feDataSetUniDirectional);
    AddConstant('feCannotCreateSharedResource',feCannotCreateSharedResource);
    AddConstant('feWindowsAPIError',feWindowsAPIError);
    AddConstant('feColumnListsDontMatch',feColumnListsDontMatch);
    AddConstant('feColumnTypesDontMatch',feColumnTypesDontMatch);
    AddConstant('feCantEndSharedTransaction',feCantEndSharedTransaction);
    AddConstant('feNotIsArrayField',feNotIsArrayField);
    AddConstant('feWrongDimension',feWrongDimension);
    AddConstant('feSQLDialectInvalid',feSQLDialectInvalid);
    AddConstant('feIBMissing',feIBMissing);
    AddConstant('feIB60feature',feIB60feature);
    AddConstant('feInterBaseInstallMissing',feInterBaseInstallMissing);
    AddConstant('feServiceActive',feServiceActive);
    AddConstant('feServiceInActive',feServiceInActive);
    AddConstant('feServerNameMissing',feServerNameMissing);
    AddConstant('feQueryParamsError',feQueryParamsError);
    AddConstant('feStartParamsError',feStartParamsError);
    AddConstant('feOutputParsingError',feOutputParsingError);
    AddConstant('feUseSpecificProcedures',feUseSpecificProcedures);
    AddConstant('feSPBConstantNotSupported',feSPBConstantNotSupported);
    AddConstant('feSPBConstantUnknown',feSPBConstantUnknown);
    AddConstant('feFieldSizeMismatch',feFieldSizeMismatch);
    AddConstant('feCantUseLimitedCache',feCantUseLimitedCache);
    AddConstant('feFieldListEmpty',feFieldListEmpty);
    AddConstant('feCantUseField',feCantUseField);
    AddConstant('feFB2feature',feFB2feature);
    AddConstant('feMDTRealDBSocketNotFound',feMDTRealDBSocketNotFound);
    AddConstant('feMDTTransactionAlreadyOpened',feMDTTransactionAlreadyOpened);
    AddConstant('feMDTIncompatibleFIBXSQLDAAndMDTDataRecord',feMDTIncompatibleFIBXSQLDAAndMDTDataRecord);
    AddConstant('feMDTUnexpectedError',feMDTUnexpectedError);
    AddConstant('feMDTSavePointAlreadySet',feMDTSavePointAlreadySet);
    AddConstant('feMDTSavePointNotFound',feMDTSavePointNotFound);
    AddConstant('CRLF',CRLF);
    AddConstant('FIBLocalBufferLength',FIBLocalBufferLength);
    AddConstant('FIBBigLocalBufferLength',FIBBigLocalBufferLength);
    AddConstant('FIBHugeLocalBufferLength',FIBHugeLocalBufferLength);
    AddConstant('DPBPrefix',DPBPrefix);
    AddConstant('TPBPrefix',TPBPrefix);
    AddConstant('SQLDecimalSeparator',SQLDecimalSeparator);
    AddConstant('TrueStr',TrueStr);
    AddConstant('FalseStr',FalseStr);
  end;
end;

class function TatfibLibrary.LibraryName: string;
begin
  result := 'fib';
end;

initialization
  RegisterScripterLibrary(TatfibLibrary, True);

{$WARNINGS ON}

end.

