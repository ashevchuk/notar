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
    cxGroupBox8: TcxGroupBox;
    NotaryListBox: TcxListBox;
    cxGroupBox11: TcxGroupBox;
    AddNotaryButton: TcxButton;
    NotaryPopupMenu: TPopupMenu;
    N1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ConstituentIndividualPopUpMenuItemClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RepresentativesIndividualPopUpMenuItemClick(Sender: TObject);
    procedure RemoveRepresentativeButtonClick(Sender: TObject);
    procedure PostButtonClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure gotConstituentIndividualID(AID: Variant);
    procedure gotRepresentativeIndividualID(AID: Variant);
    procedure gotNotaryID(AID: Variant);
    function saveAuthorization: boolean;
    function appendAuthorization: boolean;
  end;

var
  fmAuthorization: TfmAuthorization;

implementation
uses ufmIndividualSelector, ufmNotarySelector, udmNotary;
{$R *.dfm}

function TfmAuthorization.appendAuthorization: boolean;
begin
  dmAuthorization.AuthorizationsDataSet.Close;
  dmAuthorization.AuthorizationsDataSet.Transaction := RemoteDataModule.createTransaction;
  dmAuthorization.AuthorizationsDataSet.Transaction.StartTransaction;
  dmAuthorization.AuthorizationsDataSet.Open;
  dmAuthorization.AuthorizationsDataSet.Append;
end;

procedure TfmAuthorization.CancelButtonClick(Sender: TObject);
begin
  dmAuthorization.AuthorizationsDataSet.Cancel;
  Close;
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

procedure TfmAuthorization.gotNotaryID(AID: Variant);
var
  NotaryID: TIdStorage;
begin
  NotaryListBox.Items.Clear;

  dmAuthorization.NotaryDataSet.Close;
  dmAuthorization.NotaryDataSet.ParamByName('ID').Value := AID;
  dmAuthorization.NotaryDataSet.Open;

  NotaryID := TIdStorage.Create(AID);

  NotaryListBox.Items.AddObject(Format('%s %s %s', [dmAuthorization.NotaryDataSetSURNAME.asString, dmAuthorization.NotaryDataSetNAME.asString, dmAuthorization.NotaryDataSetMIDDLE.asString]), NotaryID);

  dmAuthorization.NotaryDataSet.Close;
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

procedure TfmAuthorization.N1Click(Sender: TObject);
begin
  with TfmNotarySelector.Create(self) do
  begin
    Show;
    registerSelectorCallback(gotNotaryID);
  end;
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
var
  AuthorizationID: string;
  iList: byte;
begin
  if ConstituentsListBox.Items.Count = 0 then Exit;
  if RepresentativesListBox.Items.Count = 0 then Exit;
  if NotaryListBox.Items.Count = 0 then Exit;

  try
    dmAuthorization.AuthorizationsDataSet.Post;
    AuthorizationID := dmAuthorization.AuthorizationsDataSetID.AsString;
    dmAuthorization.AuthorizationsDataSet.Transaction.Commit;

    dmAuthorization.AddNotaryDataSet.Close;
    dmAuthorization.AddNotaryDataSet.Open;

    for iList := 0 to NotaryListBox.Items.Count -1 do
    begin
      dmAuthorization.AddNotaryDataSet.Append;
      dmAuthorization.AddNotaryDataSetAUTHORIZATION_ID.AsString := AuthorizationID;
      dmAuthorization.AddNotaryDataSetNOTARY_ID.Value := TIdStorage(NotaryListBox.Items.Objects[iList]).ID;
      dmAuthorization.AddNotaryDataSet.Post;
      TIdStorage(NotaryListBox.Items.Objects[iList]).Free;
    end;

    dmAuthorization.AddNotaryDataSet.Close;

    dmAuthorization.AddConstituentDataSet.Close;
    dmAuthorization.AddConstituentDataSet.Open;

    for iList := 0 to ConstituentsListBox.Items.Count -1 do
    begin
      dmAuthorization.AddConstituentDataSet.Append;
      dmAuthorization.AddConstituentDataSetAUTHORIZATION_ID.AsString := AuthorizationID;
      dmAuthorization.AddConstituentDataSetCONSTITUENT_ID.Value := TIdStorage(ConstituentsListBox.Items.Objects[iList]).ID;
      dmAuthorization.AddConstituentDataSet.Post;
      TIdStorage(ConstituentsListBox.Items.Objects[iList]).Free;
    end;

    dmAuthorization.AddConstituentDataSet.Close;

    dmAuthorization.AddRepresentativeDataSet.Close;
    dmAuthorization.AddRepresentativeDataSet.Open;

    for iList := 0 to RepresentativesListBox.Items.Count -1 do
    begin
      dmAuthorization.AddRepresentativeDataSet.Append;
      dmAuthorization.AddRepresentativeDataSetAUTHORIZATION_ID.AsString := AuthorizationID;
      dmAuthorization.AddRepresentativeDataSetREPRESENTATIVE_ID.AsString := TIdStorage(RepresentativesListBox.Items.Objects[iList]).ID;
      dmAuthorization.AddRepresentativeDataSet.Post;
      TIdStorage(RepresentativesListBox.Items.Objects[iList]).Free;
    end;

    ConstituentsListBox.Items.Clear;
    RepresentativesListBox.Items.Clear;

    dmAuthorization.AddRepresentativeDataSet.Close;

  finally
 {   dmAuthorization.AddConstituentDataSet.Transaction.Commit;
    dmAuthorization.AddRepresentativeDataSet.Transaction.Commit;   }

    dmAuthorization.AuthorizationsDataSet.Close;
    dmAuthorization.AddConstituentDataSet.Close;
    dmAuthorization.AddRepresentativeDataSet.Close;
    dmAuthorization.AddNotaryDataSet.Close;

    dmAuthorization.AuthorizationsDataSet.Transaction.Free;
    dmAuthorization.AuthorizationsDataSet.Transaction := RemoteDataModule.FIBTransaction;
  end;
end;

end.
