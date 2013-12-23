unit ufmIndividual;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  udmIndividual,
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
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBLookupComboBox8: TcxDBLookupComboBox;
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
    cxDBLookupComboBox37: TcxDBLookupComboBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmIndividual: TfmIndividual;

implementation

{$R *.dfm}

procedure TfmIndividual.cxButton1Click(Sender: TObject);
begin
  dmIndividual.IndividualsDataSet.Close;
  dmIndividual.IndividualsDataSet.Transaction := RemoteDataModule.createTransaction;
  dmIndividual.IndividualsDataSet.Transaction.StartTransaction;
  dmIndividual.IndividualsDataSet.Open;
  dmIndividual.IndividualsDataSet.Append;
end;

procedure TfmIndividual.cxButton2Click(Sender: TObject);
begin
  try
    dmIndividual.IndividualsDataSet.Post;
  finally
    dmIndividual.IndividualsDataSet.Transaction.Commit;
    dmIndividual.IndividualsDataSet.Close;
    dmIndividual.IndividualsDataSet.Transaction.Free;
    dmIndividual.IndividualsDataSet.Transaction := RemoteDataModule.FIBTransaction;
  end;
end;

procedure TfmIndividual.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmIndividual.FormCreate(Sender: TObject);
begin
  dmIndividual := TdmIndividual.Create(self);
end;

procedure TfmIndividual.FormDestroy(Sender: TObject);
begin
  dmIndividual.Destroy;
end;

end.
