unit ulogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg;

type
  TfrmLogin = class(TForm)
    pnlfundo: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Image1: TImage;
    Label7: TLabel;
    Label8: TLabel;
    edtLogin: TEdit;
    Label9: TLabel;
    edtSenha: TEdit;
    btConfirmar: TButton;
    lbLoginIncorreto: TLabel;
    procedure edtLoginExit(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses RyCriptografia, udmPrincipal;

procedure TfrmLogin.btConfirmarClick(Sender: TObject);
begin
  lbLoginIncorreto.Visible := false;

  if dmPrincipal.ValidaSenha(edtSenha.Text) then
    Close
  else
  begin
    lbLoginIncorreto.Caption := ' *** Senha informada incorreta *** ';
    lbLoginIncorreto.Visible := true;
    edtSenha.SetFocus;
  end;

end;

procedure TfrmLogin.edtLoginExit(Sender: TObject);
begin
  if not dmPrincipal.ValidaUsuario(edtLogin.Text,edtSenha.Text) then
  begin
    lbLoginIncorreto.Caption := ' *** Login não encontrado *** ';
    lbLoginIncorreto.Visible := true;
    edtLogin.SetFocus;
  end
  else
  lbLoginIncorreto.Visible := false;

end;

end.
