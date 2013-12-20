(* Клас для стварэння справаздач у фарматах RTF і HTML на падставе шаблонаў.
  Class to create RTF & HTML reports based on file templates.
  Copyright (C) 2007, 2012 Kryvich, http://sites.google.com/site/kryvich/reporter

  Licensed under LGPLv3 or later (http://www.gnu.org/licenses/lgpl.html)
*)

unit uFreeReporter;

interface

uses Classes;

const
  // Version of the reporter
  Version = '3.0';

type
  // Event calls when the parser reach the tag {for} in a template
  // Param - Dataset name or field name to iterate for
  // DoCycle - event handler returns a value that determines whether
  //           the reporter is allowed to perform the cycle
  TForTagProc = procedure(const Param: AnsiString; var DoCycle: boolean) of object;
  // Event calls when the parser reach the tag {end} in a template
  // StopCycle - event handler returns a value that determines whether
  //             the reporter has to stop iterations
  TEndTagProc = procedure(var StopCycle: boolean) of object;

  // Type of a template & an output document
  TDocType = (dtAutoDetect, dtRtf, dtHtml, dtXml);

  // Reporter which supports cycles in RTF/HTML files
  TFreeReporter = class
  private
    Template: AnsiString;
    // List of fragmets founded in a template
    Pieces: TList;  // list of TPiece
    fDocType: TDocType;

    // Format string before placing into a RTF file
    function FormatRtf(const s: AnsiString): AnsiString;
  protected
    // Return a value for the field of the template
    function GetTagValue(const FieldName: AnsiString): string; virtual; abstract;
    // Loading a template from the file
    procedure LoadTemplate(const TemplateName: string);
  public
    OnForTag: TForTagProc; // begin of a cycle
    OnEndTag: TEndTagProc; // end of a cycle

    constructor Create;
    destructor Destroy; override;
    // Create a report using a template
    procedure CreateReport(const TemplateName, OutputName: string);
    property DocType: TDocType read fDocType write fDocType;
  end;

implementation

uses SysUtils, Variants,
{$IFDEF UNICODE}
  AnsiStrings
{$ELSE}
  StrUtils
{$ENDIF}
  ;

resourcestring
  rsNoClosingBracket = 'Can''t find a closing bracket "}". Check template!';
  rsForTagNotFound = 'There is not corresponding {for} tag for a founded {end} tag.'#13+
    'Check template!';
  rsNoClosingEnd = 'Can''t find a closing {end} for a {for} tag.'#13+
    'Check template!';

type
  TReporterException = class(Exception);

  // Kind of the piece of a template
  TPieceKind = (pkNone, pkFor, pkEnd, pkTag);

  // Piece of a template
  PPiece = ^TPiece;
  TPiece = record
    Pos, Len: integer;  // Position in template and length of a piece
    PieceKind: TPieceKind;
    Param: AnsiString;      // For {for} and other tags: parameter of the tag
    iPairTag: integer;  // For {for} and {end} tag: index of a matching tag
  end;

{ TFreeReporter }

constructor TFreeReporter.Create;
begin
  inherited;
  Pieces := TList.Create;
end;

destructor TFreeReporter.Destroy;
var
  i: integer;
begin
  for i := 0 to Pieces.Count - 1 do
    Dispose(PPiece(Pieces[i]));
  Pieces.Free;
  inherited;
end;

function TFreeReporter.FormatRtf(const s: AnsiString): AnsiString;
var
  i: integer;
  ch: AnsiChar;
begin
  Result := '';
  for i := 1 to length(s) do begin
    ch := s[i];
    if ch in ['\', '{', '}'] then
      Result := Result + '\' + s[i]
    else if ch in [' '..#127] then
      Result := Result + s[i]
    else begin // non-ASCII character --> \'ee
      Result := Result + '\''  ';
      BinToHex(PAnsiChar(@ch), PAnsiChar(@Result[length(Result)-1]), 1);
    end;
  end;
end;

procedure TFreeReporter.CreateReport(const TemplateName, OutputName: string);
var
  fs: TFileStream;

  function DetectDocType(const TemplateName: string): TDocType;
  var
    s: string;
  begin
    s := LowerCase(copy(TemplateName, length(TemplateName)-3, 4));
    if (s = '.rtf') or (s = '.doc') then
      Result := dtRtf
    else if s = '.xml' then
      Result := dtXml
    else
      Result := dtHtml;
  end;

  procedure ProcessPieces(iFrom, iTo: integer);
  var
    i: integer;
    s: string;
    ansis: AnsiString;
    Piece: PPiece;
    bCycle: boolean;
  begin
    i := iFrom;
    while i <= iTo do begin
      Piece := PPiece(Pieces[i]);
      case Piece.PieceKind of
        pkNone: begin
          if Piece.Len > 0 then
            fs.Write(Template[Piece.Pos], Piece.Len);
        end;
        pkFor: begin // Begin of the 'for' cycle
          if assigned(OnForTag) then
            OnForTag(Piece.Param, bCycle) // Drop 'for '
          else
            bCycle := False;
          if bCycle then
            ProcessPieces(i+1, Piece.iPairTag);
          i := Piece.iPairTag;
        end;
        pkEnd: begin // End of the 'for' cycle
          if assigned(OnEndTag) then
            OnEndTag(bCycle)
          else
            bCycle := True;
          if bCycle then
            break;
          i := iFrom;
          continue;
        end;
        pkTag: begin // Other tag
          s := GetTagValue(Piece.Param);
          if length(s) > 0 then begin
            if DocType = dtRtf then
              ansis := FormatRtf(s)
            else
              ansis := UTF8Encode(s);
            fs.Write(ansis[1], length(ansis));
          end;
        end;
      end;
      inc(i);
    end;
  end;

begin
  if DocType = dtAutoDetect then
    DocType := DetectDocType(TemplateName);

  LoadTemplate(TemplateName);

  fs := TFileStream.Create(OutputName, fmCreate);
  try
    ProcessPieces(0, Pieces.Count-1);
  finally
    fs.Free;
  end;
end;

procedure TFreeReporter.LoadTemplate(const TemplateName: string);

  // Extract Rtf Formatting from a template tag string
  procedure ExtractRtfFormatting(const s: AnsiString; var Tag, Formatting: AnsiString);
  var
    i, i1: integer;
    ch: AnsiChar;
  begin
    Tag := '';
    Formatting := '';
    i := 1;
    while i <= length(s) do begin 
      case s[i] of
        #0..#31, '{', '}': Formatting := Formatting + s[i];
        '\': begin
          i1 := i;
          inc(i);
          if s[i] = '''' then begin // \'ee --> non-ASCII character
            inc(i);
            HexToBin(PAnsiChar(@s[i]), PAnsiChar(@ch), 1);
            Tag := Tag + ch;
            inc(i);
          end else begin
            while (i <= length(s)) and not (s[i] in [' ', '\', '{', '}']) do
              inc(i);
            Formatting := Formatting + copy(s, i1, i-i1);
            if (i <= length(s)) and (s[i] = '\') then
              continue;
            Formatting := Formatting + copy(s, i, 1);
          end;
        end;
        else Tag := Tag + s[i];
      end;
      inc(i);
    end;
    assert(length(Tag) + length(Formatting) = length(s), 'FreeReporter: Internal error #01');
  end;

  // Get the next reporter tag from a template
  function GetNextTag(iStart: integer; var iTagStart, iAfterTag: integer;
    var PieceKind: TPieceKind; var Param: AnsiString): boolean;
  var
    Tag, Formatting, s: AnsiString;
  begin
    iTagStart := {$IFDEF UNICODE}AnsiStrings.{$ENDIF}PosEx('\{', Template, iStart);
    Result := iTagStart > 0;
    if Result then begin
      iStart := iTagStart + 2;
      iAfterTag := PosEx('\}', Template, iStart);
      if iAfterTag <= 0 then
        raise TReporterException.Create(rsNoClosingBracket);
      if DocType = dtRtf then
        ExtractRtfFormatting(copy(Template, iStart, iAfterTag-iStart), Tag, Formatting)
      else begin
        Tag := copy(Template, iStart, iAfterTag-iStart);
        Formatting := '';
      end;
      if Formatting <> '' then begin
        move(Tag[1], Template[iStart], length(Tag));
        move(Template[iAfterTag], Template[iStart+length(Tag)], 2); // '\}'
        move(Formatting[1], Template[iStart+length(Tag)+2], length(Formatting));
        iAfterTag := iStart+length(Tag);
      end;
      inc(iAfterTag, 2);
      s := LowerCase(Tag);
      if (length(s) > 3)
        and (copy(s, 1, 3) = 'for')
        and (s[4] <= ' ')
      then begin
        PieceKind := pkFor;
        Param := Trim(copy(Tag, 5, MaxInt));
      end else if s = 'end' then begin
        PieceKind := pkEnd;
        Param := '';
      end else begin
        PieceKind := pkTag;
        Param := Tag;
      end;
    end;
  end;

  procedure NewPiece(aPos: integer; aPieceKind: TPieceKind; const aParam: AnsiString);
  var
    Piece: PPiece;
  begin
    New(Piece);
    FillChar(Piece^, SizeOf(TPiece), 0);
    Piece.Pos := aPos;
    Piece.PieceKind := aPieceKind;
    Piece.Param := aParam;
    Piece.iPairTag := -1;
    Pieces.Add(Piece);
  end;

var
  fs: TFileStream;
  i, i1, i2: integer;
  s: AnsiString;
  PieceKind: TPieceKind;
  Piece, Piece1: PPiece;
begin
  fs := TFileStream.Create(TemplateName, fmOpenRead or fmShareDenyNone);
  try
    SetLength(Template, fs.Size);
    fs.Read(Template[1], fs.Size);
  finally
    fs.Free;
  end;

  NewPiece(1, pkNone, '');
  i := 1;
  while i <= length(Template) do begin
    if not GetNextTag(i, i1, i2, PieceKind, s) then
      break;
    NewPiece(i1, PieceKind, s);
    if i2 <= length(Template) then
      NewPiece(i2, pkNone, '');
    i := i2;
  end;

  for i := 0 to Pieces.Count-1 do begin
    Piece := PPiece(Pieces[i]);
    if Piece.PieceKind = pkEnd then begin
      for i1 := i-1 downto 0 do begin
        Piece1 := PPiece(Pieces[i1]);
        if (Piece1.PieceKind = pkFor) and (Piece1.iPairTag < 0) then begin
          Piece.iPairTag := i1;
          Piece1.iPairTag := i;
          break;
        end;
      end;
      if Piece.iPairTag < 0 then
        raise TReporterException.Create(rsForTagNotFound);
    end;
  end;

  for i := 0 to Pieces.Count-1 do begin
    Piece := PPiece(Pieces[i]);
    if (Piece.PieceKind = pkFor) and (Piece.iPairTag < 0) then
      raise TReporterException.Create(rsNoClosingEnd);
    if i < Pieces.Count-1 then
      i2 := PPiece(Pieces[i+1]).Pos
     else
      i2 := length(Template) + 1;
    Piece.Len := i2 - Piece.Pos;
  end;
end;

end.
