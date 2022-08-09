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
    Series1: TPointSeries;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    ComboBox1: TComboBox;
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
  lam1, lam2, step, lam, dlam, x: Real;
  i, j: Integer;
  a: String;
begin
  Series1.Clear;

  lam1 := StrToFloat(Edit1.Text);
  lam2 := StrToFloat(Edit2.Text);
  step := StrToFloat(Edit3.Text);
  j := StrToInt(Edit4.Text);
  a := ComboBox1.Text;

  lam := lam1;
  dlam := (lam2 - lam1) / step;

  while lam <= lam2 do
  begin
    if a = 'random'
      then x := random
      else x := StrToFloat(ComboBox1.Text);

    for i := 1 to 500 do
    begin
      if i >= j then
      begin
        Series1.AddXY(lam, x);
//        Application.ProcessMessages;
      end;

      x := lam * x * (1 - x);
    end;

    lam := lam + dlam;
  end;

end;

end.
