unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Vcl.StdCtrls,
  VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart;

type
  TForm1 = class(TForm)
    Chart1: TChart;
    Series1: TPointSeries;
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Series2: TLineSeries;
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
  N0, dt, Alf, Gam, Sigm, N1: Real;
  n, i: Integer;
begin
  Series1.Clear;
  Series2.Clear;

  N0 := StrToFloat(Edit1.Text);
  dt := StrToFloat(Edit2.Text);
  n := StrToInt(Edit3.Text);
  Alf := StrToFloat(Edit4.Text);

  Gam := (1 + Alf * dt);
  Sigm := Alf * dt;

  Series1.AddXY(0, N0);
  Series2.AddXY(0, N0);

  N1 := N0;
  for i := 1 to n do
    begin
      N1 := N1 + Alf * N1 * (1 - N1) * dt;
      Series1.AddXY(i * dt, N1);
    end;

  N1 := N0;
  for i := 1 to n do
    begin
      N1 := Gam * N1 - Sigm * N1 * N1;
      Series2.AddXY(i * dt, N1);
    end;
end;

end.
