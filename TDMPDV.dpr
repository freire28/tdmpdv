program TDMPDV;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  ulogin in 'ulogin.pas' {frmLogin},
  RyCriptografia in 'RyCriptografia.pas',
  udmPrincipal in 'udmPrincipal.pas' {dmPrincipal: TDataModule},
  uCliente in 'uCliente.pas' {frmClientes},
  xcadastro in '..\padrao\xcadastro.pas' {xfrmCadastros},
  uCaracteristica in 'uCaracteristica.pas' {frmCaracteristicas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  frmLogin := TfrmLogin.Create(nil);
  frmLogin.ShowModal;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  frmLogin.Hide;
  frmLogin.Free;
  Application.Run;
end.

