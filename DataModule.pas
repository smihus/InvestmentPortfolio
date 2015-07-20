unit DataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  Tdm = class(TDataModule)
    conMain: TADOConnection;
    qPortfolios: TADOQuery;
    dsPortfolios: TDataSource;
    qPortfoliosname: TStringField;
    qSymbols: TADOQuery;
    dsSymbols: TDataSource;
    qSymbolsticker: TStringField;
    qSymbolsname: TStringField;
    qSymbolTypes: TADOQuery;
    dsSymbolTypes: TDataSource;
    qSymbolTypesstype: TStringField;
    qSymbolsstypelookup: TStringField;
    qSymbolsstype: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
