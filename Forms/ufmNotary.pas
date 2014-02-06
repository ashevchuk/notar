unit ufmNotary;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  udmNotary,
  ufmMain, uUtils, uRemoteDM, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2007Blue,
  cxLabel, cxGroupBox, cxCheckBox, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxDBEdit, cxMemo, Vcl.Menus, Vcl.StdCtrls, cxButtons, Data.DB, FIBDataSet,
  pFIBDataSet, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar;

type
  TfmNotary = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox6: TcxGroupBox;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    cxLabel35: TcxLabel;
    cxLabel36: TcxLabel;
    cxLabel37: TcxLabel;
    cxLabel38: TcxLabel;
    cxLabel39: TcxLabel;
    cxLabel40: TcxLabel;
    cxLabel41: TcxLabel;
    cxGroupBox10: TcxGroupBox;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    SurnameLookupComboBox: TcxDBLookupComboBox;
    NameLookupComboBox: TcxDBLookupComboBox;
    MiddleNameLookupComboBox: TcxDBLookupComboBox;
    GenderLookupComboBox: TcxDBLookupComboBox;
    cxDBLookupComboBox11: TcxDBLookupComboBox;
    cxDBLookupComboBox12: TcxDBLookupComboBox;
    cxDBLookupComboBox13: TcxDBLookupComboBox;
    cxDBLookupComboBox14: TcxDBLookupComboBox;
    cxDBLookupComboBox15: TcxDBLookupComboBox;
    cxDBLookupComboBox16: TcxDBLookupComboBox;
    cxDBLookupComboBox17: TcxDBLookupComboBox;
    cxDBLookupComboBox18: TcxDBLookupComboBox;
    cxDBLookupComboBox19: TcxDBLookupComboBox;
    cxDBLookupComboBox20: TcxDBLookupComboBox;
    cxDBLookupComboBox21: TcxDBLookupComboBox;
    cxDBLookupComboBox22: TcxDBLookupComboBox;
    PostButton: TcxButton;
    CancelButton: TcxButton;
    cxGroupBox13: TcxGroupBox;
    cxLabel46: TcxLabel;
    NameCaseNominativeTextEdit: TcxDBTextEdit;
    NameCaseGenitiveTextEdit: TcxDBTextEdit;
    cxLabel47: TcxLabel;
    NameCaseDativeTextEdit: TcxDBTextEdit;
    cxLabel48: TcxLabel;
    NameCaseAccusiveTextEdit: TcxDBTextEdit;
    cxLabel49: TcxLabel;
    NameCaseVocativeTextEdit: TcxDBTextEdit;
    cxLabel50: TcxLabel;
    cxLabel51: TcxLabel;
    NameCaseLocativeTextEdit: TcxDBTextEdit;
    NameCaseAblativeTextEdit: TcxDBTextEdit;
    cxLabel52: TcxLabel;
    NameAbbreviationTextEdit: TcxDBTextEdit;
    cxLabel53: TcxLabel;
    cxGroupBox14: TcxGroupBox;
    cxLabel54: TcxLabel;
    MiddleCaseNominativeTextEdit: TcxDBTextEdit;
    MiddleCaseGenitiveTextEdit: TcxDBTextEdit;
    cxLabel55: TcxLabel;
    MiddleCaseDativeTextEdit: TcxDBTextEdit;
    cxLabel56: TcxLabel;
    MiddleCaseAccusativeTextEdit: TcxDBTextEdit;
    cxLabel57: TcxLabel;
    MiddleCaseVocativeTextEdit: TcxDBTextEdit;
    cxLabel58: TcxLabel;
    cxLabel59: TcxLabel;
    MiddleCaseLocativeTextEdit: TcxDBTextEdit;
    MiddleCaseAblativeTextEdit: TcxDBTextEdit;
    cxLabel60: TcxLabel;
    MiddleAbbreviationTextEdit: TcxDBTextEdit;
    cxLabel61: TcxLabel;
    cxGroupBox15: TcxGroupBox;
    cxLabel62: TcxLabel;
    SurnameCaseNominativeTextEdit: TcxDBTextEdit;
    SurnameCaseGenitiveTextEdit: TcxDBTextEdit;
    cxLabel63: TcxLabel;
    SurnameCaseDativeTextEdit: TcxDBTextEdit;
    cxLabel64: TcxLabel;
    SurnameCaseAccusiveTextEdit: TcxDBTextEdit;
    cxLabel65: TcxLabel;
    SurnameCaseVocativeTextEdit: TcxDBTextEdit;
    cxLabel66: TcxLabel;
    cxLabel67: TcxLabel;
    SurnameCaseLocativeTextEdit: TcxDBTextEdit;
    SurnameCaseAblativeTextEdit: TcxDBTextEdit;
    cxLabel68: TcxLabel;
    cxButton1: TcxButton;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PostButtonClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    function appendNotary: boolean;
    function saveNotary: boolean;
  end;

var
  fmNotary: TfmNotary;

const
  CASE_NOMINATIVE: byte = 1;
  CASE_GENITIVE: byte = 2;
  CASE_DATIVE: byte = 3;
  CASE_ACCUSATIVE: byte = 4;
  CASE_ABLATIVE: byte = 5;
  CASE_LOCATIVE: byte = 6;
  CASE_VOCATIVE: byte = 7;

implementation
uses padegFIO;
{$R *.dfm}

