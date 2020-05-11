unit admindüzenle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,admin, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.Mask;

type
  TForm5 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBComboBox1: TDBComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Label10: TLabel;
    SpeedButton9: TSpeedButton;
    DBEdit4: TDBEdit;
    Label12: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton10: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.FormCreate(Sender: TObject);
var sayac:Integer;
begin
  sayac:=0;
  Adotable1.First;
  repeat
     inc(sayac);
     Adotable1.Next;
until (Adotable1.Eof);
label10.Caption:='Toplam Kayýt Miktarý:'+inttostr(sayac);
end;


procedure TForm5.SpeedButton10Click(Sender: TObject);
begin
form2.Show;
form5.Close;
end;

procedure TForm5.SpeedButton1Click(Sender: TObject);
var sayac:Integer;
begin
adotable1.Post;
adotable1.Active:=false;
adotable1.Active:=true;
sayac:=0;
  Adotable1.First;
  repeat
     inc(sayac);
     Adotable1.Next;
until (Adotable1.Eof);
showmessage('düzenlendi ve kaydedildi...');
label10.Caption:='Toplam Kayýt Miktarý:'+inttostr(sayac);
adotable1.first;
end;

procedure TForm5.SpeedButton2Click(Sender: TObject);
var
mesaj:word;
begin
mesaj:=Application.MessageBox('Cýkmak istediðinize emin misiniz?','Cýkýs!',mb_yesno);
if mesaj=mryes then Application.Terminate;
end;

procedure TForm5.SpeedButton3Click(Sender: TObject);
begin
adotable1.Next;
end;

procedure TForm5.SpeedButton4Click(Sender: TObject);
begin
adotable1.Prior;
end;

procedure TForm5.SpeedButton5Click(Sender: TObject);
begin
adotable1.last;
end;

procedure TForm5.SpeedButton6Click(Sender: TObject);
begin
adotable1.first;
end;
procedure TForm5.SpeedButton9Click(Sender: TObject);
var
sayac:Integer;
mesaj:word;
begin
mesaj:=Application.MessageBox('Emin misin?','DÝKKAT!',mb_yesno);
if mesaj=mryes then adotable1.Delete;
  sayac:=0;
  Adotable1.First;
  repeat
     inc(sayac);
     Adotable1.Next;
until (Adotable1.Eof);
label10.Caption:='Toplam Kayýt Miktarý:'+inttostr(sayac);

end;

end.
