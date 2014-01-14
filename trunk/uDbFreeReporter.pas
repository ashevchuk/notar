(* Клас для стварэння справаздач у фарматах RTF і HTML на падставе шаблонаў.
  Class to create RTF & HTML reports based on file templates.
  Copyright (C) 2007 Kryvich, http://kryvich.googlepages.com/delphi_reporter.html

  Licensed under LGPLv3 or later (http://www.gnu.org/licenses/lgpl.html)
*)

unit uDbFreeReporter;

interface

uses Classes, DB, uFreeReporter;

type
  // Calls when the reporter meets with unknown tag in the template
  // Tag - name of the unknown tag
  // Value - a return value of the tag
  TGetCustomTagValueFunc = function(const Tag: AnsiString; var Value: string):
    boolean of object;

  // Database-related reporter which supports an evaluation of values of
  // the database fields
  TDbFreeReporter = class(TFreeReporter)
  private
    // Datasets used in the template
    DataSets: TList;    // list of TDataSet
    // Nested Dataset queue
    Cycles: TList;      // list of TCycleData
    // Current cycle index, -1 if none
    iCurrCycle: integer;
    // Aggregates data
    Aggregates: TList;  // list of TAggregates

    // 'for' tag event handler
    procedure ForTag(const Param: AnsiString; var DoCycle: boolean);
    // 'end' tag event handler
    procedure EndTag(var StopCycle: boolean);
    // Find dataset DataSetName in supported datamodule, form or other component
    function FindDataSet(const DataSetName: string): TDataSet;
    // Update aggregates values for given cycle index
    procedure UpdateAggregatesFor(iCycle: integer);
    // Is it any opened cycle for the DataSet
    function CycleExistsFor(DataSet: TDataSet): boolean;
  protected
    // Return a value for the field of the template
    function GetTagValue(const TagName: AnsiString): string; override;
  public
    OnGetCustomTagValue: TGetCustomTagValueFunc;

    constructor Create;
    destructor Destroy; override;
    procedure AddDataSet(DataSet: TDataSet);
    // Return formatted string for the given field value
    function FormatFieldValue(Field: TField; v: variant): string;
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
  rsNoDataset = 'Can''t find dataset "%s".'#13'Check template!';
  rsNoDatasetField = 'Can''t find dataset field "%s".'#13'Check template!';
  rsNoTag = 'Can''t evaluate tag "%s".'#13'Check template!';
  rsBadCycleNesting = 'Cycle "%s" can''t be closed before nested cycle "%s"'#13+
    'Check template!';
  rsNoCycleForDataset = 'Aggregate "%s" can''t be evaluated because'#13 +
    'there is not any cycle for dataset "%s".'#13'Check template!';
  rsClosedDataset = 'Can''t retrieve data from closed dataset "%s"';
  rsBadAggregateTag = 'Can''t evaluate aggregate field tag "%s"'#13 +
    'Check template!';

type
  TDbReporterException = class(Exception);

  // Aggregates data for a field
  PAggregates = ^TAggregates;
  TAggregates = record
    Field: TField;
    Sum: variant;
    Count: integer;
    Min: variant;
    Max: Variant;
  end;

  // Cycle information
  PCycleData = ^TCycleData;
  TCycleData = record
    // Is the cycle not completed?
    Active: boolean;
    // Index of the parent cycle
    iParentCycle: integer;
    // Iterated dataset
    DataSet: TDataSet;
    // Iterated field, may be nil
    Field: TField;
    // Initial value of iterated field
    InitFieldValue: variant;
    // Range of indexes of associated aggregates in TDbFreeReporter.Aggregates
    iAgg1, iAgg2: integer;
    // Count of iterated records
    RecordCount: integer;
  end;

{ TDBFreeReporter }

procedure TDbFreeReporter.AddDataSet(DataSet: TDataSet);
begin
  DataSets.Add(DataSet);
end;

constructor TDbFreeReporter.Create;
begin
  inherited;
  OnForTag := ForTag;
  OnEndTag := EndTag;
  DataSets := TList.Create;
  Cycles := TList.Create;
  iCurrCycle := -1;
  Aggregates := TList.Create;
end;

function TDbFreeReporter.CycleExistsFor(DataSet: TDataSet): boolean;
var
  i: integer;
  cd: PCycleData;
begin
  for i := 0 to Cycles.Count - 1 do begin
    cd := PCycleData(Cycles[i]);
    if cd.Active and (cd.DataSet = DataSet) then begin
      Result := True;
      exit;
    end;
  end;
  Result := False;
end;

destructor TDbFreeReporter.Destroy;
var
  i: integer;
begin
  DataSets.Free;
  for i := 0 to Cycles.Count - 1 do
    Dispose(PCycleData(Cycles[i]));
  Cycles.Free;
  for i := 0 to Aggregates.Count - 1 do
    Dispose(PAggregates(Aggregates[i]));
  Aggregates.Free;
  inherited;
end;

procedure TDbFreeReporter.EndTag(var StopCycle: boolean);

  // Is it a parent cycle that indicates an end of the record range
  function StopParentCyclesFor(DataSet: TDataSet): boolean;
  var
    i: integer;
    cd: PCycleData;
  begin
    Result := False;
    for i := iCurrCycle-1 downto 0 do begin
      cd := PCycleData(Cycles[i]);
      Result := cd.Active and (cd.DataSet = DataSet) and (cd.Field <> Nil)
        and (cd.InitFieldValue <> cd.Field.Value);
      if Result then
        exit;
    end;
  end;

  // Update aggregates values for all cycles that iterate DataSet records
  procedure UpdateAggregatesForDataSet(DataSet: TDataSet);
  var
    i: integer;
    cd: PCycleData;
  begin
    for i := iCurrCycle downto 0 do begin
      cd := PCycleData(Cycles[i]);
      if cd.Active and (cd.DataSet = DataSet) then
        UpdateAggregatesFor(i);
    end;
  end;

var
  cd, cd1: PCycleData;
  ags: PAggregates;
  i: integer;
begin
  assert(iCurrCycle >= 0, 'FreeReporter: Internal error #02'); 

  cd := PCycleData(Cycles[iCurrCycle]);
  // Delete all nested cycles if any
  for i := Cycles.Count-1 downto iCurrCycle+1 do begin
    cd1 := PCycleData(Cycles[i]);
    if cd1.iParentCycle = iCurrCycle then begin
      if cd1.Active then
        raise TDbReporterException.CreateFmt(rsBadCycleNesting,
          [cd.DataSet.Name, cd1.DataSet.Name]);
      Dispose(cd1);
      Cycles.Delete(i);
    end;
  end;

  // Delete aggregates of every nested cycle if any
  for i := Aggregates.Count-1 downto cd.iAgg2+1 do begin
    ags := PAggregates(Aggregates[i]);
    Dispose(ags);
    Aggregates.Delete(i);
  end;

  repeat
    cd.DataSet.Next;
    StopCycle := cd.DataSet.Eof or StopParentCyclesFor(cd.DataSet);
    if StopCycle then begin
      if not cd.DataSet.Eof and CycleExistsFor(cd.DataSet) then
        cd.DataSet.Prior; // Position will be advanced by the parent cycle
      break;
    end;
    UpdateAggregatesForDataSet(cd.DataSet)
  until (cd.Field = Nil) or (cd.InitFieldValue <> cd.Field.Value);

  if StopCycle then begin
    // Activate parent cycle if exists
    cd.Active := False;
    iCurrCycle := cd.iParentCycle;
  end else if cd.Field <> Nil then
    cd.InitFieldValue := cd.Field.Value;
end;

function TDbFreeReporter.FindDataSet(const DataSetName: string): TDataSet;
var
  i: integer;
begin
  for i := 0 to DataSets.Count - 1 do begin
    Result := TDataSet(DataSets[i]);
    if SameText(Result.Name, DataSetName) then
      exit;
  end;
  Result := Nil;
end;

function TDbFreeReporter.FormatFieldValue(Field: TField;
  v: variant): string;
var
  FmtStr: string;

  function IntegerFieldText(fld: TIntegerField): string;
  begin
    if (DocType = dtXML)
      or (FmtStr = '')
    then
      Result := IntToStr(v)
    else
      Result := FormatFloat(FmtStr, v);
  end;

  function FloatFieldText(fld: TFloatField): string;
  var
    Format: TFloatFormat;
    Digits: Integer;
  begin
    if DocType = dtXml then
      Result := FloatToStr(v)
    else if FmtStr = '' then begin
      if fld.currency then begin
        Format := ffCurrency;
        Digits := {$IFDEF Unicode}FormatSettings.{$ENDIF}CurrencyDecimals;
      end else begin
        Format := ffGeneral;
        Digits := 0;
      end;
      Result := FloatToStrF(v, Format, fld.Precision, Digits);
    end else
      Result := FormatFloat(FmtStr, v);
  end; 

  function DateTimeFieldText(fld: TDateTimeField): string;
  var
    f: string;
  begin
    if DocType = dtXml then
      f := 'yyyy-mm-ddThh:nn:ss.zzz'
    else if fld.DisplayFormat <> '' then
      f := fld.DisplayFormat
    else
      case fld.DataType of
        ftDate: f := {$IFDEF Unicode}FormatSettings.{$ENDIF}ShortDateFormat;
        ftTime: f := {$IFDEF Unicode}FormatSettings.{$ENDIF}LongTimeFormat;
      end;
    DateTimeToString(Result, f, v);
  end; 

begin
  if VarIsNull(v) then
    Result := ''
  else if assigned(Field.onGetText) then
    Field.onGetText(Field, Result, True)
  else if Field is TNumericField then begin
    if TNumericField(Field).DisplayFormat <> '' then
      FmtStr := TNumericField(Field).DisplayFormat
    else
      FmtStr := TNumericField(Field).EditFormat;
    if Field is TFloatField then
      Result := FloatFieldText(TFloatField(Field))
    else if Field is TIntegerField then
      Result := IntegerFieldText(TIntegerField(Field))
    else
      Result := VarToStr(v);
  end else if Field is TDateTimeField then
    Result := DateTimeFieldText(TDateTimeField(Field))
  else
    Result := VarToStr(v);
end;

procedure TDbFreeReporter.ForTag(const Param: AnsiString; var DoCycle: boolean);
var
  ds: TDataSet;
  fld: TField;
  cd: PCycleData;
  ags: PAggregates;
  i: integer;
  ft: TFieldType;
  s: AnsiString;
begin
  i := {$IFDEF Unicode}AnsiStrings.{$ENDIF}AnsiPos('.', Param);
  if i = 0 then
    s := Param
  else
    s := copy(Param, 1, i-1);
  ds := FindDataSet(string(s));
  if ds = Nil then
    raise TDbReporterException.CreateFmt(rsNoDataset, [s]);
  if not ds.Active then
    raise TDbReporterException.CreateFmt(rsClosedDataset, [s]);
  if i > 0 then begin
    s := copy(Param, i+1, MaxInt);
    fld := ds.FindField(string(s));
    if fld = Nil then
      raise TDbReporterException.CreateFmt(rsNoDatasetField, [Param]);
  end else
    fld := Nil;
  if not CycleExistsFor(ds) then
    ds.First;
  DoCycle := not ds.Eof;
  if DoCycle then begin
    // Create cycle
    New(cd);
    FillChar(cd^, SizeOf(TCycleData), 0);
    cd.Active := True;
    cd.iParentCycle := iCurrCycle;
    cd.DataSet := ds;
    cd.Field := fld;
    if Fld <> Nil then
      cd.InitFieldValue := Fld.Value;
    // Init aggregates
    cd.iAgg1 := Aggregates.Count;
    for i := 0 to ds.FieldCount - 1 do begin
      ft := ds.Fields[i].DataType;
      if not (ft in ftNonTextTypes) then begin
        New(ags);
        FillChar(ags^, SizeOf(TAggregates), 0);
        ags.Field := ds.Fields[i];
        ags.Min := Null;
        ags.Max := Null;
        Aggregates.Add(ags);
      end;
    end;
    cd.iAgg2 := Aggregates.Count-1;
    Cycles.Add(cd);
    iCurrCycle := Cycles.Count-1;
    UpdateAggregatesFor(iCurrCycle);
  end;
end;

function TDbFreeReporter.GetTagValue(const TagName: AnsiString): string;
type
  TAggregateFunc = (afNone, afSum, afAvg, afCount, afMin, afMax);

  function GetAggregateFunc(s: AnsiString): TAggregateFunc;
  const
    sAggregateFunc: array[TAggregateFunc] of AnsiString = (
      '', 'sum', 'avg', 'count', 'min', 'max'
    );
  begin
    s := LowerCase(s);
    Result := high(TAggregateFunc);
    while Result > low(TAggregateFunc) do
      if s = sAggregateFunc[Result] then
        exit
      else
        dec(Result);
  end;

  function GetAggregateFuncValue(Field: TField; AggregateFunc: TAggregateFunc): string;
  var
    i: integer;
    ags: PAggregates;
  begin
    for i := Aggregates.Count-1 downto 0 do begin
      ags := PAggregates(Aggregates[i]);
      if ags.Field = Field then begin
        case AggregateFunc of
          afSum: Result := FormatFieldValue(Field, ags.Sum);
          afAvg: begin
            if not (VarIsNull(ags.Sum) or VarIsNull(ags.Count))
              and (ags.Count > 0)
            then begin
              if VarIsFloat(ags.Sum) then
                Result := FormatFieldValue(Field, ags.Sum / ags.Count)
              else
                Result := FormatFieldValue(Field, ags.Sum div ags.Count);
            end else
              Result := '';
          end;
          afCount: Result := IntToStr(ags.Count);
          afMin: Result := FormatFieldValue(Field, ags.Min);
          afMax: Result := FormatFieldValue(Field, ags.Max);
        end;
        exit;
      end;
    end;
    raise TDbReporterException.CreateFmt(rsBadAggregateTag, [TagName]);
  end;

  function GetCycleRecordCountFor(DataSet: TDataSet): integer;
  var
    i: integer;
    cd: PCycleData;
  begin
    for i := Cycles.Count-1 downto 0 do begin
      cd := PCycleData(Cycles[i]);
      if cd.DataSet = DataSet then begin
        Result := cd.RecordCount;
        exit;
      end;
    end;
    raise TDbReporterException.CreateFmt(rsNoCycleForDataset, [TagName,
      DataSet.Name]);
  end;

var
  s, slcFieldName: AnsiString;
  i: integer;
  ds: TDataSet;
  fld: TField;
  AggregateFunc: TAggregateFunc;
begin
  if (TagName <> '') and (DataSets.Count > 0) then begin
    slcFieldName := LowerCase(TagName);
    // It's a aggregate?
    i := {$IFDEF Unicode}AnsiStrings.{$ENDIF}AnsiPos('(', slcFieldName);
    if (i > 0)
      and ({$IFDEF Unicode}AnsiStrings.{$ENDIF}AnsiPos(')', slcFieldName) = length(slcFieldName))
    then begin
      // Sum(Table.Field)
      s := copy(slcFieldName, 1, i-1);
      AggregateFunc := GetAggregateFunc(s);
      if AggregateFunc <> afNone then begin
        s := copy(slcFieldName, i+1, length(slcFieldName)-i-1); 
        // Table.Field
        i := {$IFDEF Unicode}AnsiStrings.{$ENDIF}AnsiPos('.', s);
        if i > 0 then begin
          ds := FindDataSet(string(copy(s, 1, i-1)));
          if ds <> Nil then begin
            delete(s, 1, i);
            if s = '*' then begin
              i := GetCycleRecordCountFor(ds);
              Result := IntToStr(i);
              exit;
            end else begin
              fld := ds.FindField(string(s));
              if fld <> Nil then begin
                Result := GetAggregateFuncValue(fld, AggregateFunc);
                exit;
              end;
            end;
          end;
        end;
      end;
    end;
    // It's a database field?
    i := {$IFDEF Unicode}AnsiStrings.{$ENDIF}AnsiPos(':', TagName);
    if i > 0 then begin
      s := copy(TagName, 1, i-1);
      ds := FindDataSet(string(s));
      if ds <> Nil then begin
        if not ds.Active then
          raise TDbReporterException.CreateFmt(rsClosedDataset, [ds.Name]);
        s := copy(TagName, i+1, MaxInt);
        fld := ds.FindField(string(s));
        if fld <> Nil then begin
          Result := FormatFieldValue(fld, fld.Value);
          exit;
        end;
      end else
        raise TDbReporterException.CreateFmt(rsNoDataset, [s]); 
    end else begin
      // It's a date/time function?
      if slcFieldName = 'version' then begin
        Result := Version;
        exit;
      end else if slcFieldName = 'date' then begin
        Result := DateToStr(Date);
        exit;
      end else if slcFieldName = 'time' then begin
        Result := TimeToStr(Time);
        exit;
      end else if slcFieldName = 'now' then begin
        Result := DateTimeToStr(Now);
        exit;
      end;
    end;
  end;

  if not assigned(OnGetCustomTagValue) or
    not OnGetCustomTagValue(TagName, Result)
  then
    raise TDbReporterException.CreateFmt(rsNoTag, [TagName]);
end;

procedure TDbFreeReporter.UpdateAggregatesFor(iCycle: integer);
var
  cd: PCycleData;
  ags: PAggregates;
  i: integer;
  val: variant;
begin
  cd := PCycleData(Cycles[iCycle]);
  inc(cd.RecordCount);
  for i := cd.iAgg1 to cd.iAgg2 do begin
    ags := PAggregates(Aggregates[i]);
    val := ags.Field.Value;
    if not VarIsNull(val) then begin
      inc(ags.Count);
      if VarIsNull(ags.Min) or (val < ags.Min) then
        ags.Min := val;
      if VarIsNull(ags.Max) or (val > ags.Max) then
        ags.Max := val;
      if (ags.Field.DataType in [ftSmallint, ftInteger, ftWord, ftFloat,
        ftCurrency, ftDate, ftTime, ftDateTime, ftAutoInc, ftLargeint, ftTimeStamp])
      then
        ags.Sum := ags.Sum + val;
    end;
  end;
end;

end.
