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
unit ap_FIBCacheManage;

interface

uses
  SysUtils,
  pFIBLists,
  Classes,
  FIBPlatforms,
  FIBCacheManage,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatFIBCacheManageLibrary = class(TatScripterLibrary)
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TRecordsCacheClass = class of TRecordsCache;
  EMemManagerErrorClass = class of EMemManagerError;


  TRecordPositionWrapper = class(TatRecordWrapper)
  private
    FRecordNo: integer;
    FInternalNo: integer;
  public
    constructor Create(ARecord: TRecordPosition);
    function ObjToRec: TRecordPosition;
  published
    property RecordNo: integer read FRecordNo write FRecordNo;
    property InternalNo: integer read FInternalNo write FInternalNo;
  end;
  

implementation

constructor TRecordPositionWrapper.Create(ARecord: TRecordPosition);
begin
  inherited Create;
  FRecordNo := ARecord.RecordNo;
  FInternalNo := ARecord.InternalNo;
end;

function TRecordPositionWrapper.ObjToRec: TRecordPosition;
begin
  result.RecordNo := FRecordNo;
  result.InternalNo := FInternalNo;
end;



procedure TatFIBCacheManageLibrary.Init;
begin
  Scripter.DefineRecordByRTTI(TypeInfo(TRecordPosition));
  Scripter.DefineClassByRTTI(TRecordsCache);
  Scripter.DefineClassByRTTI(EMemManagerError);
  With Scripter.DefineClass(ClassType) do
  begin
    AddConstant('MinBlockSize',MinBlockSize);
  end;
end;

class function TatFIBCacheManageLibrary.LibraryName: string;
begin
  result := 'FIBCacheManage';
end;

initialization
  RegisterScripterLibrary(TatFIBCacheManageLibrary, True);

{$WARNINGS ON}

end.

