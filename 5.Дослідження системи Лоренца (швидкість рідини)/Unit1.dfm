object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 
    #1057#1080#1089#1090#1077#1084#1072' '#1051#1086#1088#1077#1085#1094#1072' '#1086#1087#1080#1089#1091#1108' '#1079#1074#39#1103#1079#1086#1082' '#1096#1074#1080#1076#1082#1086#1089#1090#1110' '#1088#1110#1076#1080#1085#1080' '#1061' '#1079' '#1074#1077#1083#1080#1095#1080#1085#1072#1084#1080' Y' +
    ' i Z, '#1103#1082#1110' '#1093#1072#1088#1072#1082#1090#1077#1088#1080#1079#1091#1102#1090#1100' '#1090#1077#1084#1087#1077#1088#1072#1090#1091#1088#1091' '#1089#1080#1089#1090#1077#1084#1080
  ClientHeight = 682
  ClientWidth = 1360
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 5
    Top = 13
    Width = 164
    Height = 19
    Caption = #1055#1086#1095#1072#1090#1082#1086#1074#1077' '#1079#1085#1072#1095#1077#1085#1085#1103' X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 4
    Top = 43
    Width = 165
    Height = 19
    Caption = #1055#1086#1095#1072#1090#1082#1086#1074#1077' '#1079#1085#1072#1095#1077#1085#1085#1103' Y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 5
    Top = 73
    Width = 164
    Height = 19
    Caption = #1055#1086#1095#1072#1090#1082#1086#1074#1077' '#1079#1085#1072#1095#1077#1085#1085#1103' Z'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 670
    Top = 13
    Width = 115
    Height = 19
    Caption = #1050#1088#1086#1082' '#1087#1086' '#1095#1072#1089#1091' dt'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 368
    Top = 73
    Width = 123
    Height = 19
    Caption = #1063#1072#1089' '#1076#1086#1089#1083#1110#1076#1078#1077#1085#1085#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 347
    Top = 13
    Width = 144
    Height = 19
    Caption = #963' - '#1095#1080#1089#1083#1086' '#1055#1088#1072#1085#1076#1090#1083#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 435
    Top = 43
    Width = 56
    Height = 19
    Caption = 'Lambda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Chart1: TChart
    Left = 8
    Top = 106
    Width = 441
    Height = 279
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
    Left = 918
    Top = 8
    Width = 147
    Height = 41
    Caption = 'Start'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Chart2: TChart
    Left = 8
    Top = 391
    Width = 441
    Height = 282
    Legend.Visible = False
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Title.Caption = 'y'
    LeftAxis.Title.Caption = 'x'
    View3D = False
    TabOrder = 2
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series4: TPointSeries
      SeriesColor = clRed
      ClickableLine = False
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Chart3: TChart
    Left = 903
    Top = 391
    Width = 450
    Height = 282
    Legend.Visible = False
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Title.Caption = 'z'
    LeftAxis.Title.Caption = 'y'
    View3D = False
    TabOrder = 3
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series6: TPointSeries
      SeriesColor = clRed
      ClickableLine = False
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Chart4: TChart
    Left = 455
    Top = 391
    Width = 442
    Height = 282
    Legend.Visible = False
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Title.Caption = 'z'
    LeftAxis.Title.Caption = 'x'
    View3D = False
    TabOrder = 4
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series5: TPointSeries
      SeriesColor = clRed
      ClickableLine = False
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object ComboBox1: TComboBox
    Left = 175
    Top = 8
    Width = 145
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Text = '1'
    Items.Strings = (
      '1'
      '-10'
      '15')
  end
  object ComboBox2: TComboBox
    Left = 175
    Top = 38
    Width = 145
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Text = '0'
    Items.Strings = (
      '0'
      '10'
      '0')
  end
  object ComboBox3: TComboBox
    Left = 175
    Top = 68
    Width = 145
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Text = '0'
    Items.Strings = (
      '0'
      '0'
      '0')
  end
  object ComboBox4: TComboBox
    Left = 497
    Top = 8
    Width = 145
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Text = '10'
    Items.Strings = (
      '10'
      '10'
      '10')
  end
  object ComboBox5: TComboBox
    Left = 497
    Top = 38
    Width = 145
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    Text = '3,7'
    Items.Strings = (
      '3,7'
      '10'
      '28')
  end
  object Chart5: TChart
    Left = 455
    Top = 106
    Width = 442
    Height = 279
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
  object Chart6: TChart
    Left = 903
    Top = 106
    Width = 450
    Height = 279
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
  object ComboBox6: TComboBox
    Left = 497
    Top = 68
    Width = 145
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    Text = '20'
    Items.Strings = (
      '20'
      '20'
      '120')
  end
  object Edit1: TEdit
    Left = 791
    Top = 8
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    Text = '0,01'
  end
  object Button2: TButton
    Left = 918
    Top = 55
    Width = 147
    Height = 41
    Caption = 'Stop'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnClick = Button2Click
  end
end
