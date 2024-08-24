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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTelaPesquisaCliente: TFrmTelaPesquisaCliente;

implementation

{$R *.dfm}


procedure TFrmTelaPesquisaCliente.FormShow(Sender: TObject);
begin
  dm.cdsPessoa.Open;
  edtPesquisarCliente.SetFocus;
end;

end.
