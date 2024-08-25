unit uFrmTelaVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFrmTelaVendas = class(TForm)
    MainMenu1: TMainMenu;
    Configurao2: TMenuItem;
    Sair1: TMenuItem;
    pnlVendas: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    lbID: TLabel;
    lbMesa: TLabel;
    lbCliente: TLabel;
    lbFuncionario: TLabel;
    lbDataHora: TLabel;
    DBGridItensVenda: TDBGrid;
    Panel4: TPanel;
    Panel5: TPanel;
    Label10: TLabel;
    Panel6: TPanel;
    dbCodigo: TDBEdit;
    dbMesa: TDBEdit;
    dbCliente: TDBEdit;
    dbFuncionario: TDBEdit;
    dbTempo: TDBEdit;
    edtPesquisarProduto: TEdit;
    lbStatus: TLabel;
    DBEdit3: TDBEdit;
    lbNomeStatus: TLabel;
    PageControl1: TPageControl;
    tabMarmita: TTabSheet;
    DBGrid2: TDBGrid;
    btnIncluir: TButton;
    btnBuscar: TButton;
    Panel7: TPanel;
    dbTotal: TDBEdit;
    DBEdit1: TDBEdit;
    lbDesconto: TLabel;
    lbTotal: TLabel;
    btnCancelar: TButton;
    btnFinalizar: TButton;
    btnDeletarItem: TButton;
    pnlTelaPesquisa: TPanel;
    imgPesquisa: TImage;
    Panel8: TPanel;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure imgPesquisaClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnDeletarItemClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTelaVendas: TFrmTelaVendas;
  StatusMesa: String;

implementation

{$R *.dfm}

uses DmConexao, uFrmMenuVendas, UfrmTelaPesquisaUsuario, UfrmPessoa;

procedure TFrmTelaVendas.btnBuscarClick(Sender: TObject);
begin
  if dm.cdsProduto.Locate('DESCRICAO', edtPesquisarProduto.text, []) then
    ShowMessage('Pessoa Localizado!')
  else
      ShowMessage('Pessoa não localizado!');
      edtPesquisarProduto.SetFocus;
end;

