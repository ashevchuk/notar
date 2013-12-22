unit ufmCreateTable;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  ufmMain, uRemoteDM, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2007Blue,
  cxLabel, cxGroupBox, cxTextEdit, cxMCListBox, Vcl.Menus, cxDropDownEdit,
  cxMaskEdit, cxSpinEdit, Vcl.StdCtrls, cxButtons;

resourcestring
  FT_CAPTION_TEXT = 'Текст';
  FT_CAPTION_NUMBER = 'Число';
  FT_CAPTION_BLOB = 'Контейнер';
  FT_CAPTION_DATE = 'Дата';
  FT_CAPTION_TIME = 'Час';
  FT_CAPTION_TIMESTAMP = 'Дата+Час';

  BTN_ADD_CAPTION = 'Додати';
  BTN_CHANGE_CAPTION = 'Змінити';

const
  FT_TEXT = 0;
  FT_NUMBER = 1;
  FT_BLOB = 2;
  FT_DATE = 3;
  FT_TIME = 4;
  FT_TIMESTAMP = 5;

  FC_IDX_SEQ = 0;
  FC_IDX_NAME = 1;
  FC_IDX_TYPE = 2;
  FC_IDX_SIZE = 3;
  FC_IDX_DESC = 4;

  FieldType      : array[0..FT_TIMESTAMP] of string = (FT_CAPTION_TEXT, FT_CAPTION_NUMBER, FT_CAPTION_BLOB, FT_CAPTION_DATE, FT_CAPTION_TIME, FT_CAPTION_TIMESTAMP);
  FieldTypeInSQL : array[0..FT_TIMESTAMP] of string = ('VARCHAR(%s)', 'BIGINT', 'BLOB SUB_TYPE 1 SEGMENT SIZE %s', 'DATE', 'TIME', 'TIMESTAMP');

type
  TfmCreateTable = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    TableNameTextEdit: TcxTextEdit;
    cxGroupBox2: TcxGroupBox;
    FieldsListBox: TcxMCListBox;
    cxGroupBox3: TcxGroupBox;
    AddFieldButton: TcxButton;
    FieldSizeSpinEdit: TcxSpinEdit;
    FieldDescriptionTextEdit: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    FieldTypeComboBox: TcxComboBox;
    FieldUpButton: TcxButton;
    FieldDownButton: TcxButton;
    FieldRemoveButton: TcxButton;
    CreateTableButton: TcxButton;
    FieldNameTextEdit: TcxMaskEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AddFieldButtonClick(Sender: TObject);
    procedure FieldsListBoxDblClick(Sender: TObject);
    procedure FieldNameTextEditPropertiesChange(Sender: TObject);
    procedure FieldUpButtonClick(Sender: TObject);
    procedure FieldDownButtonClick(Sender: TObject);
    procedure FieldRemoveButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CreateTableButtonClick(Sender: TObject);
  private
    function findFieldByName(AName: string): boolean;
    function fieldIndexByName(AName: string): byte;
    procedure reindexFields;
    function generateFields: boolean;
  public
    function addField(AName: string; AType: byte; ASize: word; ADescription: string): boolean;
  end;

var
  fmCreateTable: TfmCreateTable;

implementation

{$R *.dfm}

function TfmCreateTable.addField(AName: string; AType: byte; ASize: word; ADescription: string): boolean;
var
  FieldItem: string;
  Items: TStringList;
  iField: word;
begin
//  FieldItem := Format('%s|%s|%s|%s|"%s"|', [IntToStr(FieldsListBox.Items.Count+1), AName, FieldType[AType], IntToStr(ASize), StringReplace(ADescription, ' ', '_', [rfReplaceAll])]);
  FieldItem := Format('%s|%s|%s|%s|"%s"|', [IntToStr(FieldsListBox.Items.Count+1), AName, FieldType[AType], IntToStr(ASize), ADescription]);

  if findFieldByName(FieldNameTextEdit.Text) then
  begin
    Items := TStringList.Create;
    Items.Delimiter := FieldsListBox.Delimiter;
    for iField := 0 to FieldsListBox.Count -1 do
    begin
      Items.DelimitedText := FieldsListBox.Items[iField];
      if UpperCase(Items[FC_IDX_NAME]) = UpperCase(AName) then
      begin
        FieldsListBox.Items[iField] := FieldItem;
        Break;
      end;
    end;
    Items.Free;
  end else FieldsListBox.Items.Append(FieldItem);
  reindexFields;
end;

procedure TfmCreateTable.AddFieldButtonClick(Sender: TObject);
begin
  addField(FieldNameTextEdit.Text, FieldTypeComboBox.ItemIndex, FieldSizeSpinEdit.Value, FieldDescriptionTextEdit.Text);
  FieldNameTextEditPropertiesChange(Sender);
end;

procedure TfmCreateTable.CreateTableButtonClick(Sender: TObject);
begin
  generateFields;
end;

procedure TfmCreateTable.FieldNameTextEditPropertiesChange(Sender: TObject);
begin
 if findFieldByName(FieldNameTextEdit.Text) then AddFieldButton.Caption := BTN_CHANGE_CAPTION else AddFieldButton.Caption := BTN_ADD_CAPTION;
end;

procedure TfmCreateTable.FieldsListBoxDblClick(Sender: TObject);
var
  Items: TStringList;
begin
  Items := TStringList.Create;
  Items.Delimiter := FieldsListBox.Delimiter;
  Items.DelimitedText := FieldsListBox.Items[FieldsListBox.ItemIndex];

  FieldNameTextEdit.Text := Items[FC_IDX_NAME];
  FieldTypeComboBox.ItemIndex := FieldTypeComboBox.Properties.Items.IndexOf(Items[FC_IDX_TYPE]);
  FieldSizeSpinEdit.Text := Items[FC_IDX_SIZE];
  FieldDescriptionTextEdit.Text := Items[FC_IDX_DESC];
  Items.Free;
