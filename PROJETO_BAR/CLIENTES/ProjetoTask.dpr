program ProjetoTask;

uses
  Vcl.Forms,
  UfrmPessoa in 'UfrmPessoa.pas' {FrmPessoa},
  DmConexao in 'DM\DmConexao.pas' {dm: TDataModule},
  UProfissao in 'Cadastros\UProfissao.pas' {FrmProfissao},
  UConfiguracao in 'CONFIGURACAO\UConfiguracao.pas' {FrmConfiguracao},
  UTelaRelatorioPrincipalCliente in 'RELATORIOS\UTelaRelatorioPrincipalCliente.pas' {FrmRelatorios},
  URelatoriosClientes in 'RELATORIOS\URelatoriosClientes.pas' {FrmRelatorioClientes},
  uFrmLogin in '..\uFrmLogin.pas' {FrmLogin},
  uFrmMenuVendas in '..\uFrmMenuVendas.pas' {FrmMenuVendas},
  uFrmTelaVendas in '..\uFrmTelaVendas.pas' {FrmTelaVendas},
  uFrmUsuario in '..\uFrmUsuario.pas' {FrmUsuario},
  uFrmProdutos in '..\uFrmProdutos.pas' {FrmProdutos},
  uFrmCategoria in '..\uFrmCategoria.pas' {FrmCategoria},
  UfrmTelaPesquisaUsuario in 'UfrmTelaPesquisaUsuario.pas' {FrmTelaPesquisaCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmTelaVendas, FrmTelaVendas);
  Application.CreateForm(TFrmTelaPesquisaCliente, FrmTelaPesquisaCliente);
  Application.CreateForm(TFrmMenuVendas, FrmMenuVendas);
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TFrmProdutos, FrmProdutos);
  Application.CreateForm(TFrmUsuario, FrmUsuario);
  Application.CreateForm(TFrmPessoa, FrmPessoa);
  Application.CreateForm(TFrmCategoria, FrmCategoria);
  Application.CreateForm(TFrmProfissao, FrmProfissao);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TFrmConfiguracao, FrmConfiguracao);
  Application.CreateForm(TFrmRelatorios, FrmRelatorios);
  Application.CreateForm(TFrmRelatorioClientes, FrmRelatorioClientes);
  Application.Run;
end.
