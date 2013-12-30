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
unit ap_pFIBMetaData;

interface

uses
  Classes,
  SysUtils,
  ibase,
  DB,
  FIBPlatforms,
  FIBDatabase,
  FIBQuery,
  FIBDataSet,
  pFIBProps,
  StrUtil,
  pFIBInterfaces,
  fib,
  pFIBMetaData,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatpFIBMetaDataLibrary = class(TatScripterLibrary)
    procedure __FullExtractDDL(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TCustomMetaObjectClass = class of TCustomMetaObject;
  TCustomMetaGrantClass = class of TCustomMetaGrant;
  TMetaViewGrantClass = class of TMetaViewGrant;
  TMetaTableGrantClass = class of TMetaTableGrant;
  TMetaProcGrantClass = class of TMetaProcGrant;
  TMetaRoleGrantClass = class of TMetaRoleGrant;
  TMetaGeneratorClass = class of TMetaGenerator;
  TCustomMetaFieldClass = class of TCustomMetaField;
  TMetaFieldClass = class of TMetaField;
  TMetaProcFieldClass = class of TMetaProcField;
  TMetaProcInFieldClass = class of TMetaProcInField;
  TMetaProcOutFieldClass = class of TMetaProcOutField;
  TMetaTableFieldClass = class of TMetaTableField;
  TMetaDomainClass = class of TMetaDomain;
  TMetaConstraintClass = class of TMetaConstraint;
  TMetaPrimaryKeyClass = class of TMetaPrimaryKey;
  TMetaUniqueConstraintClass = class of TMetaUniqueConstraint;
  TMetaForeignKeyClass = class of TMetaForeignKey;
  TMetaCheckConstraintClass = class of TMetaCheckConstraint;
  TMetaIndexClass = class of TMetaIndex;
  TCustomMetaTriggerClass = class of TCustomMetaTrigger;
  TMetaTableTriggerClass = class of TMetaTableTrigger;
  TMetaViewTriggerClass = class of TMetaViewTrigger;
  TMetaDBTriggerClass = class of TMetaDBTrigger;
  TMetaTableClass = class of TMetaTable;
  TMetaViewClass = class of TMetaView;
  TMetaProcedureClass = class of TMetaProcedure;
  TMetaExceptionClass = class of TMetaException;
  TMetaUDFFieldClass = class of TMetaUDFField;
  TMetaUDFClass = class of TMetaUDF;
  TMetaRoleClass = class of TMetaRole;
  TMetaDataBaseClass = class of TMetaDataBase;
  TLoadOptionsClass = class of TLoadOptions;
  TpFIBDBSchemaExtractClass = class of TpFIBDBSchemaExtract;

  TatpFIBMetaDataDispatcher = class(TatEventDispatcher)
  private
    procedure __TNotifyLoadMetaData( Sender: TObject; const Message: string; var Stop: boolean);
  end;

  TMetaDataItemWrapper = class(TatRecordWrapper)
  private
    FChilds: TList;
  public
    constructor Create(ARecord: TMetaDataItem);
    function ObjToRec: TMetaDataItem;
  published
    property Childs: TList read FChilds write FChilds;
  end;
  
  TArrBoundsWrapper = class(TatRecordWrapper)
  private
    FLOWER_BOUND: INTEGER;
    FUPPER_BOUND: INTEGER;
  public
    constructor Create(ARecord: TArrBounds);
    function ObjToRec: TArrBounds;
  published
    property LOWER_BOUND: INTEGER read FLOWER_BOUND write FLOWER_BOUND;
    property UPPER_BOUND: INTEGER read FUPPER_BOUND write FUPPER_BOUND;
  end;
  

implementation

constructor TMetaDataItemWrapper.Create(ARecord: TMetaDataItem);
begin
  inherited Create;
  FChilds := ARecord.Childs;
end;

function TMetaDataItemWrapper.ObjToRec: TMetaDataItem;
begin
  result.Childs := FChilds;
end;

constructor TArrBoundsWrapper.Create(ARecord: TArrBounds);
begin
  inherited Create;
  FLOWER_BOUND := ARecord.LOWER_BOUND;
  FUPPER_BOUND := ARecord.UPPER_BOUND;
end;

function TArrBoundsWrapper.ObjToRec: TArrBounds;
begin
  result.LOWER_BOUND := FLOWER_BOUND;
  result.UPPER_BOUND := FUPPER_BOUND;
end;



procedure TatpFIBMetaDataDispatcher.__TNotifyLoadMetaData( Sender: TObject; const Message: string; var Stop: boolean);
var
  StopTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TNotifyLoadMetaData(BeforeCall)(Sender,Message,Stop);
    StopTemp := Stop;
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [Sender,Message,StopTemp]);
    Stop := StopTemp;
    if AssignedMethod(AfterCall) then
      TNotifyLoadMetaData(AfterCall)(Sender,Message,Stop);
  end;
