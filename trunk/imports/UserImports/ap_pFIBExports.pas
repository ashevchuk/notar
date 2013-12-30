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
unit ap_pFIBExports;

interface

uses
  SysUtils,
  Windows,
  Classes,
  pFIBInterfaces,
  FIBDatabase,
  FIBQuery,
  FIBDataSet,
  pFIBDataSet,
  pFIBQuery,
  StrUtil,
  pFIBDatabase,
  SqlTxtRtns,
  pFIBMetaData,
  pFIBExports,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatpFIBExportsLibrary = class(TatScripterLibrary)
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TFIBStringerClass = class of TFIBStringer;
  TMetaDataExtractorClass = class of TMetaDataExtractor;
  TiSQLParserClass = class of TiSQLParser;
  TFIBClassesExporterClass = class of TFIBClassesExporter;



implementation



procedure TatpFIBExportsLibrary.Init;
begin
  Scripter.DefineClassByRTTI(TFIBStringer);
  Scripter.DefineClassByRTTI(TMetaDataExtractor);
  Scripter.DefineClassByRTTI(TiSQLParser);
  Scripter.DefineClassByRTTI(TFIBClassesExporter);
  With Scripter.DefineClass(ClassType) do
  begin
  end;
end;

class function TatpFIBExportsLibrary.LibraryName: string;
begin
  result := 'pFIBExports';
end;

initialization
  RegisterScripterLibrary(TatpFIBExportsLibrary, True);

{$WARNINGS ON}

end.

