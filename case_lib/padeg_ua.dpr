library padeg_ua;

{$DEFINE COMSERV}

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

{%TogetherDiagram 'ModelSupport_padeg_ua\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_padeg_ua\padeg_ua\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_padeg_ua\padeg_ua\default.txvpck'}
{%TogetherDiagram 'ModelSupport_padeg_ua\default.txvpck'}
{%TogetherDiagram 'ModelSupport_padeg_ua\Export_functions\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_padeg_ua\Core\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_padeg_ua\Core\default.txvpck'}
{%TogetherDiagram 'ModelSupport_padeg_ua\Export_functions\default.txvpck'}
{%TogetherDiagram 'ModelSupport_padeg_ua\padeg_ua_TLB\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_padeg_ua\Ole_object\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_padeg_ua\padeg_ua_TLB\default.txvpck'}

uses
  EMemLeaks,
  EResLeaks,
  EDialogWinAPIMSClassic,
  EDialogWinAPIEurekaLogDetailed,
  EDialogWinAPIStepsToReproduce,
  EDebugExports,
  EDebugJCL,
  EMapWin32,
  EAppVCL,
  ExceptionLog7,
  ComServ,
  padeg_ua_TLB in 'padeg_ua_TLB.pas',
  uOle_object in 'uOle_object.pas' {Declension: CoClass},
  uCore in 'uCore.pas',
  uExport_functions in 'uExport_functions.pas',
  uDic in 'uDic.pas';

{$IFDEF COMSERV}
exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer;
{$R *.TLB}
{$ENDIF}

{$R *.res}

//-----------------------------------------------------
exports
  // функции склонения ФИО, заданного в формате "фамилия имя отчество"
  GetFIOPadeg               Name 'GetFIOPadeg',
  GetFIOPadegAutoSex        Name 'GetFIOPadegAS',
  GetFIOPadegFromStr        Name 'GetFIOPadegFS',
  GetFIOPadegFromStrAutoSex Name 'GetFIOPadegFSAS',

  // функции склонения ФИО, заданного в формате "имя фамилия"
  GetIFPadeg                Name 'GetIFPadeg',
  GetIFPadegFromStr         Name 'GetIFPadegFS',

//  // функция восстановления именительного падежа
//  GetNominativePadeg        Name 'GetNominativePadeg',

  // функции склонения наименований должностей и подразделений
  GetAppointmentPadeg       Name 'GetAppointmentPadeg',
  GetOfficePadeg            Name 'GetOfficePadeg',
  GetFullAppointmentPadeg   Name 'GetFullAppointmentPadeg',

  // сервисные функции
  Get_Sex                   Name 'GetSex',
//  GetPadegID                Name 'GetPadegID',
  GetFIOParts               Name 'GetFIOParts',
  SetStatusProc             Name 'SetStatusProc',
  SetMessageProc            Name 'SetMessageProc',

  // функции работы со словарем исключений
  Update_Exceptions         Name 'UpdateExceptions',
  GetExceptionsFileName     Name 'GetExceptionsFileName',
  SetDictionary             Name 'SetDictionary';

//-----------------------------------------------------
begin
	uCore.Init;
end.
