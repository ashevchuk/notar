{$FORM TForm2, Unit2.sfm}

uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, 
  FIBDatabase, DB, FIBQuery, FIBDataSet;

procedure Form2_1Create(Sender: TObject);
begin
  FIBDataSet1.Database := RemoteDataModule.getDatabase;
  FIBDataSet1.Transaction := RemoteDataModule.getTransaction;
  FIBDataSet1.Open;     
end;

begin
end;
