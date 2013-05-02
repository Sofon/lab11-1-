object Form1: TForm1
  Left = 33
  Top = 350
  BorderStyle = bsSingle
  Caption = #1055#1091#1075#1072#1102#1097#1080#1077' '#1076#1077#1082#1080
  ClientHeight = 271
  ClientWidth = 859
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 7
    Top = 12
    Width = 122
    Height = 16
    Caption = #1050#1086#1083'-'#1074#1086' '#1101#1083#1077#1084#1077#1085#1090#1086#1074':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 121
    Width = 125
    Height = 16
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1089#1087#1080#1089#1086#1082':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 416
    Top = 248
    Width = 32
    Height = 13
    Caption = 'Label3'
    Visible = False
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 0
    Width = 1
    Height = 271
  end
  object Label5: TLabel
    Left = 8
    Top = 144
    Width = 52
    Height = 13
    Caption = #1060#1072#1084#1080#1083#1080#1103':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 96
    Top = 144
    Width = 44
    Height = 13
    Caption = #8470' '#1088#1077#1081#1089#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 152
    Top = 144
    Width = 29
    Height = 13
    Caption = #1044#1072#1090#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 216
    Top = 144
    Width = 73
    Height = 13
    Caption = #1050#1086#1083'-'#1074#1086' '#1074#1077#1097#1077#1081':'
  end
  object Label8: TLabel
    Left = 296
    Top = 144
    Width = 39
    Height = 13
    Caption = #1042#1077#1089', '#1082#1075':'
  end
  object Label9: TLabel
    Left = 152
    Top = 184
    Width = 55
    Height = 13
    Caption = #1053#1072#1087#1088#1080#1084#1077#1088':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = cl3DDkShadow
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 152
    Top = 200
    Width = 54
    Height = 13
    Caption = '26.01.2009'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = cl3DDkShadow
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 416
    Top = 8
    Width = 40
    Height = 13
    Caption = #1057#1087#1080#1089#1086#1082':'
  end
  object Label13: TLabel
    Left = 496
    Top = 8
    Width = 47
    Height = 13
    Caption = #1055#1086#1088#1103#1076#1086#1082':'
  end
  object Edit1: TEdit
    Left = 136
    Top = 8
    Width = 33
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = '5'
  end
  object UpDown1: TUpDown
    Left = 169
    Top = 8
    Width = 16
    Height = 24
    Associate = Edit1
    Min = 1
    Max = 10
    Position = 5
    TabOrder = 1
  end
  object Button1: TButton
    Left = 192
    Top = 8
    Width = 185
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1089#1077#1074#1076#1086#1089#1083#1091#1095#1072#1081#1085#1099#1077
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 72
    Width = 185
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1080#1079' '#1090#1077#1082#1089#1090#1086#1074#1086#1075#1086' '#1092#1072#1081#1083#1072
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 352
    Top = 160
    Width = 25
    Height = 20
    Caption = '+'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 88
    Top = 240
    Width = 289
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074#1089#1077' '#1101#1083#1077#1084#1077#1085#1090#1099' '#1089#1087#1080#1089#1082#1072' '#1080' '#1086#1089#1074#1086#1073#1086#1076#1080#1090#1100' '#1087#1072#1084#1103#1090#1100
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 576
    Top = 24
    Width = 113
    Height = 21
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 8
    Top = 240
    Width = 65
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 7
    OnClick = Button6Click
  end
  object Edit2: TEdit
    Left = 8
    Top = 160
    Width = 81
    Height = 21
    TabOrder = 8
  end
  object Edit3: TEdit
    Left = 96
    Top = 160
    Width = 49
    Height = 21
    TabOrder = 9
  end
  object Edit4: TEdit
    Left = 152
    Top = 160
    Width = 57
    Height = 21
    TabOrder = 10
  end
  object Edit5: TEdit
    Left = 216
    Top = 160
    Width = 73
    Height = 21
    TabOrder = 11
  end
  object Edit6: TEdit
    Left = 296
    Top = 160
    Width = 49
    Height = 21
    TabOrder = 12
  end
  object Button7: TButton
    Left = 208
    Top = 72
    Width = 169
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1086#1090#1095#1077#1090
    TabOrder = 13
    OnClick = Button7Click
  end
  object ComboBox1: TComboBox
    Left = 416
    Top = 24
    Width = 73
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 14
    Text = '1'
    Items.Strings = (
      '1'
      '2'
      '3')
  end
  object ComboBox2: TComboBox
    Left = 496
    Top = 24
    Width = 73
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 15
    Text = #1055#1088#1103#1084#1086#1081
    Items.Strings = (
      #1055#1088#1103#1084#1086#1081
      #1054#1073#1088#1072#1090#1085#1099#1081)
  end
  object StringGrid1: TStringGrid
    Left = 416
    Top = 56
    Width = 433
    Height = 185
    ColCount = 6
    RowCount = 6
    TabOrder = 16
  end
  object XPManifest1: TXPManifest
    Left = 56
    Top = 40
  end
  object OpenDialog1: TOpenDialog
    Filter = #1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090'|*.txt'
    Left = 88
    Top = 40
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    Filter = #1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090'|*.txt'
    Left = 120
    Top = 40
  end
end
