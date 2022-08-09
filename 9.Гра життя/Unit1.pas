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
    Series1: TPointSeries;
    Button1: TButton;
    Button2: TButton;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  flag: Boolean;
  a, a1: array [1 .. 40, 1 .. 40] of Integer;
  n, s: Integer;

implementation

{$R *.dfm}

function BC(ind: Integer): Integer;
begin
  BC := ind;
  if ind < 1 then
    BC := ind + n;

  if ind > n then
    BC := ind - n;
end;

procedure rand;
var
  i, j: Integer;
begin
  for i := 1 to n do
    for j := 1 to n do
    begin
      if Random < 0.5 then
        a[i, j] := 1
      else
        a[i, j] := 0;
    end;
end;

procedure bloc;
var
  i, j: Integer;
begin
  for i := 1 to n do
    for j := 1 to n do
    begin
      a[i, j] := 0;
    end;

  a[20, 20] := 1;
  a[20, 21] := 1;
  a[21, 21] := 1;
  a[21, 20] := 1;
end;

procedure strip;
var
  i, j: Integer;
begin
  for i := 1 to n do
    for j := 1 to n do
    begin
      a[i, j] := 0;
    end;

  a[20, 20] := 1;
  a[20, 21] := 1;
  a[20, 22] := 1;
end;

procedure plan;
var
  i, j: Integer;
begin
  for i := 1 to n do
    for j := 1 to n do
    begin
      a[i, j] := 0;
    end;

  a[20, 20] := 1;
  a[20, 21] := 1;
  a[20, 22] := 1;
  a[21, 20] := 1;
  a[22, 21] := 1;
end;

procedure garmat;
var
  i, j: Integer;
begin
  for i := 1 to n do
    for j := 1 to n do
    begin
      a[i, j] := 0;
    end;

  a[5, 20] := 1;
  a[6, 20] := 1;
  a[5, 21] := 1;
  a[6, 21] := 1;

  a[14, 19] := 1;
  a[14, 20] := 1;
  a[14, 21] := 1;

  a[15, 22] := 1;
  a[15, 18] := 1;

  a[16, 23] := 1;
  a[16, 17] := 1;
  a[17, 23] := 1;
  a[17, 17] := 1;
  a[18, 20] := 1;

  a[19, 22] := 1;
  a[19, 18] := 1;

  a[20, 19] := 1;
  a[20, 20] := 1;
  a[20, 21] := 1;

  a[21, 20] := 1;

  a[23, 21] := 1;
  a[23, 22] := 1;
  a[23, 23] := 1;
  a[24, 21] := 1;
  a[24, 22] := 1;
  a[24, 23] := 1;

  a[25, 20] := 1;
  a[25, 24] := 1;

  a[27, 20] := 1;
  a[27, 24] := 1;
  a[27, 19] := 1;
  a[27, 25] := 1;

  a[37, 22] := 1;
  a[38, 22] := 1;
  a[37, 23] := 1;
  a[38, 23] := 1;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i, j: Integer;
begin
  flag := True;

  Series1.Clear;

  n := 40;

  case RadioGroup1.itemIndex of
    0:  rand;
    1:  bloc;
    2:  strip;
    3:  plan;
    4:  garmat;
  end;

  a1 := a;

  for i := 1 to n do
    for j := 1 to n do
    begin
      if a[i, j] = 0 then
        Series1.AddXY(i, j, '', clWhite)
      else
        Series1.AddXY(i, j, '', clBlack);
    end;

  while flag do
  begin
    for i := 1 to n do
      for j := 1 to n do
      begin
        s := 0;

        s := a[BC(i - 1), BC(j)] + a[BC(i + 1), BC(j)] + a[BC(i), BC(j - 1)] +
          a[BC(i), BC(j + 1)] + a[BC(i - 1), BC(j - 1)] + a[BC(i + 1), BC(j + 1)
          ] + a[BC(i + 1), BC(j - 1)] + a[BC(i - 1), BC(j + 1)];

        if (a[i, j] = 1) and ((s = 2) or (s = 3)) then
          a1[i, j] := 1;

        if (a[i, j] = 1) and ((s = 0) or (s = 1)) then
          a1[i, j] := 0;

        if (a[i, j] = 1) and ((s >= 4)) then
          a1[i, j] := 0;

        if (a[i, j] = 0) and ((s = 3)) then
          a1[i, j] := 1;
      end;

    a := a1;

    for i := 1 to n do
      for j := 1 to n do
      begin
        if a[i, j] = 0 then
          Series1.AddXY(i, j, '', clWhite)
        else
          Series1.AddXY(i, j, '', clBlack);
      end;

    Application.ProcessMessages;
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  flag := False;
end;

end.
