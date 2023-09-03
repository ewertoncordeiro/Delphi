unit Login;

interface

uses
 Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.Buttons, Messaging, StdCtrls,
  jpeg, Controls, ExtCtrls, Classes;

type
  TTfrmLogin = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    pnlLogin: TPanel;
    Image2: TImage;
    Button1: TButton;
    txtUsuario: TEdit;
    txtSenha: TEdit;

    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);



  private
    { Private declarations }
     procedure centralizarPainel;
     procedure login;

  public
    { Public declarations }
  end;

var
  TfrmLogin: TTfrmLogin;

implementation

{$R *.dfm}

   uses Menu, Modulo;


{ TTfrmLogin }



procedure TTfrmLogin.centralizarPainel;
begin
 pnlLogin.Top := (self.Height div 2) - (pnlLogin.Height div 2);
 pnlLogin.Left := (self.Width div 2) - (pnlLogin.Width div 2);

end;



procedure TTfrmLogin.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
    centralizarPainel;
end;


procedure TTfrmLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    login;
end;

procedure TTfrmLogin.login;
begin

    dm.query_usuarios.Close;
    dm.query_usuarios.SQL.Clear;
    dm.query_usuarios.SQL.Add('SELECT * from usuarios where usuario = :usuario and senha = :senha ' );
    dm.query_usuarios.ParamByName('usuario').Value := txtUsuario.text;
    dm.query_usuarios.ParamByName('senha').Value := txtSenha.text;
    dm.query_usuarios.Open;

    if not dm.query_usuarios.isEmpty then
    begin
     nomeUsuario := dm.query_usuarios['usuario'];
     cargoUsuario := dm.query_usuarios['cargo'];
     frmMenu := TfrmMenu.Create(TfrmLogin);
     frmMenu.ShowModal;
     TfrmLogin.Close;
     end
     else
     begin
       MessageDlg('Usuário ou senha inválidos teste!', mtInformation, mbOKCancel, 0);
       txtUsuario.Text := '';
       txtSenha.Text := '';
    end;


end;

procedure TTfrmLogin.Button1Click(Sender: TObject);
begin
    if Trim(txtUsuario.Text) = '' then
    begin
        MessageDlg('Preencha o usuário!', mtInformation, mbOKCancel, 0);
        txtUsuario.SetFocus;
        exit;
    end;

     if Trim(txtSenha.Text) = '' then
    begin
         MessageDlg('Preencha a senha!', mtInformation, mbOKCancel, 0);
        txtSenha.SetFocus;
        exit;
    end;


    login;

end;


end.
