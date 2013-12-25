unit ufmAuthorization;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  ufmMain, uUtils, uRemoteDM, udmAuthorization,
  cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2007Blue,
  cxMemo, cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxMaskEdit, cxCalendar, cxLabel, cxGroupBox,
  cxCheckBox, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxListBox, dxBevel;

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
    cxGroupBox8: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    dxBevel1: TdxBevel;
    cxListBox1: TcxListBox;
    AddConstituentButton: TcxButton;
    ConstituentPopupMenu: TPopupMenu;
    ConstituentIndividualPopUpMenuItem: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ConstituentIndividualPopUpMenuItemClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAuthorization: TfmAuthorization;

implementation
uses ufmIndividualSelector;
{$R *.dfm}

procedure TfmAuthorization.ConstituentIndividualPopUpMenuItemClick(
  Sender: TObject);
begin
  fmIndividualSelector := TfmIndividualSelector.Create(self);
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

end.
