unit ufmIndividual;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  udmIndividual, uTypes,
  ufmMain, uUtils, uRemoteDM, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2007Blue,
  cxLabel, cxGroupBox, cxCheckBox, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxDBEdit, cxMemo, Vcl.Menus, Vcl.StdCtrls, cxButtons, Data.DB, FIBDataSet,
  pFIBDataSet, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar;

type
  TfmIndividual = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxGroupBox3: TcxGroupBox;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxGroupBox4: TcxGroupBox;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
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
    cxGroupBox7: TcxGroupBox;
    cxGroupBox8: TcxGroupBox;
    cxLabel42: TcxLabel;
    cxLabel43: TcxLabel;
    cxGroupBox5: TcxGroupBox;
    cxGroupBox9: TcxGroupBox;
    cxLabel3: TcxLabel;
    cxLabel1: TcxLabel;
    cxGroupBox10: TcxGroupBox;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel45: TcxLabel;
    cxGroupBox11: TcxGroupBox;
    cxDBMemo1: TcxDBMemo;
    cxDBMemo2: TcxDBMemo;
    SurnameLookupComboBox: TcxDBLookupComboBox;
    NameLookupComboBox: TcxDBLookupComboBox;
    MiddleNameLookupComboBox: TcxDBLookupComboBox;
    GenderLookupComboBox: TcxDBLookupComboBox;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBLookupComboBox9: TcxDBLookupComboBox;
    cxDBLookupComboBox10: TcxDBLookupComboBox;
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
    cxDBLookupComboBox23: TcxDBLookupComboBox;
    cxDBLookupComboBox24: TcxDBLookupComboBox;
    cxDBLookupComboBox25: TcxDBLookupComboBox;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBLookupComboBox26: TcxDBLookupComboBox;
    cxDBLookupComboBox27: TcxDBLookupComboBox;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBLookupComboBox28: TcxDBLookupComboBox;
    cxDBLookupComboBox29: TcxDBLookupComboBox;
    cxDBLookupComboBox30: TcxDBLookupComboBox;
    cxDBDateEdit5: TcxDBDateEdit;
    cxDBLookupComboBox31: TcxDBLookupComboBox;
    cxDBLookupComboBox32: TcxDBLookupComboBox;
    cxDBLookupComboBox33: TcxDBLookupComboBox;
    cxDBLookupComboBox34: TcxDBLookupComboBox;
    cxDBLookupComboBox35: TcxDBLookupComboBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBLookupComboBox36: TcxDBLookupComboBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    cxDBMemo3: TcxDBMemo;
    cxDBMemo4: TcxDBMemo;
    cxGroupBox12: TcxGroupBox;
    cxLabel2: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel44: TcxLabel;
    cxDBDateEdit6: TcxDBDateEdit;
    cxDBLookupComboBox8: TcxDBLookupComboBox;
    cxDBLookupComboBox37: TcxDBLookupComboBox;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PostButtonClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    FSelectorCallback: TCatalogSelectorCallback;
  public
    function appendIndividual: boolean;
    function saveIndividual: boolean;
    function editIndividual(AIndividualID: Int64): boolean;
    procedure registerSelectorCallback(ACallback: TCatalogSelectorCallback);
  end;

var
  fmIndividual: TfmIndividual;

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

procedure TfmIndividual.registerSelectorCallback(ACallback: TCatalogSelectorCallback);
begin
  FSelectorCallback := ACallback;
end;

function TfmIndividual.appendIndividual: boolean;
begin
  dmIndividual.IndividualsDataSet.Close;
  dmIndividual.IndividualsDataSet.Transaction := RemoteDataModule.createTransaction;
  dmIndividual.IndividualsDataSet.Transaction.StartTransaction;
  dmIndividual.IndividualsDataSet.Open;
  dmIndividual.IndividualsDataSet.Append;
end;

procedure TfmIndividual.CancelButtonClick(Sender: TObject);
begin
  dmIndividual.IndividualsDataSet.Close;
  Close;
end;

procedure TfmIndividual.cxButton1Click(Sender: TObject);
var
  PartsFIO: TFIOParts;
  FullName: String;
  caseGender: Boolean;
begin
  FullName := Format('%s %s %s', [SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text]);
  PartsFIO := GetFIOParts(FullName);
  caseGender := false;
//GenderLookupComboBox

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
  NameAbbreviationTextEdit.EditValue := Copy(PartsFIO.FirstName, 1, 1) + '.';

  MiddleCaseNominativeTextEdit.EditValue := ExtractWord(3, PadegFIO.GetFIOPadegAS(SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text, CASE_NOMINATIVE), [' ']);
  MiddleCaseGenitiveTextEdit.EditValue := ExtractWord(3, PadegFIO.GetFIOPadegAS(SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text, CASE_GENITIVE), [' ']);
  MiddleCaseDativeTextEdit.EditValue := ExtractWord(3, PadegFIO.GetFIOPadegAS(SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text, CASE_DATIVE), [' ']);
  MiddleCaseAccusativeTextEdit.EditValue := ExtractWord(3, PadegFIO.GetFIOPadegAS(SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text, CASE_ACCUSATIVE), [' ']);
  MiddleCaseVocativeTextEdit.EditValue := ExtractWord(3, PadegFIO.GetFIOPadegAS(SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text, CASE_VOCATIVE), [' ']);
  MiddleCaseLocativeTextEdit.EditValue := ExtractWord(3, PadegFIO.GetFIOPadegAS(SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text, CASE_LOCATIVE), [' ']);
  MiddleCaseAblativeTextEdit.EditValue := ExtractWord(3, PadegFIO.GetFIOPadegAS(SurNameLookupComboBox.Text, NameLookupComboBox.Text, MiddleNameLookupComboBox.Text, CASE_ABLATIVE), [' ']);
  MiddleAbbreviationTextEdit.EditValue := Copy(PartsFIO.MiddleName, 1, 1) + '.';
end;

function TfmIndividual.editIndividual(AIndividualID: Int64): boolean;
begin
  dmIndividual.IndividualsDataSet.Close;
  dmIndividual.IndividualsDataSet.Transaction := RemoteDataModule.createTransaction;
  dmIndividual.IndividualsDataSet.Transaction.StartTransaction;
  dmIndividual.IndividualsDataSet.Open;
  dmIndividual.IndividualsDataSet.Locate('ID', AIndividualID, [loCaseInsensitive, loPartialKey]);
  dmIndividual.IndividualsDataSet.Edit;
end;

procedure TfmIndividual.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmIndividual.FormCreate(Sender: TObject);
begin
  dmIndividual := TdmIndividual.Create(self);
  FSelectorCallback := nil;
end;

procedure TfmIndividual.FormDestroy(Sender: TObject);
begin
  dmIndividual.Destroy;
end;

procedure TfmIndividual.PostButtonClick(Sender: TObject);
begin
  saveIndividual;
  dmIndividual.IndividualsDataSet.Close;
  Close;
end;

function TfmIndividual.saveIndividual: boolean;
begin
  try
    dmIndividual.IndividualsDataSet.Post;
    if Assigned(FSelectorCallback) then FSelectorCallback(dmIndividual.IndividualsDataSetID.AsInt64 +1);
  finally
    dmIndividual.IndividualsDataSet.Transaction.Commit;

    dmIndividual.IndividualsDataSet.Close;
    dmIndividual.IndividualsDataSet.Transaction.Free;
    dmIndividual.IndividualsDataSet.Transaction := RemoteDataModule.FIBTransaction;
  end;
end;

end.
