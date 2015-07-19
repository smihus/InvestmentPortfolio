object fmMain: TfmMain
  Left = 0
  Top = 0
  Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1080#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1099#1084#1080' '#1087#1086#1088#1090#1092#1077#1083#1103#1084#1080
  ClientHeight = 362
  ClientWidth = 584
  Color = clBtnFace
  Constraints.MinHeight = 400
  Constraints.MinWidth = 600
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object tcPortfolios: TTabControl
    Left = 0
    Top = 0
    Width = 584
    Height = 362
    Align = alClient
    MultiLine = True
    TabOrder = 0
    Tabs.Strings = (
      #1055#1086#1088#1090#1092#1077#1083#1080)
    TabIndex = 0
    ExplicitWidth = 447
    ExplicitHeight = 202
    object gdPortfolios: TDBGrid
      Left = 4
      Top = 24
      Width = 576
      Height = 334
      Align = alClient
      DataSource = dm.dsPortfolios
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end
