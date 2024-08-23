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
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    btnCancelar: TButton;
    btnFinalizar: TButton;
    Panel5: TPanel;
    Label10: TLabel;
    Panel6: TPanel;
    dbCodigo: TDBEdit;
    dbMesa: TDBEdit;
    dbCliente: TDBEdit;
    dbFuncionario: TDBEdit;
    dbTempo: TDBEdit;
    Edit1: TEdit;
    DBEdit1: TDBEdit;
    dbTotal: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    lbStatus: TLabel;
    DBEdit3: TDBEdit;
    lbNomeStatus: TLabel;
    PageControl1: TPageControl;
    tabMarmita: TTabSheet;
    DBGrid2: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
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

uses DmConexao, uFrmMenuVendas;

procedure TFrmTelaVendas.btnFinalizarClick(Sender: TObject);
begin
  if dm.cdsVendas.State in [dsInsert, dsEdit] then
    try
      dm.cdsVendas.Post;
    except
      on E: Exception do
      begin
        raise Exception.Create('Erro ao salvar a Venda: ' + E.Message);
      end;
    end;
end;

procedure TFrmTelaVendas.FormCreate(Sender: TObject);
begin
  lbNomeStatus.Caption := uFrmMenuVendas.Status;
  StatusMesa := lbNomeStatus.Caption;

end;

procedure TFrmTelaVendas.FormShow(Sender: TObject);
begin

  dm.conexao.Connected := True;
  dm.cdsVendas.Open;
  dm.cdsPessoa.Open;
  dm.cdsUsuario.Open;
  dm.cdsProduto.Open;

  if not (dm.cdsVendas.State in [dsInsert]) then
    begin
      dm.cdsVendas.Append;
    end;

end;

end.
