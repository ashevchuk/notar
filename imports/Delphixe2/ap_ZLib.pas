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
unit ap_ZLib;

interface

uses
  Sysutils,
  Classes,
  ZLib,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatZLibLibrary = class(TatScripterLibrary)
    procedure __TZCompressionStreamCreate(AMachine: TatVirtualMachine);
    procedure __TZCompressionStreamDestroy(AMachine: TatVirtualMachine);
    procedure __TZCompressionStreamRead(AMachine: TatVirtualMachine);
    procedure __TZCompressionStreamWrite(AMachine: TatVirtualMachine);
    procedure __TZCompressionStreamSeek(AMachine: TatVirtualMachine);
    procedure __GetTZCompressionStreamCompressionRate(AMachine: TatVirtualMachine);
    procedure __TZDecompressionStreamCreate(AMachine: TatVirtualMachine);
    procedure __TZDecompressionStreamDestroy(AMachine: TatVirtualMachine);
    procedure __TZDecompressionStreamRead(AMachine: TatVirtualMachine);
    procedure __TZDecompressionStreamWrite(AMachine: TatVirtualMachine);
    procedure __TZDecompressionStreamSeek(AMachine: TatVirtualMachine);
    procedure __ZDecompressStream(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TCustomZStreamClass = class of TCustomZStream;
  TCustomZLibStreamClass = class of TCustomZLibStream;
  TZCompressionStreamClass = class of TZCompressionStream;
  TCompressionStreamClass = class of TCompressionStream;
  TZDecompressionStreamClass = class of TZDecompressionStream;
  TDecompressionStreamClass = class of TDecompressionStream;
  EZLibErrorClass = class of EZLibError;
  EZCompressionErrorClass = class of EZCompressionError;
  EZDecompressionErrorClass = class of EZDecompressionError;


  TZStreamRecWrapper = class(TatRecordWrapper)
  private
    Favail_in: Longint;
    Ftotal_in: Longint;
    Favail_out: Longint;
    Ftotal_out: Longint;
    Fdata_type: Integer;
    Fadler: Longint;
    Freserved: Longint;
  public
    constructor Create(ARecord: TZStreamRec);
    function ObjToRec: TZStreamRec;
  published
    property avail_in: Longint read Favail_in write Favail_in;
    property total_in: Longint read Ftotal_in write Ftotal_in;
    property avail_out: Longint read Favail_out write Favail_out;
    property total_out: Longint read Ftotal_out write Ftotal_out;
    property data_type: Integer read Fdata_type write Fdata_type;
    property adler: Longint read Fadler write Fadler;
    property reserved: Longint read Freserved write Freserved;
  end;
  

implementation

constructor TZStreamRecWrapper.Create(ARecord: TZStreamRec);
begin
  inherited Create;
  Favail_in := ARecord.avail_in;
  Ftotal_in := ARecord.total_in;
  Favail_out := ARecord.avail_out;
  Ftotal_out := ARecord.total_out;
  Fdata_type := ARecord.data_type;
  Fadler := ARecord.adler;
  Freserved := ARecord.reserved;
end;

function TZStreamRecWrapper.ObjToRec: TZStreamRec;
begin
  result.avail_in := Favail_in;
  result.total_in := Ftotal_in;
  result.avail_out := Favail_out;
  result.total_out := Ftotal_out;
  result.data_type := Fdata_type;
  result.adler := Fadler;
  result.reserved := Freserved;
end;



procedure TatZLibLibrary.__TZCompressionStreamCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TZCompressionStreamClass(CurrentClass.ClassRef).Create(TStream(Integer(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatZLibLibrary.__TZCompressionStreamDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TZCompressionStream(CurrentObject).Destroy;
  end;
end;

procedure TatZLibLibrary.__TZCompressionStreamRead(AMachine: TatVirtualMachine);
  var
  Param0: Variant;
  AResult: variant;
begin
  with AMachine do
  begin
Param0 := GetInputArg(0);
AResult := Integer(TZCompressionStream(CurrentObject).Read(Param0,VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
    SetInputArg(0,Param0);
  end;
end;

procedure TatZLibLibrary.__TZCompressionStreamWrite(AMachine: TatVirtualMachine);
  var
  Param0: Variant;
  AResult: variant;
begin
  with AMachine do
  begin
Param0 := GetInputArg(0);
AResult := Integer(TZCompressionStream(CurrentObject).Write(Param0,VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatZLibLibrary.__TZCompressionStreamSeek(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TZCompressionStream(CurrentObject).Seek(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatZLibLibrary.__GetTZCompressionStreamCompressionRate(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TZCompressionStream(CurrentObject).CompressionRate);
  end;
end;

procedure TatZLibLibrary.__TZDecompressionStreamCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TZDecompressionStreamClass(CurrentClass.ClassRef).Create(TStream(Integer(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatZLibLibrary.__TZDecompressionStreamDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TZDecompressionStream(CurrentObject).Destroy;
  end;
end;

procedure TatZLibLibrary.__TZDecompressionStreamRead(AMachine: TatVirtualMachine);
  var
  Param0: Variant;
  AResult: variant;
begin
  with AMachine do
  begin
Param0 := GetInputArg(0);
AResult := Integer(TZDecompressionStream(CurrentObject).Read(Param0,VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
    SetInputArg(0,Param0);
  end;
end;

procedure TatZLibLibrary.__TZDecompressionStreamWrite(AMachine: TatVirtualMachine);
  var
  Param0: Variant;
  AResult: variant;
begin
  with AMachine do
  begin
Param0 := GetInputArg(0);
AResult := Integer(TZDecompressionStream(CurrentObject).Write(Param0,VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatZLibLibrary.__TZDecompressionStreamSeek(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TZDecompressionStream(CurrentObject).Seek(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatZLibLibrary.__ZDecompressStream(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ZLib.ZDecompressStream(TStream(Integer(GetInputArg(0))),TStream(Integer(GetInputArg(1))));
  end;
end;

procedure TatZLibLibrary.Init;
begin
  With Scripter.DefineClass(TCustomZStream) do
  begin
  end;
  With Scripter.DefineClass(TCustomZLibStream) do
  begin
  end;
  With Scripter.DefineClass(TZCompressionStream) do
  begin
    DefineMethod('Create',1,tkClass,TZCompressionStream,__TZCompressionStreamCreate,true,0,'dest: TStream');
    DefineMethod('Destroy',0,tkNone,nil,__TZCompressionStreamDestroy,false,0,'');
    DefineMethod('Read',2,tkInteger,nil,__TZCompressionStreamRead,false,0,'buffer; count: Longint').SetVarArgs([0]);
    DefineMethod('Write',2,tkInteger,nil,__TZCompressionStreamWrite,false,0,'buffer; count: Longint');
    DefineMethod('Seek',2,tkInteger,nil,__TZCompressionStreamSeek,false,0,'offset: Longint; origin: Word');
    DefineProp('CompressionRate',tkVariant,__GetTZCompressionStreamCompressionRate,nil,nil,false,0);
    DefineProp('OnProgress',tkVariant,nil,nil,nil,false,0);
  end;
  With Scripter.DefineClass(TCompressionStream) do
  begin
  end;
  With Scripter.DefineClass(TZDecompressionStream) do
  begin
    DefineMethod('Create',1,tkClass,TZDecompressionStream,__TZDecompressionStreamCreate,true,0,'source: TStream');
    DefineMethod('Destroy',0,tkNone,nil,__TZDecompressionStreamDestroy,false,0,'');
    DefineMethod('Read',2,tkInteger,nil,__TZDecompressionStreamRead,false,0,'buffer; count: Longint').SetVarArgs([0]);
    DefineMethod('Write',2,tkInteger,nil,__TZDecompressionStreamWrite,false,0,'buffer; count: Longint');
    DefineMethod('Seek',2,tkInteger,nil,__TZDecompressionStreamSeek,false,0,'offset: Longint; origin: Word');
    DefineProp('OnProgress',tkVariant,nil,nil,nil,false,0);
  end;
  With Scripter.DefineClass(TDecompressionStream) do
  begin
  end;
  With Scripter.DefineClass(EZLibError) do
  begin
  end;
  With Scripter.DefineClass(EZCompressionError) do
  begin
  end;
  With Scripter.DefineClass(EZDecompressionError) do
  begin
  end;
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('ZDecompressStream',2,tkNone,nil,__ZDecompressStream,false,0,'inStream: TStream; outStream: TStream');
    AddConstant('zcNone',zcNone);
    AddConstant('zcFastest',zcFastest);
    AddConstant('zcDefault',zcDefault);
    AddConstant('zcMax',zcMax);
    AddConstant('clNone',clNone);
    AddConstant('clFastest',clFastest);
    AddConstant('clDefault',clDefault);
    AddConstant('clMax',clMax);
    AddConstant('Z_NO_FLUSH',Z_NO_FLUSH);
    AddConstant('Z_PARTIAL_FLUSH',Z_PARTIAL_FLUSH);
    AddConstant('Z_SYNC_FLUSH',Z_SYNC_FLUSH);
    AddConstant('Z_FULL_FLUSH',Z_FULL_FLUSH);
    AddConstant('Z_FINISH',Z_FINISH);
    AddConstant('Z_OK',Z_OK);
    AddConstant('Z_STREAM_END',Z_STREAM_END);
    AddConstant('Z_NEED_DICT',Z_NEED_DICT);
    AddConstant('Z_ERRNO',Z_ERRNO);
    AddConstant('Z_STREAM_ERROR',Z_STREAM_ERROR);
    AddConstant('Z_DATA_ERROR',Z_DATA_ERROR);
    AddConstant('Z_MEM_ERROR',Z_MEM_ERROR);
    AddConstant('Z_BUF_ERROR',Z_BUF_ERROR);
    AddConstant('Z_VERSION_ERROR',Z_VERSION_ERROR);
    AddConstant('Z_NO_COMPRESSION',Z_NO_COMPRESSION);
    AddConstant('Z_BEST_SPEED',Z_BEST_SPEED);
    AddConstant('Z_BEST_COMPRESSION',Z_BEST_COMPRESSION);
    AddConstant('Z_DEFAULT_COMPRESSION',Z_DEFAULT_COMPRESSION);
    AddConstant('Z_FILTERED',Z_FILTERED);
    AddConstant('Z_HUFFMAN_ONLY',Z_HUFFMAN_ONLY);
    AddConstant('Z_DEFAULT_STRATEGY',Z_DEFAULT_STRATEGY);
    AddConstant('Z_BINARY',Z_BINARY);
    AddConstant('Z_ASCII',Z_ASCII);
    AddConstant('Z_UNKNOWN',Z_UNKNOWN);
    AddConstant('Z_DEFLATED',Z_DEFLATED);
    AddConstant('SZInvalid',SZInvalid);
  end;
end;

class function TatZLibLibrary.LibraryName: string;
begin
  result := 'ZLib';
end;

initialization
  RegisterScripterLibrary(TatZLibLibrary, True);

{$WARNINGS ON}

end.

