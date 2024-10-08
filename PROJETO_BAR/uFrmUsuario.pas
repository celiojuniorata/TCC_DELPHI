unit uFrmUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.Menus;

type
  TFrmUsuario = class(TForm)
    pnlFundoTelaUsuario: TPanel;
    dbGridUsuario: TDBGrid;
    pnlNavTelaUsuario: TPanel;
    DBNavigator1: TDBNavigator;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUsuario: TFrmUsuario;

implementation

{$R *.dfm}

uses DmConexao;

procedure TFrmUsuario.FormShow(Sender: TObject);
begin
  dm.conexao.Connected := True;
  dm.cdsUsuario.Open;
end;

end.
