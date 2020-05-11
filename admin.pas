unit admin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,giris, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm2 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
   uses adminekle,admindüzenle,adminara;
{$R *.dfm}



procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
form4.show; form4.ADOTable1.Insert;
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
form5.ADOTable1.Edit;form5.ADOTable1.Active:=false;form5.ADOTable1.Active:=true;form5.Show;
end;

procedure TForm2.SpeedButton3Click(Sender: TObject);
begin
form6.ADOTable1.Active:=false;form6.ADOTable1.Active:=true;form6.Show;
end;

procedure TForm2.SpeedButton4Click(Sender: TObject);
begin
form1.Show;
form2.Close;
form1.Edit1.Text:='';
 form1.Edit2.Text:='';
end;

procedure TForm2.SpeedButton5Click(Sender: TObject);
var
mesaj:word;
begin
mesaj:=Application.MessageBox('Cýkmak istediðinize emin misiniz?','Cýkýs!',mb_yesno);
if mesaj=mryes then Application.Terminate;
end;

end.
