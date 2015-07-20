object dm: Tdm
  OldCreateOrder = False
  Height = 472
  Width = 137
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
  object qSymbols: TADOQuery
    Active = True
    Connection = conMain
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  s.ticker,'
      '  s.name,'
      '  s.stype'
      'FROM Symbols s')
    Left = 8
    Top = 104
    object qSymbolsticker: TStringField
      DisplayLabel = #1058#1080#1082#1077#1088
      DisplayWidth = 20
      FieldName = 'ticker'
      Size = 50
    end
    object qSymbolsname: TStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1072
      DisplayWidth = 50
      FieldName = 'name'
      Size = 100
    end
    object qSymbolsstypelookup: TStringField
      DisplayLabel = #1058#1080#1087
      FieldKind = fkLookup
      FieldName = 'stypelookup'
      LookupDataSet = qSymbolTypes
      LookupKeyFields = 'stype'
      LookupResultField = 'stype'
      KeyFields = 'stype'
      Lookup = True
    end
    object qSymbolsstype: TStringField
      FieldName = 'stype'
      Visible = False
      Size = 50
    end
  end
  object dsSymbols: TDataSource
    DataSet = qSymbols
    Left = 80
    Top = 104
  end
  object qSymbolTypes: TADOQuery
    Active = True
    Connection = conMain
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  st.stype'
      'FROM SymbolTypes st')
    Left = 8
    Top = 152
    object qSymbolTypesstype: TStringField
      DisplayLabel = #1058#1080#1087' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1072
      FieldName = 'stype'
      Size = 50
    end
  end
  object dsSymbolTypes: TDataSource
    DataSet = qSymbolTypes
    Left = 80
    Top = 152
  end
end
