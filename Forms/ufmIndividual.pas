unit ufmIndividual;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  ufmMain, uUtils, uRemoteDM;

type
  TfmIndividual = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmIndividual: TfmIndividual;

implementation

{$R *.dfm}

procedure TfmIndividual.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
