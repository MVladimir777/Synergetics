object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 513
  ClientWidth = 682
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object Chart1: TChart
    Left = 8
    Top = 8
    Width = 497
    Height = 497
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
    object Series1: TPointSeries
      ClickableLine = False
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Button1: TButton
    Left = 511
    Top = 176
    Width = 162
    Height = 25
    Caption = 'Start'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 511
    Top = 207
    Width = 162
    Height = 25
    Caption = 'Stop'
    TabOrder = 2
    OnClick = Button2Click
  end
  object RadioGroup1: TRadioGroup
    Left = 511
    Top = 8
    Width = 162
    Height = 153
    ItemIndex = 0
    Items.Strings = (
      #1056#1072#1085#1076#1086#1084
      #1041#1083#1086#1082
      #1057#1084#1091#1078#1082#1072
      #1055#1083#1072#1085#1077#1088
      #1043#1072#1088#1084#1072#1090#1072' '#1087#1083#1072#1085#1077#1088#1110#1074)
    TabOrder = 3
  end
end
