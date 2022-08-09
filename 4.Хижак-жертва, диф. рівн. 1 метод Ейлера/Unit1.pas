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
    Edit1: TEdit;
    Series1: TLineSeries;
    Label2: TLabel;
    Edit2: TEdit;
    Series2: TLineSeries;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Chart2: TChart;
    Series3: TPointSeries;
    Label9: TLabel;
    Label10: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  x, y, k1, k2, k3, k4, dt, t1, t: real;
begin
  x := strtofloat(Edit1.Text);
  y := strtofloat(Edit2.Text);
  k1 := strtofloat(Edit3.Text);
  k2 := strtofloat(Edit4.Text);
  k3 := strtofloat(Edit5.Text);
  k4 := strtofloat(Edit6.Text);
  t1 := strtofloat(Edit7.Text);
  dt := strtofloat(Edit8.Text);

  Series1.Clear;
  Series2.Clear;
  Series3.Clear;

  t := 0;
  while t < t1 do
  begin
    Series1.AddXY(t, x);
    Series2.AddXY(t, y);
    Series3.AddXY(y, x);

    x := x + (k1 * x + k2 * x * y) * dt;
    y := y + (k3 * y + k4 * x * y) * dt;
    t := t + dt;
  end;

  Edit9.Text := floattostr(-k3 / k4);
  Edit10.Text := floattostr(-k1 / k2);
end;

end.
