unit UTelaRelatorioPrincipalCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.CheckLst,
  frxSmartMemo, frCoreClasses, frxClass, URelatoriosClientes;

type
  TFrmRelatorios = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    ListBox1: TListBox;
    CheckListBox1: TCheckListBox;
    Label1: TLabel;
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorios: TFrmRelatorios;

implementation

{$R *.dfm}

procedure TFrmRelatorios.ListBox1Click(Sender: TObject);
begin
 if ListBox1.ItemIndex = 0 then
    begin
      //frListagemDeClientes.LoadFromFile('C:\Caminho\Para\Seu\Relatorio.fr3'); // Carregue o relatório, se necessário
      FrmRelatorioClientes.frListagemDeClientes.ShowReport;
    end
  else if ListBox1.ItemIndex = 1 then
    begin
      //FrmRelatorioClientes.frmListagemClienteEndereco.ShowReport;
    end
  else
    begin
       ShowMessage('Por favor, selecione o primeiro item da lista.');
    end;
end;

end.
