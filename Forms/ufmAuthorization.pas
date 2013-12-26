unit ufmAuthorization;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  ufmMain, uUtils, uRemoteDM, udmAuthorization, uTypes,
  cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2007Blue,
  cxMemo, cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxMaskEdit, cxCalendar, cxLabel, cxGroupBox,
  cxCheckBox, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxListBox, dxBevel,
  dxSkinOffice2010Blue;

type
  TfmAuthorization = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    cxGroupBox7: TcxGroupBox;
    cxLabel25: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBLookupComboBox28: TcxDBLookupComboBox;
    cxDBMemo4: TcxDBMemo;
    cxGroupBox6: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox29: TcxDBLookupComboBox;
    cxDBLookupComboBox30: TcxDBLookupComboBox;
    cxDBDateEdit2: TcxDBDateEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxGroupBox3: TcxGroupBox;
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
    cxDBDateEdit5: TcxDBDateEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxGroupBox4: TcxGroupBox;
    ConstituentsListBox: TcxListBox;
    ConstituentPopupMenu: TPopupMenu;
    ConstituentIndividualPopUpMenuItem: TMenuItem;
    cxGroupBox2: TcxGroupBox;
    AddConstituentButton: TcxButton;
    cxGroupBox9: TcxGroupBox;
    RepresentativesListBox: TcxListBox;
    cxGroupBox10: TcxGroupBox;
    AddRepresentativeButton: TcxButton;
    RepresentativesPopupMenu: TPopupMenu;
    RepresentativesIndividualPopUpMenuItem: TMenuItem;
    RemoveRepresentativeButton: TcxButton;
    CancelButton: TcxButton;
    PostButton: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ConstituentIndividualPopUpMenuItemClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RepresentativesIndividualPopUpMenuItemClick(Sender: TObject);
    procedure RemoveRepresentativeButtonClick(Sender: TObject);
    procedure PostButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure gotConstituentIndividualID(AID: Variant);
    procedure gotRepresentativeIndividualID(AID: Variant);
    function saveAuthorization: boolean;
    function appendAuthorization: boolean;
  end;

var
  fmAuthorization: TfmAuthorization;

implementation
uses ufmIndividualSelector;
{$R *.dfm}

function TfmAuthorization.appendAuthorization: boolean;
begin
  dmAuthorization.AuthorizationsDataSet.Close;
  dmAuthorization.AuthorizationsDataSet.Transaction := RemoteDataModule.createTransaction;
  dmAuthorization.AuthorizationsDataSet.Transaction.StartTransaction;
  dmAuthorization.AuthorizationsDataSet.Open;
  dmAuthorization.AuthorizationsDataSet.Append;
end;

procedure TfmAuthorization.ConstituentIndividualPopUpMenuItemClick(
  Sender: TObject);
begin
  with TfmIndividualSelector.Create(self) do
  begin
    Show;
    registerSelectorCallback(gotConstituentIndividualID);
  end;
end;

procedure TfmAuthorization.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmAuthorization.FormCreate(Sender: TObject);
begin
  dmAuthorization := TdmAuthorization.Create(self);
end;

procedure TfmAuthorization.FormDestroy(Sender: TObject);
begin
  dmAuthorization.Free;
end;

procedure TfmAuthorization.gotConstituentIndividualID(AID: Variant);
var
  ConstituentID: TIdStorage;
begin
  ConstituentsListBox.Items.Clear;
  dmAuthorization.IndividualConstituentsDataSet.Close;
  dmAuthorization.IndividualConstituentsDataSet.ParamByName('ID').Value := AID;
  dmAuthorization.IndividualConstituentsDataSet.Open;

  ConstituentID := TIdStorage.Create(AID);

  ConstituentsListBox.Items.AddObject(Format('%s %s %s', [dmAuthorization.IndividualConstituentsDataSetSURNAME.asString, dmAuthorization.IndividualConstituentsDataSetNAME.asString, dmAuthorization.IndividualConstituentsDataSetMIDDLE.asString]), ConstituentID);

  dmAuthorization.IndividualConstituentsDataSet.Close;
end;

