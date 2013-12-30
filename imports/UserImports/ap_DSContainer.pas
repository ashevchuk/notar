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
unit ap_DSContainer;

interface

uses
  SysUtils,
  Classes,
  DB,
  pFIBDataInfo,
  FIBDataSet,
  DSContainer,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatDSContainerLibrary = class(TatScripterLibrary)
    procedure __GlobalContainer(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TDataSetsContainerClass = class of TDataSetsContainer;

  TatDSContainerDispatcher = class(TatEventDispatcher)
  private
    procedure __TOnApplyFieldRepository( DataSet: TDataSet;  Field: TField;  FieldInfo: TpFIBFieldInfo);
    procedure __TOnDataSetEvent( DataSet: TDataSet;  Event: TKindDataSetEvent);
    procedure __TOnDataSetError( DataSet: TDataSet;  Event: TKindDataSetError;  E: EDatabaseError; var Action: TDataAction);
    function __TOnCompareFieldValues( Field: TField; const S1: variant; const S2: variant; var Compared: boolean): integer;
  end;


implementation



procedure TatDSContainerDispatcher.__TOnApplyFieldRepository( DataSet: TDataSet;  Field: TField;  FieldInfo: TpFIBFieldInfo);
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TOnApplyFieldRepository(BeforeCall)(DataSet,Field,FieldInfo);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [DataSet,Field,FieldInfo]);
    if AssignedMethod(AfterCall) then
      TOnApplyFieldRepository(AfterCall)(DataSet,Field,FieldInfo);
  end;
end;

procedure TatDSContainerDispatcher.__TOnDataSetEvent( DataSet: TDataSet;  Event: TKindDataSetEvent);
var
  EventTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TOnDataSetEvent(BeforeCall)(DataSet,Event);
    EventTemp := Integer(Event);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [DataSet,EventTemp]);
    if AssignedMethod(AfterCall) then
      TOnDataSetEvent(AfterCall)(DataSet,Event);
  end;
end;

procedure TatDSContainerDispatcher.__TOnDataSetError( DataSet: TDataSet;  Event: TKindDataSetError;  E: EDatabaseError; var Action: TDataAction);
var
  EventTemp: variant;
  ActionTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TOnDataSetError(BeforeCall)(DataSet,Event,E,Action);
    EventTemp := Integer(Event);
    ActionTemp := Action;
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [DataSet,EventTemp,E,ActionTemp]);
    Action := ActionTemp;
    if AssignedMethod(AfterCall) then
      TOnDataSetError(AfterCall)(DataSet,Event,E,Action);
  end;
end;

function TatDSContainerDispatcher.__TOnCompareFieldValues( Field: TField; const S1: variant; const S2: variant; var Compared: boolean): integer;
var
  ComparedTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TOnCompareFieldValues(BeforeCall)(Field,S1,S2,Compared);
    ComparedTemp := Compared;
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [Field,S1,S2,ComparedTemp]);
    Compared := ComparedTemp;
    if AssignedMethod(AfterCall) then
      TOnCompareFieldValues(AfterCall)(Field,S1,S2,Compared);
  end;
end;

procedure TatDSContainerLibrary.__GlobalContainer(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(DSContainer.GlobalContainer);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatDSContainerLibrary.Init;
begin
  Scripter.DefineClassByRTTI(TDataSetsContainer);
  DefineEventAdapter(TypeInfo(TOnApplyFieldRepository), TatDSContainerDispatcher, @TatDSContainerDispatcher.__TOnApplyFieldRepository);
  DefineEventAdapter(TypeInfo(TOnDataSetEvent), TatDSContainerDispatcher, @TatDSContainerDispatcher.__TOnDataSetEvent);
  DefineEventAdapter(TypeInfo(TOnDataSetError), TatDSContainerDispatcher, @TatDSContainerDispatcher.__TOnDataSetError);
  DefineEventAdapter(TypeInfo(TOnCompareFieldValues), TatDSContainerDispatcher, @TatDSContainerDispatcher.__TOnCompareFieldValues);
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('GlobalContainer',0,tkClass,TDataSetsContainer,__GlobalContainer,false,0,'');
    AddConstant('deBeforeOpen',deBeforeOpen);
    AddConstant('deAfterOpen',deAfterOpen);
    AddConstant('deBeforeClose',deBeforeClose);
    AddConstant('deAfterClose',deAfterClose);
    AddConstant('deBeforeInsert',deBeforeInsert);
    AddConstant('deAfterInsert',deAfterInsert);
    AddConstant('deBeforeEdit',deBeforeEdit);
    AddConstant('deAfterEdit',deAfterEdit);
    AddConstant('deBeforePost',deBeforePost);
    AddConstant('deAfterPost',deAfterPost);
    AddConstant('deBeforeCancel',deBeforeCancel);
    AddConstant('deAfterCancel',deAfterCancel);
    AddConstant('deBeforeDelete',deBeforeDelete);
    AddConstant('deAfterDelete',deAfterDelete);
    AddConstant('deBeforeScroll',deBeforeScroll);
    AddConstant('deAfterScroll',deAfterScroll);
    AddConstant('deOnNewRecord',deOnNewRecord);
    AddConstant('deOnCalcFields',deOnCalcFields);
    AddConstant('deBeforeRefresh',deBeforeRefresh);
    AddConstant('deAfterRefresh',deAfterRefresh);
    AddConstant('deOnEditError',deOnEditError);
    AddConstant('deOnPostError',deOnPostError);
    AddConstant('deOnDeleteError',deOnDeleteError);
  end;
end;

class function TatDSContainerLibrary.LibraryName: string;
begin
  result := 'DSContainer';
end;

initialization
  RegisterScripterLibrary(TatDSContainerLibrary, True);

{$WARNINGS ON}

end.

