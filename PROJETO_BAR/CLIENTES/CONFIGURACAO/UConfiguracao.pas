unit UConfiguracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrmConfiguracao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cbObrigaCPF: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    cbObrigaEndereco: TCheckBox;
    Label3: TLabel;
    dbObrigaEmail: TCheckBox;
    Label4: TLabel;
    Label5: TLabel;
    cbNaoAlteraCPF: TCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfiguracao: TFrmConfiguracao;

implementation

{$R *.dfm}

end.
