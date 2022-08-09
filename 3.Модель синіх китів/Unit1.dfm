object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 409
  ClientWidth = 709
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
    Left = 569
    Top = 8
    Width = 14
    Height = 19
    Caption = 'dt'
  end
  object Label2: TLabel
    Left = 569
    Top = 143
    Width = 20
    Height = 19
    Caption = 'Alf'
  end
  object Label3: TLabel
    Left = 569
    Top = 173
    Width = 22
    Height = 19
    Caption = 'Bet'
  end
  object Label4: TLabel
    Left = 569
    Top = 203
    Width = 22
    Height = 19
    Caption = 'Sig'
  end
  object Label5: TLabel
    Left = 569
    Top = 233
    Width = 33
    Height = 19
    Caption = 'Gam'
  end
  object Label6: TLabel
    Left = 569
    Top = 38
    Width = 9
    Height = 19
    Caption = 'n'
  end
  object Label7: TLabel
    Left = 569
    Top = 263
    Width = 27
    Height = 19
    Caption = 'Tau'
  end
  object Chart1: TChart
    Left = 8
    Top = 8
    Width = 537
    Height = 393
    Legend.Visible = False
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Title.Caption = 't'
    LeftAxis.Title.Caption = 'X'
    View3D = False
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TPointSeries
      ClickableLine = False
      Pointer.HorizSize = 1
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.VertSize = 1
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Button1: TButton
    Left = 551
    Top = 376
    Width = 154
    Height = 25
    Caption = 'Start'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 608
    Top = 8
    Width = 97
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = '0,01'
  end
  object Edit2: TEdit
    Left = 608
    Top = 143
    Width = 97
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 608
    Top = 173
    Width = 97
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 608
    Top = 203
    Width = 97
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object Edit5: TEdit
    Left = 608
    Top = 233
    Width = 97
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object Edit6: TEdit
    Left = 608
    Top = 38
    Width = 97
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Text = '100'
  end
  object Edit7: TEdit
    Left = 608
    Top = 263
    Width = 97
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
end
