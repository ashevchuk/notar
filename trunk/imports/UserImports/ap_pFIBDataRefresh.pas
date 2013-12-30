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
unit ap_pFIBDataRefresh;

interface

uses
  SysUtils,
  Classes,
  pFIBDataSet,
  FIBDataSet,
  DB,
  FIBQuery,
  FIBDatabase,
  pFIBDataRefresh,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatpFIBDataRefreshLibrary = class(TatScripterLibrary)
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TpFIBTableChangesReaderClass = class of TpFIBTableChangesReader;


  TChangesCountWrapper = class(TatRecordWrapper)
  private
    FcChangesCount: integer;
    FcDeletesCount: integer;
    FncChangesCount: integer;
    FncDeletesCount: integer;
  public
    constructor Create(ARecord: TChangesCount);
    function ObjToRec: TChangesCount;
  published
    property cChangesCount: integer read FcChangesCount write FcChangesCount;
    property cDeletesCount: integer read FcDeletesCount write FcDeletesCount;
    property ncChangesCount: integer read FncChangesCount write FncChangesCount;
    property ncDeletesCount: integer read FncDeletesCount write FncDeletesCount;
  end;
  

implementation

constructor TChangesCountWrapper.Create(ARecord: TChangesCount);
begin
  inherited Create;
  FcChangesCount := ARecord.cChangesCount;
  FcDeletesCount := ARecord.cDeletesCount;
  FncChangesCount := ARecord.ncChangesCount;
  FncDeletesCount := ARecord.ncDeletesCount;
end;

function TChangesCountWrapper.ObjToRec: TChangesCount;
begin
  result.cChangesCount := FcChangesCount;
  result.cDeletesCount := FcDeletesCount;
  result.ncChangesCount := FncChangesCount;
  result.ncDeletesCount := FncDeletesCount;
end;



procedure TatpFIBDataRefreshLibrary.Init;
begin
  Scripter.DefineRecordByRTTI(TypeInfo(TChangesCount));
  Scripter.DefineClassByRTTI(TpFIBTableChangesReader);
  With Scripter.DefineClass(ClassType) do
  begin
  end;
end;

class function TatpFIBDataRefreshLibrary.LibraryName: string;
begin
  result := 'pFIBDataRefresh';
end;

initialization
  RegisterScripterLibrary(TatpFIBDataRefreshLibrary, True);

{$WARNINGS ON}

end.

