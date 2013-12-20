unit uLicenseDM;

interface

uses
  System.SysUtils, System.Classes, OnGuard, OgUtil, IniFiles;

type
  TLicenseDataModule = class(TDataModule)
    OgDateCode: TOgDateCode;
    procedure DataModuleCreate(Sender: TObject);
    procedure OgDateCodeChecked(Sender: TObject; Status: TCodeStatus);
    procedure OgDateCodeGetCode(Sender: TObject; var Code: TCode);
    procedure OgDateCodeGetKey(Sender: TObject; var Key: TKey);
  private
    { Private declarations }
  public
    CurrentDir : string;
    CKey : TKey;
    CCode : TCode;
    IsRegistered : boolean;
    ExpireDate : TDateTime;
    procedure ReadRegistration;
    function CheckLicense: Boolean;
  end;

var
  LicenseDataModule: TLicenseDataModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TLicenseDataModule.CheckLicense: Boolean;
begin
  ReadRegistration;
  OgDateCode.CheckCode(true);
end;

procedure TLicenseDataModule.DataModuleCreate(Sender: TObject);
var
  PathLength       : integer;
begin
  IsRegistered := False;
  CurrentDir := ExtractFilePath(ParamStr(0));
  PathLength := Length(CurrentDir);
  if (PathLength > 3) and (CurrentDir[PathLength] <> '\') then CurrentDir := CurrentDir + '\';
end;

procedure TLicenseDataModule.OgDateCodeChecked(Sender: TObject; Status: TCodeStatus);
var
 S:String;
begin
  case Status of
    ogValidCode   : begin
                      IsRegistered := True;
                      ExpireDate := OgDateCode.GetValue;
                      Exit;
                    end;
    ogPastEndDate : begin
                      IsRegistered := False;
                      ExpireDate := OgDateCode.GetValue;
                      Exit;
                    end;
    ogInvalidCode : IsRegistered := False;
  end;
end;

procedure TLicenseDataModule.OgDateCodeGetCode(Sender: TObject; var Code: TCode);
var
  IniFile : TIniFile;
  S       : string;
  SD,
  ED      : TDateTime;
begin
 Code := CCode
end;

procedure TLicenseDataModule.OgDateCodeGetKey(Sender: TObject; var Key: TKey);
begin
 Key := CKey;
end;

procedure TLicenseDataModule.ReadRegistration;
var
  IniFile : TIniFile;
  S  : string;
begin
  IniFile := TIniFile.Create(CurrentDir + 'Notar.key');
  try
    {try to read release code}
    S := IniFile.ReadString('Codes', 'Code', '');
    HexToBuffer(S, CCode, SizeOf(CCode));
    S := IniFile.ReadString('Regs', 'Reg', '2544E2EF35925E50C1E85BB81A7179B3');
    HexToBuffer(S, CKey, SizeOf(CKey))
  finally
    IniFile.Free;
  end;
end;

end.
