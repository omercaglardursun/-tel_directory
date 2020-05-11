unit adminekle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB,admin, Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ComCtrls;

type
  TForm4 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBComboBox1: TDBComboBox;
    SpeedButton3: TSpeedButton;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label10: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.SpeedButton1Click(Sender: TObject);
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
showmessage(inttostr(sayac)+'  sýra numarasýna kaydedildi...');
label10.Caption:='Toplam Kayýt Miktarý:'+inttostr(sayac);
end;


procedure TForm4.SpeedButton3Click(Sender: TObject);
var
mesaj:word;
begin
mesaj:=Application.MessageBox('Cýkmak istediðinize emin misiniz?','Cýkýs!',mb_yesno);
if mesaj=mryes then Application.Terminate;
end;

procedure TForm4.SpeedButton4Click(Sender: TObject);
var sayac:Integer;
begin
adotable1.first;
    DBEdit2.Enabled:=true;
    DBEdit3.Enabled:=true;
    DBEdit5.Enabled:=true;
    DBEdit6.Enabled:=true;
    DBEdit7.Enabled:=true;
    DBEdit8.Enabled:=true;
    DBEdit9.Enabled:=true;
    DBEdit1.Enabled:=true;
    Label1.Enabled:=true;
    Label2.Enabled:=true;
    Label3.Enabled:=true;
    Label4.Enabled:=true;
    Label5.Enabled:=true;
    Label6.Enabled:=true;
    Label7.Enabled:=true;
    Label8.Enabled:=true;
    label9.Enabled:=true;
    dbcombobox1.Enabled:=true;
  sayac:=0;
  repeat
     inc(sayac);
     Adotable1.Next;
until (Adotable1.Eof);
label10.Caption:='Toplam Kayýt :'+inttostr(sayac);
adotable1.Last;
adotable1.Edit;
adotable1.Insert;
end;

procedure TForm4.SpeedButton5Click(Sender: TObject);
begin
form2.Show;
form4.Close;
end;

end.
