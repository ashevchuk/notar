unit uMVCAuthorization;

interface

uses
  System.SysUtils, System.Classes,
  ufmMain, uUtils, uRemoteDM, uTypes;

type
  TMVCAuthorization = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MVCAuthorization: TMVCAuthorization;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