function TfmNotary.appendNotary: boolean;
begin
  dmNotary.NotariesDataSet.Close;
  dmNotary.NotariesDataSet.Transaction := RemoteDataModule.createTransaction;
  dmNotary.NotariesDataSet.Transaction.StartTransaction;
  dmNotary.NotariesDataSet.Open;
  dmNotary.NotariesDataSet.Append;
end;

procedure TfmNotary.CancelButtonClick(Sender: TObject);
begin
  dmNotary.NotariesDataSet.Close;
  Close;
end;

procedure TfmNotary.cxButton1Click(Sender: TObject);
var
  PartsFIO: TFIOParts;
  FullName: String;
  caseGender: Boolean;
begin
  FullName := Format('%s %s %s', [SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text]);
  PartsFIO := GetFIOParts(FullName);
  caseGender := false;


  SurnameCaseNominativeTextEdit.EditValue := ExtractWord(1, PadegFIO.GetFIOPadegAS(SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text, CASE_NOMINATIVE), [' ']);
  SurnameCaseGenitiveTextEdit.EditValue := ExtractWord(1, PadegFIO.GetFIOPadegAS(SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text, CASE_GENITIVE), [' ']);
  SurnameCaseDativeTextEdit.EditValue := ExtractWord(1, PadegFIO.GetFIOPadegAS(SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text, CASE_DATIVE), [' ']);
  SurnameCaseAccusiveTextEdit.EditValue := ExtractWord(1, PadegFIO.GetFIOPadegAS(SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text, CASE_ACCUSATIVE), [' ']);
  SurnameCaseVocativeTextEdit.EditValue := ExtractWord(1, PadegFIO.GetFIOPadegAS(SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text, CASE_VOCATIVE), [' ']);
  SurnameCaseLocativeTextEdit.EditValue := ExtractWord(1, PadegFIO.GetFIOPadegAS(SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text, CASE_LOCATIVE), [' ']);
  SurnameCaseAblativeTextEdit.EditValue := ExtractWord(1, PadegFIO.GetFIOPadegAS(SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text, CASE_ABLATIVE), [' ']);

  NameCaseNominativeTextEdit.EditValue := ExtractWord(2, PadegFIO.GetFIOPadegAS(SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text, CASE_NOMINATIVE), [' ']);
  NameCaseGenitiveTextEdit.EditValue := ExtractWord(2, PadegFIO.GetFIOPadegAS(SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text, CASE_GENITIVE), [' ']);
  NameCaseDativeTextEdit.EditValue :=   ExtractWord(2, PadegFIO.GetFIOPadegAS(SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text, CASE_DATIVE), [' ']);
  NameCaseAccusiveTextEdit.EditValue := ExtractWord(2, PadegFIO.GetFIOPadegAS(SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text, CASE_ACCUSATIVE), [' ']);
  NameCaseVocativeTextEdit.EditValue := ExtractWord(2, PadegFIO.GetFIOPadegAS(SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text, CASE_VOCATIVE), [' ']);
  NameCaseLocativeTextEdit.EditValue := ExtractWord(2, PadegFIO.GetFIOPadegAS(SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text, CASE_LOCATIVE), [' ']);
  NameCaseAblativeTextEdit.EditValue := ExtractWord(2, PadegFIO.GetFIOPadegAS(SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text, CASE_ABLATIVE), [' ']);
  NameAbbreviationTextEdit.EditValue := PartsFIO.FirstName;

  MiddleCaseNominativeTextEdit.EditValue := ExtractWord(3, PadegFIO.GetFIOPadegAS(SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text, CASE_NOMINATIVE), [' ']);
  MiddleCaseGenitiveTextEdit.EditValue := ExtractWord(3, PadegFIO.GetFIOPadegAS(SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text, CASE_GENITIVE), [' ']);
  MiddleCaseDativeTextEdit.EditValue := ExtractWord(3, PadegFIO.GetFIOPadegAS(SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text, CASE_DATIVE), [' ']);
  MiddleCaseAccusativeTextEdit.EditValue := ExtractWord(3, PadegFIO.GetFIOPadegAS(SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text, CASE_ACCUSATIVE), [' ']);
  MiddleCaseVocativeTextEdit.EditValue := ExtractWord(3, PadegFIO.GetFIOPadegAS(SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text, CASE_VOCATIVE), [' ']);
  MiddleCaseLocativeTextEdit.EditValue := ExtractWord(3, PadegFIO.GetFIOPadegAS(SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text, CASE_LOCATIVE), [' ']);
  MiddleCaseAblativeTextEdit.EditValue := ExtractWord(3, PadegFIO.GetFIOPadegAS(SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text, CASE_ABLATIVE), [' ']);
  MiddleAbbreviationTextEdit.EditValue := PartsFIO.MiddleName;
end;

procedure TfmNotary.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmNotary.FormCreate(Sender: TObject);
begin
    dmNotary := TdmNotary.Create(self);
end;

procedure TfmNotary.FormDestroy(Sender: TObject);
begin
    dmNotary.Destroy;
end;

procedure TfmNotary.PostButtonClick(Sender: TObject);
begin
  saveNotary;
  dmNotary.NotariesDataSet.Close;
  Close;
end;

function TfmNotary.saveNotary: boolean;
begin
  try
    dmNotary.NotariesDataSet.Post;
  finally
    dmNotary.NotariesDataSet.Transaction.Commit;
    dmNotary.NotariesDataSet.Close;
    dmNotary.NotariesDataSet.Transaction.Free;
    dmNotary.NotariesDataSet.Transaction := RemoteDataModule.FIBTransaction;
  end;
end;

end.
