object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1052#1086#1076#1077#1083#1100' '#1063#1091#1072
  ClientHeight = 611
  ClientWidth = 1028
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 7
    Top = 13
    Width = 41
    Height = 19
    Caption = 'Alpha'
  end
  object Label2: TLabel
    Left = 7
    Top = 43
    Width = 35
    Height = 19
    Caption = 'Betta'
  end
  object Label3: TLabel
    Left = 7
    Top = 73
    Width = 36
    Height = 19
    Caption = 'Time'
  end
  object Label4: TLabel
    Left = 351
    Top = 13
    Width = 14
    Height = 19
    Caption = 'dt'
  end
  object Label5: TLabel
    Left = 183
    Top = 13
    Width = 18
    Height = 19
    Caption = 'X0'
  end
  object Label6: TLabel
    Left = 183
    Top = 43
    Width = 19
    Height = 19
    Caption = 'Y0'
  end
  object Label7: TLabel
    Left = 183
    Top = 73
    Width = 18
    Height = 19
    Caption = 'Z0'
  end
  object Chart1: TChart
    Left = 8
    Top = 102
    Width = 337
    Height = 251
    Legend.Visible = False
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Title.Caption = 't'
    LeftAxis.Title.Caption = 'x'
    View3D = False
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Button1: TButton
    Left = 351
    Top = 40
    Width = 148
    Height = 25
    Caption = 'Start'
    TabOrder = 1
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 67
    Top = 8
    Width = 89
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = '5'
    Items.Strings = (
      '5'
      '6,5'
      '6,7'
      '6,8'
      '6,9')
  end
  object Edit1: TEdit
    Left = 67
    Top = 38
    Width = 89
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = '10'
  end
  object Edit2: TEdit
    Left = 67
    Top = 68
    Width = 89
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = '100'
  end
  object Edit3: TEdit
    Left = 411
    Top = 8
    Width = 89
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Text = '0,01'
  end
  object Button2: TButton
    Left = 351
    Top = 71
    Width = 149
    Height = 25
    Caption = 'Stop'
    TabOrder = 6
    OnClick = Button2Click
  end
  object ComboBox2: TComboBox
    Left = 243
    Top = 8
    Width = 89
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Text = '1'
    Items.Strings = (
      '-1,5'
      '0'
      '1,5')
  end
  object ComboBox3: TComboBox
    Left = 243
    Top = 38
    Width = 89
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Text = '0'
    Items.Strings = (
      '0')
  end
  object ComboBox4: TComboBox
    Left = 244
    Top = 68
    Width = 89
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    Text = '0'
    Items.Strings = (
      '1,5'
      '0'
      '-1,5')
  end
  object Chart2: TChart
    Left = 351
    Top = 102
    Width = 330
    Height = 251
    Legend.Visible = False
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Title.Caption = 't'
    LeftAxis.Title.Caption = 'y'
    View3D = False
    TabOrder = 10
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series2: TLineSeries
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Chart3: TChart
    Left = 687
    Top = 102
    Width = 333
    Height = 251
    Legend.Visible = False
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Title.Caption = 't'
    LeftAxis.Title.Caption = 'z'
    View3D = False
    TabOrder = 11
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series3: TLineSeries
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Chart4: TChart
    Left = 8
    Top = 359
    Width = 337
    Height = 251
    Legend.Visible = False
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Title.Caption = 'x'
    LeftAxis.Title.Caption = 'y'
    View3D = False
    TabOrder = 12
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series4: TPointSeries
      ClickableLine = False
      Pointer.HorizSize = 2
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.VertSize = 2
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Chart5: TChart
    Left = 351
    Top = 359
    Width = 330
    Height = 250
    Legend.Visible = False
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Title.Caption = 'x'
    LeftAxis.Title.Caption = 'z'
    View3D = False
    TabOrder = 13
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series5: TPointSeries
      ClickableLine = False
      Pointer.HorizSize = 2
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.VertSize = 2
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Chart6: TChart
    Left = 687
    Top = 359
    Width = 333
    Height = 250
    Legend.Visible = False
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Title.Caption = 'y'
    LeftAxis.Title.Caption = 'z'
    View3D = False
    TabOrder = 14
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series6: TPointSeries
      ClickableLine = False
      Pointer.HorizSize = 2
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.VertSize = 2
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
end