end;

procedure TatpFIBMetaDataLibrary.__FullExtractDDL(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    pFIBMetaData.FullExtractDDL(TFIBDatabase(VarToObject(GetInputArg(0))),GetInputArg(1));
  end;
end;

procedure TatpFIBMetaDataLibrary.Init;
begin
  Scripter.DefineRecordByRTTI(TypeInfo(TMetaDataItem));
  Scripter.DefineClassByRTTI(TCustomMetaObject);
  Scripter.DefineClassByRTTI(TCustomMetaGrant);
  Scripter.DefineClassByRTTI(TMetaViewGrant);
  Scripter.DefineClassByRTTI(TMetaTableGrant);
  Scripter.DefineClassByRTTI(TMetaProcGrant);
  Scripter.DefineClassByRTTI(TMetaRoleGrant);
  Scripter.DefineClassByRTTI(TMetaGenerator);
  Scripter.DefineRecordByRTTI(TypeInfo(TArrBounds));
  Scripter.DefineClassByRTTI(TCustomMetaField);
  Scripter.DefineClassByRTTI(TMetaField);
  Scripter.DefineClassByRTTI(TMetaProcField);
  Scripter.DefineClassByRTTI(TMetaProcInField);
  Scripter.DefineClassByRTTI(TMetaProcOutField);
  Scripter.DefineClassByRTTI(TMetaTableField);
  Scripter.DefineClassByRTTI(TMetaDomain);
  Scripter.DefineClassByRTTI(TMetaConstraint);
  Scripter.DefineClassByRTTI(TMetaPrimaryKey);
  Scripter.DefineClassByRTTI(TMetaUniqueConstraint);
  Scripter.DefineClassByRTTI(TMetaForeignKey);
  Scripter.DefineClassByRTTI(TMetaCheckConstraint);
  Scripter.DefineClassByRTTI(TMetaIndex);
  Scripter.DefineClassByRTTI(TCustomMetaTrigger);
  Scripter.DefineClassByRTTI(TMetaTableTrigger);
  Scripter.DefineClassByRTTI(TMetaViewTrigger);
  Scripter.DefineClassByRTTI(TMetaDBTrigger);
  Scripter.DefineClassByRTTI(TMetaTable);
  Scripter.DefineClassByRTTI(TMetaView);
  Scripter.DefineClassByRTTI(TMetaProcedure);
  Scripter.DefineClassByRTTI(TMetaException);
  Scripter.DefineClassByRTTI(TMetaUDFField);
  Scripter.DefineClassByRTTI(TMetaUDF);
  Scripter.DefineClassByRTTI(TMetaRole);
  Scripter.DefineClassByRTTI(TMetaDataBase);
  Scripter.DefineClassByRTTI(TLoadOptions);
  Scripter.DefineClassByRTTI(TpFIBDBSchemaExtract);
  DefineEventAdapter(TypeInfo(TNotifyLoadMetaData), TatpFIBMetaDataDispatcher, @TatpFIBMetaDataDispatcher.__TNotifyLoadMetaData);
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('FullExtractDDL',2,tkNone,nil,__FullExtractDDL,false,0,'DB: TFIBDatabase; Dest: TStrings');
    AddConstant('otDomain',otDomain);
    AddConstant('otTable',otTable);
    AddConstant('otView',otView);
    AddConstant('otProcedure',otProcedure);
    AddConstant('otGenerator',otGenerator);
    AddConstant('otException',otException);
    AddConstant('otUDF',otUDF);
    AddConstant('otRole',otRole);
    AddConstant('otDBTrigger',otDBTrigger);
    AddConstant('soTableFields',soTableFields);
    AddConstant('soPrimaryKey',soPrimaryKey);
    AddConstant('soForeignKey',soForeignKey);
    AddConstant('soTableTriggers',soTableTriggers);
    AddConstant('soUniqueConstr',soUniqueConstr);
    AddConstant('soIndex',soIndex);
    AddConstant('soCheckConstr',soCheckConstr);
    AddConstant('soTableGrants',soTableGrants);
    AddConstant('soViewFields',soViewFields);
    AddConstant('soViewTriggers',soViewTriggers);
    AddConstant('soViewGrants',soViewGrants);
    AddConstant('soProcFieldIn',soProcFieldIn);
    AddConstant('soProcFieldOut',soProcFieldOut);
    AddConstant('soProcGrants',soProcGrants);
    AddConstant('soUDFField',soUDFField);
    AddConstant('soRoleGrants',soRoleGrants);
    AddConstant('ttBefore',ttBefore);
    AddConstant('ttAfter',ttAfter);
    AddConstant('ttON',ttON);
    AddConstant('taInsert',taInsert);
    AddConstant('taUpdate',taUpdate);
    AddConstant('taDelete',taDelete);
    AddConstant('taConnect',taConnect);
    AddConstant('taDisconnect',taDisconnect);
    AddConstant('taTransactionStart',taTransactionStart);
    AddConstant('taTransactionCommit',taTransactionCommit);
    AddConstant('taTransactionRollback',taTransactionRollback);
    AddConstant('IoDescending',IoDescending);
    AddConstant('IoAscending',IoAscending);
    AddConstant('fkrRestrict',fkrRestrict);
    AddConstant('fkrCascade',fkrCascade);
    AddConstant('fkrSetNull',fkrSetNull);
    AddConstant('fkrSetDefault',fkrSetDefault);
    AddConstant('fftUnKnown',fftUnKnown);
    AddConstant('fftNumeric',fftNumeric);
    AddConstant('fftChar',fftChar);
    AddConstant('fftVarchar',fftVarchar);
    AddConstant('fftCstring',fftCstring);
    AddConstant('fftSmallint',fftSmallint);
    AddConstant('fftInteger',fftInteger);
    AddConstant('fftQuad',fftQuad);
    AddConstant('fftFloat',fftFloat);
    AddConstant('fftDoublePrecision',fftDoublePrecision);
    AddConstant('fftTimestamp',fftTimestamp);
    AddConstant('fftBlob',fftBlob);
    AddConstant('fftBlobId',fftBlobId);
    AddConstant('fftDate',fftDate);
    AddConstant('fftTime',fftTime);
    AddConstant('fftInt64',fftInt64);
    AddConstant('fftBoolean',fftBoolean);
    AddConstant('goSelect',goSelect);
    AddConstant('goInsert',goInsert);
    AddConstant('goUpdate',goUpdate);
    AddConstant('goDelete',goDelete);
    AddConstant('goReferences',goReferences);
    AddConstant('goExecuteProc',goExecuteProc);
    AddConstant('goRole',goRole);
    AddConstant('dtoUseCreateDB',dtoUseCreateDB);
    AddConstant('dtoUseSetClientLib',dtoUseSetClientLib);
    AddConstant('dtoUseSetTerm',dtoUseSetTerm);
    AddConstant('dtoDecodeDomains',dtoDecodeDomains);
    AddConstant('dtoIncludeGrants',dtoIncludeGrants);
    AddConstant('DefTerminator',DefTerminator);
    AddConstant('ProcTerminator',ProcTerminator);
    AddConstant('DefObjects',IntFromConstSet(DefObjects));
    AddConstant('DefTableChilds',IntFromConstSet(DefTableChilds));
    AddConstant('DefViewChilds',IntFromConstSet(DefViewChilds));
  end;
end;

class function TatpFIBMetaDataLibrary.LibraryName: string;
begin
  result := 'pFIBMetaData';
end;

initialization
  RegisterScripterLibrary(TatpFIBMetaDataLibrary, True);

{$WARNINGS ON}

end.

