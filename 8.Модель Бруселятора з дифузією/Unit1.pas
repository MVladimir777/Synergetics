unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Vcl.StdCtrls,
  VclTee.TeEngine, VclTee.Series, Vcl.ExtCtrls, VclTee.TeeProcs, VclTee.Chart;

type
  TForm1 = class(TForm)
    Chart1: TChart;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Chart2: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
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
  X, Xn, Y, Yn: array of EXTENDED;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  A, B, time, dt, t, left, right, d1, d2, sigm, dx: Real;
  n, i: Integer;
begin
  Randomize;

  flag := True;

  Series1.Clear;
  Series2.Clear;

  A := StrToFloat(Edit1.Text);
  B := StrToFloat(Edit2.Text);
  time := StrToFloat(Edit3.Text);
  dt := StrToFloat(Edit4.Text);
  left := StrToFloat(edit5.Text);
  right := StrToFloat(edit6.Text);
  n := StrToInt(edit7.Text);
  d1 := StrToFloat(edit8.Text);
  d2 := StrToFloat(edit9.Text);
  sigm := 0.2;

  Setlength(X, n);
  Setlength(Xn, n);
  Setlength(Y, n);
  Setlength(Yn, n);
  dx := (right - left) / n;

  for i := 0 to n do
  begin
    X[i] := A * (1 + sigm * (random - 0.5));
    Y[i] := B / A * (1 + sigm * (random - 0.5));
  end;

  X[0] := A;
  X[n] := A;
  Y[0] := B / A;
  Y[n] := B / A;

  Xn := X;
  Yn := Y;
  t := 0;

  while (t < time) and flag do      //
  begin
    for i := 1 to n-1 do
    begin
      Xn[i] := X[i] + (A - (B + 1) * X[i] + X[i] * X[i] * Y[i] + d1 * (X[i - 1] - 2 * X[i] + X[i + 1]) / sqr(dx)) * dt;
      Yn[i] := Y[i] + (B * X[i] - X[i] * X[i] * Y[i] + d2 * (Y[i - 1] - 2 * Y[i] + Y[i + 1]) / sqr(dx)) * dt;
    end;

    Xn[0] := A;
    Xn[n] := A;
    Yn[0] := B / A;
    Yn[n] := B / A;
    X := Xn;
    Y := Yn;

    Series1.Clear;
    Series2.Clear;

    for i := 0 to n do
    begin
      Series1.AddXY(left + i * dx, X[i]);
      Series2.AddXY(left + i * dx, Y[i]);
    end;

    Application.ProcessMessages;
    t := t + dt;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  flag := False;
end;

end.
