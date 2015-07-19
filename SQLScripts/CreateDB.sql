SET NOCOUNT ON;

CREATE DATABASE InvestmentPortfolio;
GO

CREATE TABLE InvestmentPortfolio.dbo.Portfolios (
  id INT IDENTITY,
  name VARCHAR(100) NOT NULL,
  CONSTRAINT PK_Portfolios PRIMARY KEY NONCLUSTERED (id)
) ON [PRIMARY]
GO

CREATE TABLE InvestmentPortfolio.dbo.SymbolTypes (
  stype VARCHAR(50) NOT NULL,
  name VARCHAR(100) NULL,
  CONSTRAINT PK_SymbolTypes PRIMARY KEY CLUSTERED (stype)
) ON [PRIMARY]
GO

CREATE TABLE InvestmentPortfolio.dbo.Symbols (
  ticker VARCHAR(50) NOT NULL,
  name VARCHAR(100) NOT NULL,
  stype VARCHAR(50) NULL,
  CONSTRAINT PK_Symbols PRIMARY KEY CLUSTERED (ticker),
  FOREIGN KEY (stype) REFERENCES dbo.SymbolTypes (stype)
) ON [PRIMARY]
GO