{$FORM TForm2, Unit2.sfm}

uses
  Classes, Graphics, Controls, Forms, Dialogs, StdCtrls;

procedure Button2Click(Sender: TObject);
begin
  Close;
end;

procedure Button1Click(Sender: TObject);
begin
  Label1.Caption := Edit1.Text;
end;

procedure Form2_6Close(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

begin
end;
