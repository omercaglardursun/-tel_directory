program Kayýt;

uses
  Vcl.Forms,
  admin in 'admin.pas' {Form2},
  misafir in 'misafir.pas' {Form3},
  giris in 'giris.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles,
  adminekle in 'adminekle.pas' {Form4},
  admindüzenle in 'admindüzenle.pas' {Form5},
  adminara in 'adminara.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10');
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
