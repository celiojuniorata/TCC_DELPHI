unit UfrmTelaPesquisaUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, DmConexao;

type
  TFrmTelaPesquisaCliente = class(TForm)
    pnlFundoPesquisar: TPanel;
    pnlFundoGrid: TPanel;
    DBGrid1: TDBGrid;
    edtPesquisarCliente: TEdit;
    Label1: TLabel;
    btnPesquisar: TButton;
    btnOk: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTelaPesquisaCliente: TFrmTelaPesquisaCliente;

implementation

{$R *.dfm}


procedure TFrmTelaPesquisaCliente.btnOkClick(Sender: TObject);
begin
  dm.cdsVendasCOD_CLIENTE.AsInteger := dm.cdsPessoaID.AsInteger;
  FrmTelaPesquisaCliente.Close;
end;

procedure TFrmTelaPesquisaCliente.btnPesquisarClick(Sender: TObject);
begin
  if dm.cdsPessoa.Locate('NOME', edtPesquisarCliente.text, []) then
    ShowMessage('Pessoa Localizado!')
  else
      ShowMessage('Pessoa n�o localizado!');
      edtPesquisarCliente.SetFocus;
end;

procedure TFrmTelaPesquisaCliente.FormShow(Sender: TObject);
begin
  dm.cdsPessoa.Open;
  edtPesquisarCliente.SetFocus;
  dm.cdsPessoa.First;
end;

end.
