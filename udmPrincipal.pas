unit udmPrincipal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Phys.ODBCBase;



type TUsuario = record
   idusuario:Integer;
   nome     :string;
   senha    :string;
end;

type
  TdmPrincipal = class(TDataModule)
    conexaobanco: TFDConnection;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    fdqUsuario: TFDQuery;
    fdqUsuarioID_USUARIO: TFDAutoIncField;
    fdqUsuarioNOME: TStringField;
    fdqUsuarioLOGIN: TStringField;
    fdqUsuarioSENHA: TStringField;
    fdqUsuarioDATA_CRIACAO: TSQLTimeStampField;
    fdqUsuarioATIVO: TIntegerField;
    fdqUsuarioEMAIL: TStringField;
    fdqUsuarioCELULAR: TStringField;
    fdqUsuarioCPF: TStringField;
    fdqUsuarioADMINISTRADOR: TIntegerField;
    fdqRetornaDataServidor: TFDQuery;
    GeneroProduto: TFDMemTable;
    GeneroProdutoDESCRICAO: TStringField;
    GeneroProdutoID: TIntegerField;
    dsGeneroProduto: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    usuarioLogado: TUsuario;
    { Private declarations }
    procedure CarregaGeneroProduto;
  public
    { Public declarations }

    function ValidaUsuario(Login,Senha:String):boolean;
    function ValidaSenha(Senha:String):boolean;
    function retornaDataServidor: TDateTime;
  end;

var
  dmPrincipal: TdmPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses RyCriptografia;

{$R *.dfm}

{ TdmPrincipal }

function TdmPrincipal.ValidaSenha(Senha: String): boolean;
begin
  result := false;
  if (RyEncodeString(senha) = usuarioLogado.senha) then
    result := true;
end;
function TdmPrincipal.ValidaUsuario(Login, Senha: String): boolean;
begin

  fdqUsuario.Close;
  fdqUsuario.Params.ParamByName('login').value := trim(Login);
  fdqUsuario.Open;

  if fdqUsuario.IsEmpty  then
    result := false
  else
  begin
    usuarioLogado.idusuario := fdqUsuario.FieldByName('ID_USUARIO').AsInteger ;
    usuarioLogado.nome      := fdqUsuario.FieldByName('NOME').AsString;
    usuarioLogado.senha     := fdqUsuario.FieldByName('SENHA').AsString;
    result := true;
  end;

end;

procedure TdmPrincipal.CarregaGeneroProduto;
begin
  GeneroProduto.Insert;
  GeneroProduto.FieldByName('ID').AsInteger := 1;
  GeneroProduto.FieldByName('descricao').AsString := 'Subproduto';
  GeneroProduto.Post;

  GeneroProduto.Insert;
  GeneroProduto.FieldByName('ID').AsInteger := 0;
  GeneroProduto.FieldByName('descricao').AsString := 'Mercadoria para Revenda';
  GeneroProduto.Post;
end;

procedure TdmPrincipal.DataModuleCreate(Sender: TObject);
begin
  GeneroProduto.Open;
end;

function TdmPrincipal.retornaDataServidor: TDateTime;
begin
  fdqRetornaDataServidor.Close;
  fdqRetornaDataServidor.Open();
  Result := fdqRetornaDataServidor.FieldByName('dataAtual').AsDateTime;
end;

end.
