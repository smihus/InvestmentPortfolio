program InvestPortfolio;

uses
  Vcl.Forms,
  main in 'main.pas' {fmMain},
  DataModule in 'DataModule.pas' {dm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
