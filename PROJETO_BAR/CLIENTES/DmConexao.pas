unit DmConexao;

interface

uses
  System.SysUtils, System.Classes, Data.DBXInterbase, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.Provider, Datasnap.DBClient, System.RegularExpressions;

type
  Tdm = class(TDataModule)
    dspPessoa: TDataSetProvider;
    DSourcePessoa: TDataSource;
    cdsPessoa: TClientDataSet;
    cdsPessoaNOME: TStringField;
    cdsPessoaDATANASCIMENTO: TDateField;
    cdsPessoaTELEFONE: TStringField;
    cdsPessoaEMAIL: TStringField;
    conexao: TSQLConnection;
    cdsPessoaID: TIntegerField;
    SQuery: TSQLQuery;
    SQueryTemp: TSQLQuery;
    cdsPessoaRUA: TStringField;
    cdsPessoaCPF: TStringField;
    cdsPessoaCEP: TStringField;
    cdsPessoaBAIRRO: TStringField;
    cdsPessoaCOMPLEMENTO: TStringField;
    cdsPessoaIBGE: TStringField;
    procedure cdsPessoaAfterPost(DataSet: TDataSet);
    procedure cdsPessoaNewRecord(DataSet: TDataSet);
    procedure cdsPessoaAfterDelete(DataSet: TDataSet);
    procedure DSourcePessoaStateChange(Sender: TObject);
    procedure cdsPessoaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UfrmPessoa;

{$R *.dfm}

procedure Tdm.cdsPessoaAfterDelete(DataSet: TDataSet);
begin
  cdsPessoa.ApplyUpdates(0);
  cdsPessoa.First;
end;

procedure Tdm.cdsPessoaAfterPost(DataSet: TDataSet);
begin
  cdsPessoa.ApplyUpdates(0);
  cdsPessoa.First;
end;


procedure Tdm.cdsPessoaBeforePost(DataSet: TDataSet);
var
Email, EmailModelo: String;
begin
    // Validação Nome
    if Length(Trim(cdsPessoaNOME.AsString)) < 4 then
      raise Exception.Create('O campo nome precisa ter no mínimo 4 caracteres');

    // Validação do E-mail
    if Trim(cdsPessoaEMAIL.AsString) <> '' then
        begin
          Email := Trim(cdsPessoaEMAIL.AsString);
          EmailModelo := '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$';

          if not TRegEx.IsMatch(Email, EmailModelo) then
          raise Exception.Create('Email inválido');
        end
    else
      raise Exception.Create('Informe e-mail corretamente! Mod: email@email.com');


    // Validação do CPF
    if Trim(cdsPessoaCPF.AsString) = '' then
      raise Exception.Create('CPF inválido!');



    //Validação Telefone
    if Trim(cdsPessoaTELEFONE.AsString) <> '' then
      begin

      end;

end;


procedure Tdm.cdsPessoaNewRecord(DataSet: TDataSet);
begin
  dm.SQueryTemp.Close;
  dm.SQueryTemp.SQL.Clear;
  dm.SQueryTemp.SQL.Add('SELECT GEN_ID(gen_pessoa_id, 1) as ID FROM RDB$DATABASE');
  dm.SQueryTemp.open;

  dm.cdsPessoaID.AsInteger := dm.SQueryTemp.FieldByName('ID').AsInteger;
end;


procedure Tdm.DSourcePessoaStateChange(Sender: TObject);
begin
  FrmPessoa.DBGrid1.Enabled := cdsPessoa.State = dsBrowse; // Visualização
end;

end.

