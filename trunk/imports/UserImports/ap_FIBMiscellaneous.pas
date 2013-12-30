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
unit ap_FIBMiscellaneous;

interface

uses
  SysUtils,
  SyncObjs,
  Classes,
  ibase,
  IB_Intf,
  IB_Externals,
  DB,
  fib,
  FIBDatabase,
  FIBQuery,
  StdFuncs,
  IB_ErrorCodes,
  FIBPlatforms,
  FIBMiscellaneous,
  System.Variants,
  ap_ibase,
  atScript;

{$WARNINGS OFF}

type
  TatFIBMiscellaneousLibrary = class(TatScripterLibrary)
    procedure __GetBlobInfoRec(AMachine: TatVirtualMachine);
    procedure __EquelQUADs(AMachine: TatVirtualMachine);
    procedure __ValidateBlobCacheDirectory(AMachine: TatVirtualMachine);
    procedure __GetNullQUID(AMachine: TatVirtualMachine);
    procedure __SetNullQUID(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TFIBBlobStreamClass = class of TFIBBlobStream;
  TFIBOutputDelimitedFileClass = class of TFIBOutputDelimitedFile;
  TFIBInputDelimitedFileClass = class of TFIBInputDelimitedFile;
  TFIBOutputRawFileClass = class of TFIBOutputRawFile;
  TFIBInputRawFileClass = class of TFIBInputRawFile;


  TBlobInfoWrapper = class(TatRecordWrapper)
  private
    FNumSegments: Long;
    FMaxSegmentSize: Long;
    FTotalSize: Long;
    FBlobType: Short;
  public
    constructor Create(ARecord: TBlobInfo);
    function ObjToRec: TBlobInfo;
  published
    property NumSegments: Long read FNumSegments write FNumSegments;
    property MaxSegmentSize: Long read FMaxSegmentSize write FMaxSegmentSize;
    property TotalSize: Long read FTotalSize write FTotalSize;
    property BlobType: Short read FBlobType write FBlobType;
  end;
  

implementation

constructor TBlobInfoWrapper.Create(ARecord: TBlobInfo);
begin
  inherited Create;
  FNumSegments := ARecord.NumSegments;
  FMaxSegmentSize := ARecord.MaxSegmentSize;
  FTotalSize := ARecord.TotalSize;
  FBlobType := ARecord.BlobType;
end;

function TBlobInfoWrapper.ObjToRec: TBlobInfo;
begin
  result.NumSegments := FNumSegments;
  result.MaxSegmentSize := FMaxSegmentSize;
  result.TotalSize := FTotalSize;
  result.BlobType := FBlobType;
end;



procedure TatFIBMiscellaneousLibrary.__GetBlobInfoRec(AMachine: TatVirtualMachine);
  var
  Param3: boolean;
  AResult: variant;
begin
  with AMachine do
  begin
Param3 := GetInputArg(3);
AResult := integer(TBlobInfoWrapper.Create(FIBMiscellaneous.GetBlobInfoRec(TFIBDatabase(VarToObject(GetInputArg(0))),TFIBTransaction(VarToObject(GetInputArg(1))),TGDS_QUADWrapper(integer(GetInputArg(2))).ObjToRec,Param3)));
    ReturnOutputArg(AResult);
    SetInputArg(3,Param3);
  end;
end;

procedure TatFIBMiscellaneousLibrary.__EquelQUADs(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := FIBMiscellaneous.EquelQUADs(TGDS_QUADWrapper(integer(GetInputArg(0))).ObjToRec,TGDS_QUADWrapper(integer(GetInputArg(1))).ObjToRec);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatFIBMiscellaneousLibrary.__ValidateBlobCacheDirectory(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    FIBMiscellaneous.ValidateBlobCacheDirectory(TFIBDatabase(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatFIBMiscellaneousLibrary.__GetNullQUID(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGDS_QUADWrapper.Create(FIBMiscellaneous.NullQUID)));
  end;
end;

procedure TatFIBMiscellaneousLibrary.__SetNullQUID(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    FIBMiscellaneous.NullQUID:=TGDS_QUADWrapper(integer(GetInputArg(0))).ObjToRec;
  end;
end;

procedure TatFIBMiscellaneousLibrary.Init;
begin
  Scripter.DefineClassByRTTI(TFIBBlobStream);
  Scripter.DefineRecordByRTTI(TypeInfo(TBlobInfo));
  Scripter.DefineClassByRTTI(TFIBOutputDelimitedFile);
  Scripter.DefineClassByRTTI(TFIBInputDelimitedFile);
  Scripter.DefineClassByRTTI(TFIBOutputRawFile);
  Scripter.DefineClassByRTTI(TFIBInputRawFile);
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('GetBlobInfoRec',4,tkVariant,nil,__GetBlobInfoRec,false,0,'DB: TFIBDatabase; TR: TFIBTransaction; blob_id: TISC_QUAD; Success: boolean').SetVarArgs([3]);
    DefineMethod('EquelQUADs',2,tkVariant,nil,__EquelQUADs,false,0,'Value1: TISC_QUAD; Value2: TISC_QUAD');
    DefineMethod('ValidateBlobCacheDirectory',1,tkNone,nil,__ValidateBlobCacheDirectory,false,0,'Database: TFIBDataBase');
    DefineProp('NullQUID',tkVariant,__GetNullQUID,__SetNullQUID,nil,false,0);
    AddConstant('DefaultBlobSegmentSize',DefaultBlobSegmentSize);
  end;
end;

class function TatFIBMiscellaneousLibrary.LibraryName: string;
begin
  result := 'FIBMiscellaneous';
end;

initialization
  RegisterScripterLibrary(TatFIBMiscellaneousLibrary, True);

{$WARNINGS ON}

end.

