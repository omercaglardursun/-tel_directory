unit adminara;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,admin, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB,
  QRCtrls, QuickRpt, Vcl.ExtCtrls,System.StrUtils, Vcl.Imaging.pngimage;

type
  TForm6 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit4: TDBEdit;
    Label11: TLabel;
    SpeedButton8: TSpeedButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
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
    ColumnHeaderBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel11: TQRLabel;
    DetailBand2: TQRBand;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    Button1: TButton;
    Image1: TImage;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton9: TSpeedButton;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure ADOTable1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.ADOTable1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
if radiobutton1.Checked=true then if ansiuppercase(edit1.Text)=leftstr(ansiuppercase(adotable1.FieldByName('Ad').AsString),length(edit1.Text)) then accept:=true else accept:=false;
if radiobutton2.Checked=true then if ansiuppercase(edit1.Text)=leftstr(ansiuppercase(adotable1.FieldByName('Telefon').AsString),length(edit1.Text)) then accept:=true else accept:=false;
if radiobutton3.Checked=true then  if ansiuppercase(edit1.Text)=leftstr(ansiuppercase(inttostr(adotable1.FieldByName('ID').AsLargeInt)),length(edit1.Text)) then accept:=true else accept:=false;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
adotable1.Filtered:=false;
  if edit1.Text<>'' then adotable1.Filtered:=true else adotable1.Filtered:=false;
end;

procedure TForm6.RadioButton1Click(Sender: TObject);
begin
   edit1.Enabled:=true;
   speedbutton8.Enabled:=true;
   edit1.Text:='';
end;

procedure TForm6.RadioButton2Click(Sender: TObject);
begin
   edit1.Enabled:=true;
   speedbutton8.Enabled:=true;
   edit1.Text:='';
end;

procedure TForm6.RadioButton3Click(Sender: TObject);
begin
   edit1.Enabled:=true;
   speedbutton8.Enabled:=true;
   edit1.Text:='';
end;

procedure TForm6.SpeedButton1Click(Sender: TObject);
begin
form2.Show;
form6.Close;
end;

procedure TForm6.SpeedButton2Click(Sender: TObject);
var
mesaj:word;
begin
mesaj:=Application.MessageBox('Cýkmak istediðinize emin misiniz?','Cýkýs!',mb_yesno);
if mesaj=mryes then Application.Terminate;
end;

procedure TForm6.SpeedButton5Click(Sender: TObject);
begin
adotable1.Next;
end;

procedure TForm6.SpeedButton6Click(Sender: TObject);
begin
adotable1.Prior;
end;

procedure TForm6.SpeedButton7Click(Sender: TObject);
begin
adotable1.last;
end;

procedure TForm6.SpeedButton8Click(Sender: TObject);
begin
edit1.Text:='';
end;

procedure TForm6.SpeedButton9Click(Sender: TObject);
begin
adotable1.first;
end;

end.
