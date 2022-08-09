object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 565
  ClientWidth = 973
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 753
    Top = 159
    Width = 85
    Height = 19
    Caption = 'Ln(N)/Ln(R)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object RadioGroup1: TRadioGroup
    Left = 720
    Top = 8
    Width = 244
    Height = 114
    Caption = #1042#1110#1079#1091#1072#1083#1110#1079#1091#1074#1072#1090#1080':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      #1088#1091#1093' '#1082#1086#1078#1085#1086#1111' '#1095#1072#1089#1090#1080#1085#1082#1080
      #1088#1110#1089#1090' '#1082#1083#1072#1089#1090#1077#1088#1072)
    ParentFont = False
    TabOrder = 9
  end
  object Chart1: TChart
    Left = 8
    Top = 8
    Width = 550
    Height = 550
    Legend.Visible = False
    MarginBottom = 0
    MarginLeft = 0
    MarginRight = 0
    MarginTop = 0
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    AxisVisible = False
    View3D = False
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TBubbleSeries
      Marks.Frame.Visible = False
      ClickableLine = False
      Pointer.HorizSize = 44
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.VertSize = 44
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      RadiusValues.Name = 'Radius'
      RadiusValues.Order = loNone
    end
  end
  object Button1: TButton
    Left = 565
    Top = 184
    Width = 197
    Height = 34
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
  object Button2: TButton
    Left = 768
    Top = 184
    Width = 197
    Height = 34
    Caption = 'Stop'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object Chart2: TChart
    Left = 565
    Top = 232
    Width = 400
    Height = 325
    Legend.Visible = False
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Title.Caption = 'Ln(R)'
    LeftAxis.Title.Caption = 'Ln(N)'
    View3D = False
    TabOrder = 3
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
  object LabeledEdit1: TLabeledEdit
    Left = 564
    Top = 32
    Width = 133
    Height = 21
    EditLabel.Width = 85
    EditLabel.Height = 19
    EditLabel.Caption = #1056#1072#1076#1110#1091#1089' '#1087#1086#1083#1103
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -16
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    TabOrder = 4
    Text = '3'
  end
  object Edit1: TEdit
    Left = 844
    Top = 157
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object LabeledEdit2: TLabeledEdit
    Left = 564
    Top = 80
    Width = 133
    Height = 21
    EditLabel.Width = 128
    EditLabel.Height = 19
    EditLabel.Caption = #1050#1088#1086#1082' '#1085#1086#1088#1084#1091#1074#1072#1085#1085#1103
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -16
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    TabOrder = 6
    Text = '20'
  end
  object Edit2: TEdit
    Left = 564
    Top = 157
    Width = 133
    Height = 21
    TabOrder = 7
  end
  object CheckBox1: TCheckBox
    Left = 727
    Top = 128
    Width = 225
    Height = 17
    Caption = #1047#1072#1089#1090#1086#1089#1091#1074#1072#1090#1080' '#1083#1110#1084#1110#1090' '#1095#1072#1089#1090#1080#1085#1086#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 2
    Height = 565
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 10
  end
  object LabeledEdit3: TLabeledEdit
    Left = 564
    Top = 128
    Width = 133
    Height = 21
    EditLabel.Width = 138
    EditLabel.Height = 19
    EditLabel.Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1095#1072#1089#1090#1080#1085#1086#1082
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -16
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    TabOrder = 11
    Text = '1000'
  end
end
