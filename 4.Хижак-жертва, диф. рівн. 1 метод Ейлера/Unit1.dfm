object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 
    #1056#1086#1079#1074#39#1103#1079#1086#1082' '#1089#1080#1089#1090#1077#1084#1080' '#1076#1080#1092#1077#1088#1077#1085#1094#1110#1072#1083#1100#1085#1080#1093' '#1088#1110#1074#1085#1103#1085#1100' I-'#1075#1086' '#1087#1086#1088#1103#1076#1082#1091' '#1084#1077#1090#1086#1076#1086#1084' '#1045 +
    #1081#1083#1077#1088#1072
  ClientHeight = 645
  ClientWidth = 899
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
    Left = 646
    Top = 8
    Width = 116
    Height = 19
    Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1079#1072#1081#1094#1110#1074
  end
  object Label2: TLabel
    Left = 646
    Top = 35
    Width = 116
    Height = 19
    Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1074#1086#1074#1082#1110#1074
  end
  object Label3: TLabel
    Left = 613
    Top = 62
    Width = 149
    Height = 19
    Caption = #1056#1086#1079#1084#1085#1086#1078#1077#1085#1085#1103' '#1079#1072#1081#1094#1110#1074
  end
  object Label4: TLabel
    Left = 581
    Top = 89
    Width = 181
    Height = 19
    Caption = #1047#1091#1089#1090#1088#1110#1095' '#1079#1072#1081#1094#1110#1074' '#1079' '#1074#1086#1074#1082#1072#1084#1080
  end
  object Label5: TLabel
    Left = 650
    Top = 116
    Width = 112
    Height = 19
    Caption = #1057#1090#1072#1088#1110#1089#1090#1100' '#1074#1086#1074#1082#1110#1074
  end
  object Label6: TLabel
    Left = 577
    Top = 143
    Width = 185
    Height = 19
    Caption = #1047#1091#1089#1090#1088#1110#1095' '#1074#1086#1074#1082#1110#1074' '#1110#1079' '#1079#1072#1081#1094#1103#1084#1080
  end
  object Label7: TLabel
    Left = 737
    Top = 170
    Width = 25
    Height = 19
    Caption = #1063#1072#1089
  end
  object Label8: TLabel
    Left = 666
    Top = 197
    Width = 96
    Height = 19
    Caption = #1050#1088#1086#1082' '#1087#1086' '#1095#1072#1089#1091
  end
  object Label9: TLabel
    Left = 746
    Top = 281
    Width = 16
    Height = 19
    Caption = 'Xs'
  end
  object Label10: TLabel
    Left = 745
    Top = 308
    Width = 17
    Height = 19
    Caption = 'Ys'
  end
  object Chart1: TChart
    Left = 8
    Top = 8
    Width = 555
    Height = 313
    Legend.Visible = False
    Title.Text.Strings = (
      #1061#1080#1078#1072#1082'-'#1078#1077#1088#1090#1074#1072)
    BottomAxis.Title.Caption = #1063#1072#1089
    LeftAxis.Title.Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1086#1089#1110#1073
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
  object Button1: TButton
    Left = 577
    Top = 224
    Width = 312
    Height = 33
    Caption = 'Start'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 768
    Top = 8
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = '50'
  end
  object Edit2: TEdit
    Left = 768
    Top = 35
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = '20'
  end
  object Edit3: TEdit
    Left = 768
    Top = 62
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = '0,05'
  end
  object Edit4: TEdit
    Left = 768
    Top = 89
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Text = '-0,02'
  end
  object Edit5: TEdit
    Left = 768
    Top = 116
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Text = '-0,9'
  end
  object Edit6: TEdit
    Left = 768
    Top = 143
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Text = '0,02'
  end
  object Edit7: TEdit
    Left = 768
    Top = 170
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Text = '100'
  end
  object Edit8: TEdit
    Left = 768
    Top = 197
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    Text = '0,1'
  end
  object Chart2: TChart
    Left = 8
    Top = 327
    Width = 555
    Height = 313
    Legend.Visible = False
    Title.Text.Strings = (
      #1061#1080#1078#1072#1082'-'#1078#1077#1088#1090#1074#1072)
    BottomAxis.Title.Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1074#1086#1074#1082#1110#1074
    LeftAxis.Title.Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1079#1072#1081#1094#1110#1074
    View3D = False
    TabOrder = 10
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series3: TPointSeries
      ClickableLine = False
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Edit9: TEdit
    Left = 768
    Top = 279
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object Edit10: TEdit
    Left = 768
    Top = 306
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
  end
end
