object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 533
  ClientWidth = 713
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 543
    Top = 13
    Width = 11
    Height = 19
    Caption = 'A'
  end
  object Label2: TLabel
    Left = 543
    Top = 43
    Width = 9
    Height = 19
    Caption = 'B'
  end
  object Label3: TLabel
    Left = 543
    Top = 73
    Width = 31
    Height = 19
    Caption = 'time'
  end
  object Label4: TLabel
    Left = 543
    Top = 103
    Width = 14
    Height = 19
    Caption = 'dt'
  end
  object Label5: TLabel
    Left = 544
    Top = 133
    Width = 22
    Height = 19
    Caption = 'left'
  end
  object Label6: TLabel
    Left = 544
    Top = 163
    Width = 33
    Height = 19
    Caption = 'right'
  end
  object Label7: TLabel
    Left = 544
    Top = 193
    Width = 11
    Height = 19
    Caption = 'N'
  end
  object Label8: TLabel
    Left = 544
    Top = 223
    Width = 20
    Height = 19
    Caption = 'D1'
  end
  object Label9: TLabel
    Left = 544
    Top = 253
    Width = 20
    Height = 19
    Caption = 'D2'
  end
  object Chart1: TChart
    Left = 8
    Top = 8
    Width = 521
    Height = 257
    Legend.Visible = False
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    View3D = False
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loNone
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Button1: TButton
    Left = 535
    Top = 368
    Width = 169
    Height = 25
    Caption = 'Start'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 535
    Top = 399
    Width = 169
    Height = 25
    Caption = 'Stop'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 583
    Top = 8
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = '2'
  end
  object Edit2: TEdit
    Left = 583
    Top = 38
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = '5'
  end
  object Edit3: TEdit
    Left = 583
    Top = 68
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Text = '10000000'
  end
  object Edit4: TEdit
    Left = 583
    Top = 98
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Text = '1e-3'
  end
  object Chart2: TChart
    Left = 8
    Top = 271
    Width = 521
    Height = 257
    Legend.Visible = False
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    View3D = False
    TabOrder = 7
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series2: TLineSeries
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loNone
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Edit5: TEdit
    Left = 584
    Top = 128
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Text = '0'
  end
  object Edit6: TEdit
    Left = 584
    Top = 158
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    Text = '3e-2'
  end
  object Edit7: TEdit
    Left = 584
    Top = 188
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    Text = '100'
  end
  object Edit8: TEdit
    Left = 584
    Top = 218
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    Text = '1,6e-7'
  end
  object Edit9: TEdit
    Left = 584
    Top = 248
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    Text = '8e-7'
  end
end