procedure TfmAuthorization.gotRepresentativeIndividualID(AID: Variant);
var
  RepresentativeID: TIdStorage;
begin
  dmAuthorization.IndividualRepresentativesDataSet.Close;
  dmAuthorization.IndividualRepresentativesDataSet.ParamByName('ID').Value := AID;
  dmAuthorization.IndividualRepresentativesDataSet.Open;

  RepresentativeID := TIdStorage.Create(AID);

  RepresentativesListBox.Items.AddObject(Format('%s %s %s', [dmAuthorization.IndividualRepresentativesDataSetSURNAME.asString, dmAuthorization.IndividualRepresentativesDataSetNAME.asString, dmAuthorization.IndividualRepresentativesDataSetMIDDLE.asString]), RepresentativeID);

  dmAuthorization.IndividualRepresentativesDataSet.Close;
end;

procedure TfmAuthorization.PostButtonClick(Sender: TObject);
begin
  saveAuthorization;
  dmAuthorization.AuthorizationsDataSet.Close;
  Close;
end;

procedure TfmAuthorization.RemoveRepresentativeButtonClick(Sender: TObject);
begin
  if RepresentativesListBox.ItemIndex <0 then Exit;

  TIdStorage(RepresentativesListBox.Items.Objects[RepresentativesListBox.ItemIndex]).Free;
  RepresentativesListBox.Items.Delete(RepresentativesListBox.ItemIndex);
  if RepresentativesListBox.ItemIndex >0 then RepresentativesListBox.ItemIndex := RepresentativesListBox.ItemIndex -1;
end;

procedure TfmAuthorization.RepresentativesIndividualPopUpMenuItemClick(
  Sender: TObject);
begin
  with TfmIndividualSelector.Create(self) do
  begin
    Show;
    registerSelectorCallback(gotRepresentativeIndividualID);
  end;
end;

function TfmAuthorization.saveAuthorization: boolean;
begin
  try
    dmAuthorization.AddConstituentDataSet.Close;
    dmAuthorization.AddConstituentDataSet.Transaction := dmAuthorization.AuthorizationsDataSet.Transaction;
    dmAuthorization.AddConstituentDataSet.ParamByName('AUTHORIZATION_ID').AsString := dmAuthorization.AuthorizationsDataSetID.AsString;
    dmAuthorization.AddConstituentDataSet.ParamByName('CONSTITUENT_ID').AsString := '1';

    dmAuthorization.AddConstituentDataSet.Open;
    dmAuthorization.AddConstituentDataSet.Append;
    dmAuthorization.AddConstituentDataSet.Post;
    dmAuthorization.AddConstituentDataSet.Close;

    dmAuthorization.AddRepresentativeDataSet.Close;
    dmAuthorization.AddRepresentativeDataSet.Transaction := dmAuthorization.AuthorizationsDataSet.Transaction;
    dmAuthorization.AddRepresentativeDataSet.ParamByName('AUTHORIZATION_ID').AsString := dmAuthorization.AuthorizationsDataSetID.AsString;
    dmAuthorization.AddRepresentativeDataSet.ParamByName('REPRESENTATIVE_ID').AsString := '1';
    dmAuthorization.AddRepresentativeDataSet.Open;
    dmAuthorization.AddRepresentativeDataSet.Append;
    dmAuthorization.AddRepresentativeDataSet.Post;
    dmAuthorization.AddRepresentativeDataSet.Close;

    dmAuthorization.AuthorizationsDataSet.Post;
  finally
    dmAuthorization.AuthorizationsDataSet.Transaction.Commit;

    dmAuthorization.AuthorizationsDataSet.Close;
    dmAuthorization.AddConstituentDataSet.Close;
    dmAuthorization.AddRepresentativeDataSet.Close;
    dmAuthorization.AuthorizationsDataSet.Transaction.Free;
    dmAuthorization.AuthorizationsDataSet.Transaction := RemoteDataModule.FIBTransaction;
    dmAuthorization.AddConstituentDataSet.Transaction := RemoteDataModule.FIBTransaction;
    dmAuthorization.AddRepresentativeDataSet.Transaction := RemoteDataModule.FIBTransaction;
  end;
end;

end.
