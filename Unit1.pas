unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, VCLTee.TeEngine,
  Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.Series, Vcl.ToolWin,
  Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Chart1: TChart;
    Series1: TLineSeries;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  // amp  : amplitudo A
  // freq : frekuensi sinyal f (Hz)
  // y    : nilai sinyal sinus/kosinus y[n]
  // fs   : frekuensi sampling (Hz)
  amp, freq, y, fs: double;
  // i : indeks sampel n
  // N : jumlah sampel
  i, N: integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  //amp := 5;
  //freq := 1;
  //N := 100
  //fs := 100;

  amp := strtofloat (Edit1.text);
  freq := strtofloat (Edit2.text);
  N := strtoint (Edit3.text);
  fs := strtofloat (Edit4.text);

  Series1.clear;
  for i:= 0 to N do
    begin
    // t adalah analog,
    // jadi diganti n/fs untuk menghasilkan sinyal digital
    // fs adalah frekuensi sampling
    // rumus sinyal sinus dituliskan :
    // Sinyal sinus diskrit: y[n] = A * sin(2 * pi * f * n / fs)
    // Sinyal kosinus diskrit: y[n] = A * cos(2 * pi * f * n / fs)
      case ComboBox1.ItemIndex of
        0: y := amp * sin(2 * pi * freq * i / fs );
        1: y := amp * cos(2 * pi * freq * i / fs );
      end;
      Series1.addxy(i, y);
    end;


end;

end.
