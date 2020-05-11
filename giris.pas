unit giris;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    Button1: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button2: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Timer1: TTimer;
    Timer2: TTimer;
    Image1: TImage;
    Image2: TImage;
    procedure Button1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
  uses admin,misafir;
{$R *.dfm}
procedure TForm1.Button1Click(Sender: TObject);
var a,b : String;
begin
  a:='omer';
  b:='1234';
if radiobutton1.Checked=true then
begin
  if (edit1.Text=a)and(edit2.Text=b)then begin form2.Show; form1.Visible:=false; end else showmessage('Yanlýs');
end;
  if radiobutton2.Checked=true then
begin
  form3.ADOTable1.Active:=false;form3.ADOTable1.Active:=true;form3.Show;
  form1.Visible:=false;
end;
 end;
procedure TForm1.Button2Click(Sender: TObject);
var
mesaj:word;
begin
mesaj:=Application.MessageBox('Cýkmak istediðinize emin misiniz?','Cýkýs!',mb_yesno);
if mesaj=mryes then Application.Terminate;
end;
procedure TForm1.RadioButton1Click(Sender: TObject);
begin
  label1.Caption:='';
  edit1.Visible:=true;
  edit2.Visible:=true;
  label2.Visible:=true;
  label3.Visible:=true;
end;
procedure TForm1.RadioButton2Click(Sender: TObject);
begin
  edit1.Visible:=false;
  edit2.Visible:=false;
  label2.Visible:=false;
  label3.Visible:=false;
label1.Caption:='Giriþi Týklayýnýz';
end;
procedure TForm1.Timer1Timer(Sender: TObject);
begin
label4.Caption:=timetostr(time);
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
label5.Caption:=datetostr(date);
end;

end.
