object Form4: TForm4
  Left = 0
  Top = 0
  Caption = #1056#1077#1078#1080#1084' '#1054#1090#1083#1072#1076#1082#1080
  ClientHeight = 635
  ClientWidth = 1101
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1101
    Height = 65
    Align = alTop
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 1101
    Height = 450
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel2: TPanel
    Left = 0
    Top = 515
    Width = 1101
    Height = 120
    Align = alBottom
    TabOrder = 2
    object DBNavigator1: TDBNavigator
      Left = 0
      Top = 6
      Width = 1098
      Height = 43
      DataSource = DataSource1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel, nbRefresh]
      TabOrder = 0
    end
    object Open: TButton
      Left = 24
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Open'
      TabOrder = 1
      OnClick = OpenClick
    end
    object Close: TButton
      Left = 144
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 2
      OnClick = CloseClick
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 944
    Top = 456
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1058#1072#1073#1083#1086
    Left = 1008
    Top = 456
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 888
    Top = 456
  end
  object OpenDialog1: TOpenDialog
    Left = 816
    Top = 456
  end
  object SaveDialog1: TSaveDialog
    Left = 752
    Top = 456
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=\\nas\redirect\Ilyu' +
      'hinIS\Documents\'#1056#1054#1057#1053#1054#1059'\'#1050#1091#1088#1089#1086#1074#1072#1103#1048#1085#1092#1086#1088#1084#1072#1090#1080#1082#1072'\version2\Database+.md' +
      'b;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 680
    Top = 456
  end
end