end;

procedure TfmCreateTable.FieldUpButtonClick(Sender: TObject);
begin
  if FieldsListBox.ItemIndex >0 then
  begin
    FieldsListBox.Items.Exchange(FieldsListBox.ItemIndex, FieldsListBox.ItemIndex -1);
  end;
  reindexFields;
end;

procedure TfmCreateTable.FieldDownButtonClick(Sender: TObject);
begin
  if FieldsListBox.ItemIndex < FieldsListBox.Count -1 then
  begin
    FieldsListBox.Items.Exchange(FieldsListBox.ItemIndex, FieldsListBox.ItemIndex +1);
  end;
  reindexFields;
end;

function TfmCreateTable.fieldIndexByName(AName: string): byte;
var
  iFieldTypes: byte;
begin
  FieldTypeComboBox.Properties.Items.Clear;
  for iFieldTypes := Low(FieldType) to High(FieldType) do
  begin
    if FieldType[iFieldTypes] = AName then
    begin
      Result := iFieldTypes;
      Exit;
    end;
  end;
end;

procedure TfmCreateTable.FieldRemoveButtonClick(Sender: TObject);
begin
  FieldsListBox.Items.Delete(FieldsListBox.ItemIndex);
  reindexFields;
end;

function TfmCreateTable.findFieldByName(AName: string): boolean;
var
  Items: TStringList;
  iField: word;
begin
  Result := False;
  if FieldsListBox.Count = 0 then Exit;
  if Length(AName) = 0 then Exit;
  Items := TStringList.Create;
  Items.Delimiter := FieldsListBox.Delimiter;
  for iField := 0 to FieldsListBox.Count -1 do
    begin
      Items.DelimitedText := FieldsListBox.Items[iField];
      if UpperCase(Items[FC_IDX_NAME]) = UpperCase(AName) then
      begin
        Result := True;
        Break;
      end;
    end;
  Items.Free;
end;

procedure TfmCreateTable.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmCreateTable.FormCreate(Sender: TObject);
var
  iFieldTypes: byte;
begin
  FieldTypeComboBox.Properties.Items.Clear;
  for iFieldTypes := Low(FieldType) to High(FieldType) do FieldTypeComboBox.Properties.Items.Append(FieldType[iFieldTypes]);
  FieldTypeComboBox.ItemIndex := 0;
end;

function TfmCreateTable.generateFields: boolean;
var
  Items: TStringList;
  FieldList: TStringList;
  FieldDescriptionsList: TStringList;
  iField: word;
  iSeq: word;
  CreateTableSQL: string;
  CreateTableSequenceSQL: string;
  CreateTablePrimaryKeySQL: string;
  CreateTablePrimaryKeyTriggerSQL: string;
begin
  if FieldsListBox.Count = 0 then Exit;

  FieldDescriptionsList := TStringList.Create;

  FieldList := TStringList.Create;
  FieldList.Append('ID BIGINT NOT NULL');

  Items := TStringList.Create;
  Items.Delimiter := FieldsListBox.Delimiter;
  for iField := 0 to FieldsListBox.Count -1 do
    begin
      Items.DelimitedText := FieldsListBox.Items[iField];
      FieldList.Append(Format('%s %s', [Items[FC_IDX_NAME], Format(FieldTypeInSQL[fieldIndexByName(Items[FC_IDX_TYPE])], [Items[FC_IDX_SIZE]]) ]));
      FieldDescriptionsList.Append(Format('COMMENT ON COLUMN %s.%s IS ''%s'';', [TableNameTextEdit.Text, Items[FC_IDX_NAME], Items[FC_IDX_DESC]]));
    end;
  Items.Free;

  FieldList.Delimiter := ',';
  FieldList.QuoteChar := ' ';
  CreateTableSQL := Format('CREATE TABLE %s (%s);', [TableNameTextEdit.Text, FieldList.DelimitedText]);
  CreateTableSequenceSQL := Format('CREATE SEQUENCE GEN_%s_ID;', [TableNameTextEdit.Text]);
  CreateTablePrimaryKeySQL := Format('ALTER TABLE %s ADD CONSTRAINT PK_%s_ID PRIMARY KEY (ID);', [TableNameTextEdit.Text, TableNameTextEdit.Text]);
  CreateTablePrimaryKeyTriggerSQL := Format('CREATE OR ALTER TRIGGER TRG_%s_BI_ID FOR %s ACTIVE BEFORE INSERT POSITION 0 AS begin if (NEW.ID IS NULL) then NEW.ID = GEN_ID(GEN_%s_ID, 1); end', [TableNameTextEdit.Text, TableNameTextEdit.Text, TableNameTextEdit.Text]);

  Log(CreateTableSQL);
  Log(CreateTableSequenceSQL);
  Log(CreateTablePrimaryKeySQL);
  Log(CreateTablePrimaryKeyTriggerSQL);
  Log(FieldDescriptionsList.Text);

  FieldDescriptionsList.Free;
  FieldList.Free;
end;

procedure TfmCreateTable.reindexFields;
var
  Items: TStringList;
  iField: word;
  iSeq: word;
begin
  if FieldsListBox.Count = 0 then Exit;
  iSeq := 0;
  Items := TStringList.Create;
  Items.Delimiter := FieldsListBox.Delimiter;
  for iField := 0 to FieldsListBox.Count -1 do
    begin
      Items.DelimitedText := FieldsListBox.Items[iField];
      Inc(iSeq);
      Items[FC_IDX_SEQ] := IntToStr(iSeq);
      FieldsListBox.Items[iField] := Items.DelimitedText;
    end;
  Items.Free;
end;

end.
