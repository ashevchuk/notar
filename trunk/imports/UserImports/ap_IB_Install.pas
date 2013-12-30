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
unit ap_IB_Install;

interface

uses
  TypInfo,
  SysUtils,
  Classes,
  IB_InstallHeader,
  IB_Intf,
  IB_Install,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatIB_InstallLibrary = class(TatScripterLibrary)
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  EIBInstallClass = class of EIBInstall;
  EIBInstallErrorClass = class of EIBInstallError;
  EIBInstallerErrorClass = class of EIBInstallerError;
  TInstallOptionsClass = class of TInstallOptions;
  TpFIBSetupClass = class of TpFIBSetup;
  TpFIBInstallClass = class of TpFIBInstall;
  TpFIBUnInstallClass = class of TpFIBUnInstall;

  TatIB_InstallDispatcher = class(TatEventDispatcher)
  private
    function __TpFIBSetupOnStatus( Sender: TObject;  StatusComment: string): TStatusResult;
    function __TpFIBSetupOnWarning( Sender: TObject;  WarningCode: TIscError;  WarningMessage: string): TWarningResult;
    function __TpFIBSetupOnError( Sender: TObject;  IscCode: TIscError;  ErrorMessage: string;  ErrorComment: string): TErrorResult;
  end;


implementation



function TatIB_InstallDispatcher.__TpFIBSetupOnStatus( Sender: TObject;  StatusComment: string): TStatusResult;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TpFIBSetupOnStatus(BeforeCall)(Sender,StatusComment);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [Sender,StatusComment]);
    if AssignedMethod(AfterCall) then
      TpFIBSetupOnStatus(AfterCall)(Sender,StatusComment);
  end;
end;

function TatIB_InstallDispatcher.__TpFIBSetupOnWarning( Sender: TObject;  WarningCode: TIscError;  WarningMessage: string): TWarningResult;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TpFIBSetupOnWarning(BeforeCall)(Sender,WarningCode,WarningMessage);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [Sender,WarningCode,WarningMessage]);
    if AssignedMethod(AfterCall) then
      TpFIBSetupOnWarning(AfterCall)(Sender,WarningCode,WarningMessage);
  end;
end;

function TatIB_InstallDispatcher.__TpFIBSetupOnError( Sender: TObject;  IscCode: TIscError;  ErrorMessage: string;  ErrorComment: string): TErrorResult;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TpFIBSetupOnError(BeforeCall)(Sender,IscCode,ErrorMessage,ErrorComment);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [Sender,IscCode,ErrorMessage,ErrorComment]);
    if AssignedMethod(AfterCall) then
      TpFIBSetupOnError(AfterCall)(Sender,IscCode,ErrorMessage,ErrorComment);
  end;
end;

procedure TatIB_InstallLibrary.Init;
begin
  Scripter.DefineClassByRTTI(EIBInstall);
  Scripter.DefineClassByRTTI(EIBInstallError);
  Scripter.DefineClassByRTTI(EIBInstallerError);
  Scripter.DefineClassByRTTI(TInstallOptions);
  Scripter.DefineClassByRTTI(TpFIBSetup);
  Scripter.DefineClassByRTTI(TpFIBInstall);
  Scripter.DefineClassByRTTI(TpFIBUnInstall);
  DefineEventAdapter(TypeInfo(TpFIBSetupOnStatus), TatIB_InstallDispatcher, @TatIB_InstallDispatcher.__TpFIBSetupOnStatus);
  DefineEventAdapter(TypeInfo(TpFIBSetupOnWarning), TatIB_InstallDispatcher, @TatIB_InstallDispatcher.__TpFIBSetupOnWarning);
  DefineEventAdapter(TypeInfo(TpFIBSetupOnError), TatIB_InstallDispatcher, @TatIB_InstallDispatcher.__TpFIBSetupOnError);
  With Scripter.DefineClass(ClassType) do
  begin
    AddConstant('ieSuccess',ieSuccess);
    AddConstant('ieDelphiException',ieDelphiException);
    AddConstant('ieNoOptionsSet',ieNoOptionsSet);
    AddConstant('ieNoDestinationDirectory',ieNoDestinationDirectory);
    AddConstant('ieNosourceDirectory',ieNosourceDirectory);
    AddConstant('ieNoUninstallFile',ieNoUninstallFile);
    AddConstant('ieOptionNeedsClient',ieOptionNeedsClient);
    AddConstant('ieOptionNeedsServer',ieOptionNeedsServer);
    AddConstant('ieInvalidOption',ieInvalidOption);
    AddConstant('ieInvalidOnErrorResult',ieInvalidOnErrorResult);
    AddConstant('ieInvalidOnStatusResult',ieInvalidOnStatusResult);
    AddConstant('moServer',moServer);
    AddConstant('moClient',moClient);
    AddConstant('moConServer',moConServer);
    AddConstant('moGuiTools',moGuiTools);
    AddConstant('moDocumentation',moDocumentation);
    AddConstant('moDevelopment',moDevelopment);
    AddConstant('exDB',exDB);
    AddConstant('exAPI',exAPI);
    AddConstant('cmDBMgmt',cmDBMgmt);
    AddConstant('cmDBQuery',cmDBQuery);
    AddConstant('cmUsrMgmt',cmUsrMgmt);
    AddConstant('cnODBC',cnODBC);
    AddConstant('cnOLEDB',cnOLEDB);
    AddConstant('cnJDBC',cnJDBC);
    AddConstant('erAbort',erAbort);
    AddConstant('erContinue',erContinue);
    AddConstant('erRetry',erRetry);
    AddConstant('srAbort',srAbort);
    AddConstant('srContinue',srContinue);
    AddConstant('wrAbort',wrAbort);
    AddConstant('wrContinue',wrContinue);
  end;
end;

class function TatIB_InstallLibrary.LibraryName: string;
begin
  result := 'IB_Install';
end;

initialization
  RegisterScripterLibrary(TatIB_InstallLibrary, True);

{$WARNINGS ON}

end.

