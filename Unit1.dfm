object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 's'
  ClientHeight = 337
  ClientWidth = 894
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 96
    Width = 55
    Height = 15
    Caption = 'Frequency'
  end
  object Label2: TLabel
    Left = 8
    Top = 60
    Width = 56
    Height = 15
    Caption = 'Amplitude'
  end
  object Label3: TLabel
    Left = 8
    Top = 141
    Width = 9
    Height = 15
    Caption = 'N'
  end
  object Label4: TLabel
    Left = 8
    Top = 181
    Width = 9
    Height = 15
    Caption = 'fs'
  end
  object Chart1: TChart
    Left = 216
    Top = 40
    Width = 676
    Height = 281
    Title.Text.Strings = (
      'Sinusoidal Signal')
    BottomAxis.Title.Caption = 'Sample Index (n)'
    DepthAxis.Title.Caption = ''
    LeftAxis.Title.Caption = 'Amplitude (V)'
    View3D = False
    View3DWalls = False
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      15
      25
      15
      25)
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
    Left = 126
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Plot Signal'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 80
    Top = 57
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 80
    Top = 93
    Width = 121
    Height = 23
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 80
    Top = 138
    Width = 121
    Height = 23
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 80
    Top = 178
    Width = 121
    Height = 23
    TabOrder = 5
  end
  object ComboBox1: TComboBox
    Left = 80
    Top = 220
    Width = 121
    Height = 23
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 6
    Text = 'Sine'
    Items.Strings = (
      'Sine'
      'Cosine')
  end
end
