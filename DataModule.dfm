object dm: Tdm
  OldCreateOrder = False
  Height = 150
  Width = 215
  object conMain: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=InvestmentPortfolio;Data Source=2'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 8
    Top = 8
  end
  object qPortfolios: TADOQuery
    Active = True
    Connection = conMain
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select'
      'name'
      'from Portfolios')
    Left = 8
    Top = 56
    object qPortfoliosname: TStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1086#1088#1090#1092#1077#1083#1103
      FieldName = 'name'
      Size = 100
    end
  end
  object dsPortfolios: TDataSource
    DataSet = qPortfolios
    Left = 80
    Top = 56
  end
end
