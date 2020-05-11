unit misafir;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,giris, Data.DB, Data.Win.ADODB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Buttons, QuickRpt, QRCtrls,System.StrUtils, Vcl.Imaging.pngimage;

type
  TForm3 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Edit1: TEdit;
    Label10: TLabel;
    Label11: TLabel;
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
    SpeedButton2: TSpeedButton;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QuickRep2: TQuickRep;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    DetailBand2: TQRBand;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton10: TSpeedButton;
    Button1: TButton;
    Image1: TImage;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure ADOTable1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.ADOTable1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
if radiobutton1.Checked=true then if ansiuppercase(edit1.Text)=leftstr(ansiuppercase(adotable1.FieldByName('Ad').AsString),length(edit1.Text)) then accept:=true else accept:=false;
if radiobutton2.Checked=true then if ansiuppercase(edit1.Text)=leftstr(ansiuppercase(adotable1.FieldByName('Telefon').AsString),length(edit1.Text)) then accept:=true else accept:=false;
if radiobutton3.Checked=true then  if ansiuppercase(edit1.Text)=leftstr(ansiuppercase(inttostr(adotable1.FieldByName('ID').AsLargeInt)),length(edit1.Text)) then accept:=true else accept:=false;


end;

procedure TForm3.Button1Click(Sender: TObject);
begin
adotable1.Filtered:=false;
  if edit1.Text<>'' then adotable1.Filtered:=true else adotable1.Filtered:=false;
end;

procedure TForm3.FormCreate(Sender: TObject);
var sayac:Integer;
begin
  Adotable1.First;
  sayac:=0;
  repeat
     inc(sayac);
     Adotable1.Next;
until (Adotable1.Eof);
label10.Caption:='Toplam Kayýt :'+inttostr(sayac);
Adotable1.First;
end;

procedure TForm3.RadioButton1Click(Sender: TObject);
begin
  edit1.Enabled:=True;
  speedbutton10.Enabled:=true;
end;
procedure TForm3.RadioButton2Click(Sender: TObject);
begin
edit1.Enabled:=True;
  speedbutton10.Enabled:=true;
end;
procedure TForm3.RadioButton3Click(Sender: TObject);
begin
edit1.Enabled:=True;
  speedbutton10.Enabled:=true;
end;

procedure TForm3.SpeedButton10Click(Sender: TObject);
begin
edit1.Text:='';
end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
    quickrep1.preview;
end;
procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
quickrep2.preview;
end;

procedure TForm3.SpeedButton3Click(Sender: TObject);
begin
   Adotable1.First;
end;

procedure TForm3.SpeedButton4Click(Sender: TObject);
begin
Adotable1.next;
end;

procedure TForm3.SpeedButton5Click(Sender: TObject);
begin
adotable1.Prior;
end;

procedure TForm3.SpeedButton6Click(Sender: TObject);
begin
adotable1.Last;
end;

procedure TForm3.SpeedButton7Click(Sender: TObject);
begin
form1.Show;
form3.Close;
end;

procedure TForm3.SpeedButton8Click(Sender: TObject);
var
mesaj:word;
begin
mesaj:=Application.MessageBox('Cýkmak istediðinize emin misiniz?','Cýkýs!',mb_yesno);
if mesaj=mryes then Application.Terminate;
end;

end.
