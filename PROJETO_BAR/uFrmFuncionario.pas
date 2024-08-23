unit uFrmFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TFrmFuncionario = class(TForm)
    pnlFuncionarios: TPanel;
    MainMenu1: TMainMenu;
    Label5: TLabel;
    dbNome: TDBEdit;
    dbCPF: TDBEdit;
    Label8: TLabel;
    dbDataNasc: TDBEdit;
    Label1: TLabel;
    dbTelefone: TDBEdit;
    Label3: TLabel;
    dbID: TDBEdit;
    Label6: TLabel;
    dbEmail: TDBEdit;
    Label2: TLabel;
    lkCmbProf: TDBLookupComboBox;
    Label13: TLabel;
    dbCEP: TDBEdit;
    Label9: TLabel;
    dbBairro: TDBEdit;
    Label10: TLabel;
    dbLogradouro: TDBEdit;
    Label4: TLabel;
    dbNumero: TDBEdit;
    Label15: TLabel;
    lkCmbEstado: TDBLookupComboBox;
    lbEstado: TLabel;
    dbComplemento: TDBEdit;
    Label11: TLabel;
    dbCidade: TDBEdit;
    Label14: TLabel;
    dbIBGE: TDBEdit;
    Label12: TLabel;
    Label7: TLabel;
    edtPesquisar: TEdit;
    btnPesquisar: TButton;
    btnProximo: TButton;
    btnPrimeiro: TButton;
    btnUltimo: TButton;
    DBGrid1: TDBGrid;
    Configurrao1: TMenuItem;
    Cadastros1: TMenuItem;
    Cadastros2: TMenuItem;
    btnNovo: TButton;
    btnSalvar: TButton;
    btnEditar: TButton;
    btnDeletar: TButton;
    btnCancelar: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    procedure BtnPadrao;
    procedure Edicao(Enable: Boolean);
  public
    { Public declarations }
  end;

var
  FrmFuncionario: TFrmFuncionario;

implementation

{$R *.dfm}

uses DmConexao;

{ TFrmFuncionario }

procedure TFrmFuncionario.btnNovoClick(Sender: TObject);
begin

  if not dm.cdsFuncionario.Active then
    dm.cdsFuncionario.Open;

  dm.cdsFuncionario.Append;

  Edicao(True);

  dbNome.SetFocus;
  btnCancelar.Enabled := True;
  btnNovo.Enabled := False;
  btnEditar.Enabled := False;
  btnDeletar.Enabled := False;
  btnSalvar.Enabled := true;
end;

procedure TFrmFuncionario.BtnPadrao;
begin
  btnNovo.Enabled := True;
  btnEditar.Enabled := True;
  btnDeletar.Enabled := True;
  btnCancelar.Enabled := False;
  btnSalvar.Enabled := False;
end;

procedure TFrmFuncionario.btnSalvarClick(Sender: TObject);
begin
  if dm.cdsFuncionario.State in [dsInsert] then
    begin
      dm.cdsFuncionario.Post;
      ShowMessage('Valor inserido com sucesso!');
    end;

  if dm.cdsFuncionario.State in [dsEdit] then
    begin
      dm.cdsFuncionario.Post;
      ShowMessage('Editado com sucesso!');
    end;

  Edicao(False);
  BtnPadrao;
end;

procedure TFrmFuncionario.Edicao(Enable: Boolean);
var
I: Integer;
begin
    for I := 0 to FrmFuncionario.pnlFuncionarios.ControlCount - 1 do
      begin
        if pnlFuncionarios.Controls[I] is TDBEdit then
          begin
            (pnlFuncionarios.Controls[I] as TDBEdit).Enabled := Enable;
          end;
      end;

     lkCmbProf.Enabled := Enable;
     lkCmbEstado.Enabled := Enable;
end;

procedure TFrmFuncionario.FormShow(Sender: TObject);
begin
dm.conexao.Connected := True;
dm.cdsPessoa.Open;
dm.cdsProfissao.Open;
dm.cdsEstado.Open;

edtPesquisar.SetFocus;
Edicao(False);
BtnPadrao;
end;

end.
