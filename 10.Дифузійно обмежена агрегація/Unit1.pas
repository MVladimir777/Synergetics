unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VclTee.TeEngine,
  VclTee.Series, Vcl.StdCtrls, Vcl.ExtCtrls, VclTee.TeeProcs, VclTee.Chart,
  VclTee.BubbleCh, Math, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.ToolWin;

type
  TForm1 = class(TForm)
    Chart1: TChart;
    Button1: TButton;
    Series1: TBubbleSeries;
    Button2: TButton;
    Chart2: TChart;
    Series2: TLineSeries;
    LabeledEdit1: TLabeledEdit;
    Series3: TLineSeries;
    Label1: TLabel;
    Edit1: TEdit;
    LabeledEdit2: TLabeledEdit;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    RadioGroup1: TRadioGroup;
    Panel1: TPanel;
    LabeledEdit3: TLabeledEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  flag, flag2: Boolean;
  a, b, c, d, h, s, v, rr, ang: Real;
  Rad, u, dr, m, mm, x, y, n, t, r: Integer;
  p, p1: array [-100 .. 100, -100 .. 100] of Integer;
  g: array [0 .. 100] of Integer;
  dx: array [0 .. 3] of Integer = (
    -1,
    0,
    1,
    0
  );
  dy: array [0 .. 3] of Integer = (
    0,
    -1,
    0,
    1
  );

implementation

{$R *.dfm}

// ???????? ???? ?????? ?? ??????
procedure graph();
var
  i, j: Integer;
begin
  Form1.Series1.Clear;

  for i := -Rad to Rad do
    for j := -Rad to Rad do
    begin
      case p[i, j] of
        0:
          Form1.Series1.AddBubble(i, j, 0.5, '', clBlack);
        1:
          Form1.Series1.AddBubble(i, j, 0.5, '', clwhite);
        2:
          Form1.Series1.AddBubble(i, j, 0.5, '', clRed);
        3:
          Form1.Series1.AddBubble(i, j, 0.5, '', clGreen);
      end;
    end;

  if Form1.RadioGroup1.itemIndex = 1 then
    Application.ProcessMessages;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i, j, k, l: Integer;
begin
  Randomize;

  flag := True;

  Series2.Clear;
  Series3.Clear;

  Rad := StrToInt(LabeledEdit1.Text);
  u := StrToInt(LabeledEdit2.Text);
  dr := 1;

  if CheckBox1.Checked then
    m := StrToInt(LabeledEdit3.Text)
  else
    m := 0;

  // ???????? ?????
  for i := -100 to 100 do
    for j := -100 to 100 do
    begin
      p[i, j] := 0;
    end;

  for i := -Rad to Rad do
    for j := -Rad to Rad do
    begin
      rr := sqrt(sqr(i) + sqr(j));
      if rr <= Rad then
        p[i, j] := 1;
    end;

  p[0, 0] := 3;

  graph();

  // ????????? ????????
  mm := 0;
  while flag do
  begin
    for l := 1 to u do
    begin
      mm := mm + 1;
      Edit2.Text := IntToStr(mm);

      ang := random(360);
      x := Trunc(Rad * cos(ang * 2 * pi / 360)); // ³???????? ??????? ???????
      y := Trunc(Rad * sin(ang * 2 * pi / 360));

      rr := sqrt(sqr(x) + sqr(y));

      if (rr <= Rad) and (p[x, y] <> 3) then
      begin
        p[x, y] := 2;
        Series1.AddBubble(x, y, 0.5, '', clRed);
        flag2 := True;
      end
      else
      begin
        flag2 := False;
      end;

      while flag2 do
      begin
        p[x, y] := 1;
        Series1.AddBubble(x, y, 0.5, '', clwhite);

        k := random(4);
        x := x + dx[k];
        y := y + dy[k];

        rr := sqrt(sqr(x) + sqr(y));
        if (rr <= Rad) and (p[x, y] <> 3) then
        begin
          p[x, y] := 2;

          for k := 0 to 3 do
          begin
            if p[x + dx[k], y + dy[k]] = 3 then
              p[x, y] := 3
          end;

          case p[x, y] of
            2:
              Series1.AddBubble(x, y, 0.5, '', clRed);
            3:
              begin
                Series1.AddBubble(x, y, 0.5, '', clGreen);
                flag2 := False;
              end;
          end;

          if RadioGroup1.itemIndex = 0 then
            Application.ProcessMessages;
        end
        else
          flag2 := False;
      end;
    end;

    n := 0;
    x := 0;
    y := 0;
    t := 0;

    for i := -100 to 100 do
      for j := -100 to 100 do
        if p[i, j] = 3 then
        begin
          x := x + j;
          y := y + i;
          n := n + 1;

          for k := 0 to 3 do
          begin
            if p[j + dx[k], i + dy[k]] = 0 then
              t := 1;
          end;
        end;

    x := Round(x / n); // ??????????
    y := Round(y / n);

    // ???????? ?????
    for i := -100 to 100 do
      for j := -100 to 100 do
      begin
        p1[i, j] := 0;
      end;

    Rad := Rad + t + Trunc(sqrt(sqr(x) + sqr(y)));
    for i := -Rad to Rad do
      for j := -Rad to Rad do
      begin
        rr := sqrt(sqr(i) + sqr(j));
        if rr <= Rad then
          p1[i, j] := 1;
      end;

    for i := -100 to 100 do
      for j := -100 to 100 do
        if p[i, j] = 3 then
        begin
          p1[i - y, j - x] := 3;
        end;

    p := p1;

    graph();

    if (mm > m) and (m <> 0) then
      flag := False;
  end;

  n := 0;
  for i := -Rad to Rad do
    for j := -Rad to Rad do
      if p[i, j] = 3 then
      begin
        rr := sqrt(sqr(i) + sqr(j));
        r := Round(rr / dr) + 1;
        g[r] := g[r] + 1;

        if r > n then
          n := r;
      end;

  for r := 1 to n do
  begin
    if g[r] <> 0 then
      Series2.AddXY(ln(r), ln(g[r]));
  end;

  // ????? ????????? ?????????
  a := 0;
  b := 0;
  c := 0;
  d := 0;

  for r := 1 to n do
  begin
    a := a + r;
    b := b + g[r];
    c := c + r * r;
    d := d + r * g[r];
  end;

  h := (a * b - n * d) / (a * a - n * c);
  s := (b - h * a) / n;

  for r := 1 to n do
  begin
    v := s + h * r;
    Series3.AddXY(ln(r), ln(v))
  end;

  Edit1.Text := FloatToStr(ln(v) / ln(r));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  flag := False;
end;

end.