procedure TFrmTelaVendas.btnCancelarClick(Sender: TObject);
begin
  // Confirmar com o usuário se ele deseja realmente cancelar a operação
  if MessageDlg('Deseja realmente cancelar a operação? Todas as alterações não salvas serão descartadas.', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    // Verificar se o ClientDataSet de vendas está ativo e, se necessário, cancelar alterações
    if dm.cdsVendas.State in [dsInsert, dsEdit] then
    begin
      // Cancelar alterações no ClientDataSet de vendas
      dm.cdsVendas.Cancel;
    end;

    // Verificar se o ClientDataSet de itens de venda está ativo e, se necessário, cancelar alterações
    if dm.cdsItensVenda.State in [dsInsert, dsEdit] then
    begin
      // Cancelar alterações no ClientDataSet de itens de venda
      dm.cdsItensVenda.Cancel;
    end;

    // Fechar a tela
    Close;
  end;
end;


procedure TFrmTelaVendas.btnDeletarItemClick(Sender: TObject);
begin
  // Verificar se há um registro selecionado na DBGrid
  if not dm.cdsItensVenda.IsEmpty then
  begin
    // Confirmar a exclusão com o usuário
    if MessageDlg('Deseja realmente excluir o item selecionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      // Excluir o registro selecionado
      dm.cdsItensVenda.Delete;

      // Aplicar as alterações se necessário
      dm.cdsItensVenda.ApplyUpdates(0);

      // Atualizar o filtro se necessário
      // O filtro deve estar configurado para mostrar apenas os itens da venda atual
      dm.cdsItensVenda.Filter := 'COD_VENDA = ' + dm.cdsVendasID.AsString;
      dm.cdsItensVenda.Filtered := True;
    end;
  end
  else
  begin
    // Informar ao usuário que não há registros para excluir
    ShowMessage('Nenhum item selecionado para exclusão.');
  end;
end;



procedure TFrmTelaVendas.btnFinalizarClick(Sender: TObject);
begin

  if MessageDlg('Deseja realmente finalizar a venda?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    // Verifica se cdsVendas está em modo de inserção para disparar o código do ID no NewRecord
    if not (dm.cdsVendas.State in [dsInsert, dsEdit]) then
      dm.cdsVendas.Append;

    // Verifica se o ID foi gerado corretamente
    if dm.cdsVendasID.IsNull then
      raise Exception.Create('Erro: ID da venda não gerado.');

    // Garante que o cdsItensVenda está em modo de edição
    if not (dm.cdsItensVenda.State in [dsInsert, dsEdit]) then
      dm.cdsItensVenda.Edit;

    // Verifica se há itens de venda
    if not dm.cdsItensVenda.IsEmpty then
    begin
      try
        // Salva os itens de venda primeiro
        dm.cdsItensVenda.Post;
        dm.cdsItensVenda.ApplyUpdates(0);

        // Salva o registro de venda
        dm.cdsVendas.Post;
        dm.cdsVendas.ApplyUpdates(0);

        ShowMessage('Venda criada com sucesso!');
        FrmTelaVendas.Close;
      except
        on E: Exception do
        begin
          // Reverte alterações em caso de erro
          dm.cdsItensVenda.CancelUpdates;
          dm.cdsVendas.CancelUpdates;

          ShowMessage('Erro ao salvar a Venda: ' + E.Message);
        end;
      end;
    end
    else
      ShowMessage('Nenhum item de venda para salvar.');
  end
  else
  begin
    // Mensagem informando que a operação foi cancelada
    ShowMessage('Finalização da venda cancelada.');
  end;
end;



procedure TFrmTelaVendas.btnIncluirClick(Sender: TObject);
begin

  if not (dm.cdsItensVenda.State in [dsInsert, dsEdit]) then
    dm.cdsItensVenda.Append;

  dm.cdsItensVendaCOD_PRODUTO.Value := dm.cdsProdutoID.Value;
  dm.cdsItensVendaCOD_VENDA.Value := dm.cdsVendasID.Value;
  dm.cdsItensVendaDESCRICAO.Value := dm.cdsProdutoDESCRICAO.Value;
  dm.cdsItensVendaVALOR.Value := dm.cdsProdutoVALOR.Value;
  dm.cdsItensVendaSTATUS.Value := dm.cdsProdutoSTATUS.Value;
  dm.cdsItensVendaQTD.Value := 1;
  dm.cdsItensVenda.Post;

  // Apenas atualizar o DBGrid sem aplicar ao banco
  DBGridItensVenda.Refresh;
end;


procedure TFrmTelaVendas.btnPesquisaClick(Sender: TObject);
begin
  FrmTelaPesquisaCliente.ShowModal;
end;

procedure TFrmTelaVendas.FormCreate(Sender: TObject);
begin
  lbNomeStatus.Caption := uFrmMenuVendas.Status;
  StatusMesa := lbNomeStatus.Caption;

end;

procedure TFrmTelaVendas.FormShow(Sender: TObject);
begin
  dm.cdsVendas.Open;
  dm.cdsPessoa.Open;
  dm.cdsUsuario.Open;
  dm.cdsProduto.Open;

  // Se necessário, defina o filtro na abertura da tela
  if not dm.cdsVendas.IsEmpty then
  begin
    dm.cdsItensVenda.Filter := 'COD_VENDA = ' + dm.cdsVendasID.AsString;
    dm.cdsItensVenda.Filtered := True;
    dm.cdsItensVenda.Open;
  end;

  if not (dm.cdsVendas.State in [dsInsert, dsEdit]) then
    dm.cdsVendas.Append;

  dm.cdsItensVenda.EmptyDataSet;
end;



procedure TFrmTelaVendas.Image1Click(Sender: TObject);
begin
  FrmPessoa.ShowModal;
end;

procedure TFrmTelaVendas.imgPesquisaClick(Sender: TObject);
begin
  FrmTelaPesquisaCliente.ShowModal;
end;

end.
