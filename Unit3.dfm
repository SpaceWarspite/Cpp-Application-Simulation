object Form3: TForm3
  Left = 0
  Top = 0
  Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
  ClientHeight = 492
  ClientWidth = 940
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 934
    Height = 41
    Align = alTop
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1076' '#1076#1086#1089#1090#1091#1087#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 47
    Width = 940
    Height = 445
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 176
      Top = 176
      Width = 46
      Height = 13
      Caption = 'Password'
    end
    object Label2: TLabel
      Left = 176
      Top = 272
      Width = 122
      Height = 13
      Caption = 'DevNope: '#1055#1072#1088#1086#1083#1100' - 1111'
    end
    object Edit1: TEdit
      Left = 152
      Top = 200
      Width = 233
      Height = 21
      PasswordChar = '*'
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 432
      Top = 185
      Width = 105
      Height = 51
      Caption = 'Login'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
end
