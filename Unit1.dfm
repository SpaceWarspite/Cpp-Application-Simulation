object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1072#1103' '#1089#1080#1089#1090#1077#1084#1072
  ClientHeight = 692
  ClientWidth = 1131
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 673
    Width = 1131
    Height = 19
    Panels = <
      item
        Bevel = pbRaised
        Text = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
        Width = 80
      end
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Text = #1042#1088#1077#1084#1103
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1131
    Height = 65
    Align = alTop
    TabOrder = 1
    object Button1: TButton
      Left = 10
      Top = 12
      Width = 57
      Height = 25
      Caption = #1055#1086#1084#1086#1097#1100
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 73
      Top = 12
      Width = 64
      Height = 25
      Caption = #1054#1090#1083#1072#1076#1082#1072
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 528
    Width = 1131
    Height = 145
    Align = alBottom
    TabOrder = 2
    object Label1: TLabel
      Left = 10
      Top = 6
      Width = 31
      Height = 13
      Caption = #1053#1072#1081#1090#1080
    end
    object Edit1: TEdit
      Left = 10
      Top = 22
      Width = 152
      Height = 21
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object CencelFilter: TButton
      Left = 130
      Top = 50
      Width = 113
      Height = 27
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1087#1086#1080#1089#1082
      TabOrder = 1
      OnClick = CencelFilterClick
    end
    object DBNavigator1: TDBNavigator
      Left = 424
      Top = 6
      Width = 672
      Height = 25
      DataSource = DataSource1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 2
    end
    object RadioGroup1: TRadioGroup
      Left = 10
      Top = 49
      Width = 114
      Height = 89
      Caption = #1048#1089#1082#1072#1090#1100' '#1087#1086
      ItemIndex = 0
      Items.Strings = (
        #1055#1086' '#1062#1077#1085#1077
        #1055#1086' '#1057#1090#1088#1072#1085#1077
        #1055#1086' '#1043#1086#1088#1086#1076#1091
        #1055#1086' '#1057#1072#1084#1086#1083#1077#1090#1091
        #1055#1086' '#1056#1077#1081#1089#1091)
      TabOrder = 3
    end
    object ButtonSearch: TButton
      Left = 168
      Top = 17
      Width = 75
      Height = 27
      Caption = #1055#1086#1080#1089#1082
      TabOrder = 4
      OnClick = ButtonSearchClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 1131
    Height = 463
    Align = alClient
    TabOrder = 3
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1129
      Height = 461
      Align = alClient
      DataSource = DataSource1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnTitleClick = DBGrid1TitleClick
    end
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=\\nas\redirect\Ilyu' +
      'hinIS\Documents\'#1056#1054#1057#1053#1054#1059'\'#1050#1091#1088#1089#1086#1074#1072#1103#1048#1085#1092#1086#1088#1084#1072#1090#1080#1082#1072'\version2\Database+.md' +
      'b;Persist Security Info=False'
    CursorType = ctStatic
    TableName = #1058#1072#1073#1083#1086
    Left = 1000
    Top = 480
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 936
    Top = 480
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 1048
    Top = 480
  end
end
