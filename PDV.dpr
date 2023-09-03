program PDV;

uses
  Forms,
  login in 'login.pas' {TfrmLogin},
  Menu in 'Menu.pas' {frmMenu},
  usuarios in 'Cadastros\usuarios.pas' {FrmUsers},
  Funcionarios in 'Cadastros\Funcionarios.pas' {frmFuncionarios},
  Cargos in 'Cadastros\Cargos.pas' {frmCargos},
  Modulo in 'Cadastros\Modulo.pas' {dm: TDataModule},
  Fornecedores in 'Cadastros\Fornecedores.pas' {frmFornecedores};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TTfrmLogin, TfrmLogin);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmFornecedores, frmFornecedores);
  Application.Run;
end.
