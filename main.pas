unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, DataModule,
  Vcl.ComCtrls;

type
  TfmMain = class(TForm)
    gdPortfolios: TDBGrid;
    pcMain: TPageControl;
    tsPortfolios: TTabSheet;
    tsSymbols: TTabSheet;
    gdSymbols: TDBGrid;
    gdSymbolTypes: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;

implementation

{$R *.dfm}

end.
