unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VclTee.TeEngine,
  VclTee.Series, Vcl.StdCtrls, Vcl.ExtCtrls, VclTee.TeeProcs, VclTee.Chart;

type
  TForm1 = class(TForm)
    Chart1: TChart;
    Button1: TButton;
    Label1: TLabel;
    Series1: TLineSeries;
    Label2: TLabel;
    Chart2: TChart;
    Chart3: TChart;
    Chart4: TChart;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    Chart5: TChart;
    Chart6: TChart;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Series4: TPointSeries;
    Series5: TPointSeries;
    Series6: TPointSeries;
    ComboBox6: TComboBox;
    Edit1: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  flag: boolean;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  x0, y0, z0, s, lam, tf, dt, b, t, x, y, z: real;
begin
  x0 := strtofloat(ComboBox1.Text);
  y0 := strtofloat(ComboBox2.Text);
  z0 := strtofloat(ComboBox3.Text);
  s := strtofloat(ComboBox4.Text);
  lam := strtofloat(ComboBox5.Text);
  tf := strtofloat(ComboBox6.Text);
  dt := strtofloat(Edit1.Text);
  b := 8 / 3;

  Series1.Clear;
  Series2.Clear;
  Series3.Clear;
  Series4.Clear;
  Series5.Clear;
  Series6.Clear;

  t := 0;
  x := x0;
  y := y0;
  z := z0;
  flag := True;

  Series1.AddXY(t, x);
  Series2.AddXY(t, y);
  Series3.AddXY(t, z);
  Series4.AddXY(y, x);
  Series5.AddXY(z, x);
  Series6.AddXY(z, y);

  while (t < tf) and flag do
  begin
    x := x + (s * y - s * x) * dt;
    y := y + (-x * z + lam * x - y) * dt;
    z := z + (x * y - b * z) * dt;
    t := t + dt;

    Series1.AddXY(t, x);
    Series2.AddXY(t, y);
    Series3.AddXY(t, z);
    Series4.AddXY(y, x);
    Series5.AddXY(z, x);
    Series6.AddXY(z, y);

    Application.ProcessMessages;
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  flag := False;
end;

end.
