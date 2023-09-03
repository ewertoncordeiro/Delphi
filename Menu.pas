unit Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
    TfrmMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Produtos1: TMenuItem;
    Fornecedores1: TMenuItem;
    Estoque1: TMenuItem;
    Movimentaes1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    Usuarios1: TMenuItem;
    Funcionrios1: TMenuItem;
    Cargos1: TMenuItem;
    procedure Funcionrios1Click(Sender: TObject);
    procedure Cargos1Click(Sender: TObject);
    procedure Usuarios1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

uses  Funcionarios, Cargos, login, Modulo, usuarios, Fornecedores;

{$R *.dfm}




procedure TfrmMenu.FormShow(Sender: TObject);
begin
  if ((nomeUsuario = 'admin') or (cargousuario = 'Gerente')) then
  begin
   Usuarios1.Enabled := true;
  end;

end;

procedure TfrmMenu.Fornecedores1Click(Sender: TObject);
begin
frmFornecedores:= Tfrmfornecedores.Create(self);
frmFornecedores.ShowModal;
end;

procedure TfrmMenu.Funcionrios1Click(Sender: TObject);
begin
 frmFuncionarios:= TfrmFuncionarios.Create(self);
 frmFuncionarios.ShowModal;
end;

procedure TfrmMenu.Sair1Click(Sender: TObject);
begin
 frmMenu.Close;
end;

procedure TfrmMenu.Usuarios1Click(Sender: TObject);
begin
   FrmUsers:=  TFrmUsers.Create(self);
   FrmUsers.ShowModal;
end;

procedure TfrmMenu.Cargos1Click(Sender: TObject);
begin
 frmCargos:= TfrmCargos.Create(self);
 frmCargos.ShowModal;
end;


end.
