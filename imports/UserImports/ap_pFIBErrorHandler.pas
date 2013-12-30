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
unit ap_pFIBErrorHandler;

interface

uses
  SysUtils,
  Classes,
  fib,
  FIBDatabase,
  pFIBDatabase,
  IB_ErrorCodes,
  ibase,
  IB_Intf,
  IB_Externals,
  DB,
  pFIBDataInfo,
  FIBQuery,
  pFIBErrorHandler,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatpFIBErrorHandlerLibrary = class(TatScripterLibrary)
    procedure __IsConnectionLost(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TErrorLexemsClass = class of TErrorLexems;
  TpFibErrorHandlerClass = class of TpFibErrorHandler;

  TatpFIBErrorHandlerDispatcher = class(TatEventDispatcher)
  private
    procedure __TOnFIBErrorEvent( Sender: TObject;  ErrorValue: EFIBError;  KindIBError: TKindIBError; var DoRaise: boolean);
  end;


implementation



procedure TatpFIBErrorHandlerDispatcher.__TOnFIBErrorEvent( Sender: TObject;  ErrorValue: EFIBError;  KindIBError: TKindIBError; var DoRaise: boolean);
var
  KindIBErrorTemp: variant;
  DoRaiseTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TOnFIBErrorEvent(BeforeCall)(Sender,ErrorValue,KindIBError,DoRaise);
    KindIBErrorTemp := Integer(KindIBError);
    DoRaiseTemp := DoRaise;
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [Sender,ErrorValue,KindIBErrorTemp,DoRaiseTemp]);
    DoRaise := DoRaiseTemp;
    if AssignedMethod(AfterCall) then
      TOnFIBErrorEvent(AfterCall)(Sender,ErrorValue,KindIBError,DoRaise);
  end;
end;

procedure TatpFIBErrorHandlerLibrary.__IsConnectionLost(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := pFIBErrorHandler.IsConnectionLost(VarToInteger(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatpFIBErrorHandlerLibrary.Init;
begin
  Scripter.DefineClassByRTTI(TErrorLexems);
  Scripter.DefineClassByRTTI(TpFibErrorHandler);
  DefineEventAdapter(TypeInfo(TOnFIBErrorEvent), TatpFIBErrorHandlerDispatcher, @TatpFIBErrorHandlerDispatcher.__TOnFIBErrorEvent);
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('IsConnectionLost',1,tkVariant,nil,__IsConnectionLost,false,0,'IBErrorCode: integer');
    AddConstant('oeException',oeException);
    AddConstant('oeForeignKey',oeForeignKey);
    AddConstant('oeLostConnect',oeLostConnect);
    AddConstant('oeCheck',oeCheck);
    AddConstant('oeUniqueViolation',oeUniqueViolation);
    AddConstant('keNoError',keNoError);
    AddConstant('keException',keException);
    AddConstant('keForeignKey',keForeignKey);
    AddConstant('keLostConnect',keLostConnect);
    AddConstant('keSecurity',keSecurity);
    AddConstant('keCheck',keCheck);
    AddConstant('keUniqueViolation',keUniqueViolation);
    AddConstant('keOther',keOther);
  end;
end;

class function TatpFIBErrorHandlerLibrary.LibraryName: string;
begin
  result := 'pFIBErrorHandler';
end;

initialization
  RegisterScripterLibrary(TatpFIBErrorHandlerLibrary, True);

{$WARNINGS ON}

end.

