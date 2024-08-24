unit DmConexao;

interface

uses
  System.SysUtils, System.Classes, Data.DBXInterbase, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.Provider, Datasnap.DBClient, System.RegularExpressions,
  uFrmCategoria, uFrmProdutos, uFrmUsuario, uFrmTelaVendas;

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
    SQueryPessoa: TSQLQuery;
    SQueryTemp: TSQLQuery;
    cdsPessoaRUA: TStringField;
    cdsPessoaCPF: TStringField;
    cdsPessoaCEP: TStringField;
    cdsPessoaBAIRRO: TStringField;
    cdsPessoaCOMPLEMENTO: TStringField;
    cdsPessoaIBGE: TStringField;
    dspProfissao: TDataSetProvider;
    cdsProfissao: TClientDataSet;
    DSourceProfissao: TDataSource;
    cdsPessoaCIDADE: TStringField;
    cdsPessoaID_PROF: TIntegerField;
    cdsPessoaNUMERO: TIntegerField;
    cdsEstado: TClientDataSet;
    SQueryEstado: TSQLQuery;
    dspEstado: TDataSetProvider;
    DSourceEstado: TDataSource;
    cdsPessoaID_UF: TIntegerField;
    cdsEstadoID: TIntegerField;
    cdsEstadoUF: TStringField;
    cdsProfissaoID: TIntegerField;
    cdsProfissaoNOME: TStringField;
    SQueryProf: TSQLQuery;
    dspCategoria: TDataSetProvider;
    cdsCategoria: TClientDataSet;
    DSourceCategoria: TDataSource;
    SQueryCategoria: TSQLQuery;
    cdsCategoriaID: TIntegerField;
    cdsCategoriaCATEGORIA: TStringField;
    dspProduto: TDataSetProvider;
    DSourceProduto: TDataSource;
    cdsProduto: TClientDataSet;
    SQueryProduto: TSQLQuery;
    cdsProdutoID: TIntegerField;
    cdsProdutoDESCRICAO: TStringField;
    cdsProdutoVALOR: TFMTBCDField;
    cdsProdutoID_CATEGORIA: TIntegerField;
    cdsProdutoDT_CADASTRO: TDateField;
    cdsProdutoSTATUS: TIntegerField;
    dspVendas: TDataSetProvider;
    DSourceVendas: TDataSource;
    cdsVendas: TClientDataSet;
    SQueryVendas: TSQLQuery;
    dspUsuario: TDataSetProvider;
    DSourceUsuario: TDataSource;
    cdsUsuario: TClientDataSet;
    SQueryUsuario: TSQLQuery;
    cdsUsuarioID: TIntegerField;
    cdsUsuarioUSUARIO: TStringField;
    cdsUsuarioSENHA: TStringField;
    cdsVendasID: TIntegerField;
    cdsVendasMESA: TStringField;
    cdsVendasCOD_FUNCIONARIO: TIntegerField;
    cdsVendasDATA_HORA: TDateField;
    cdsVendasVALOR_TOTAL: TFMTBCDField;
    cdsVendasSTATUS: TIntegerField;
    cdsVendasCOD_CLIENTE: TIntegerField;
    SQueryTemp2: TSQLQuery;
    cdsVendasNOME_PESSOALK: TStringField;
    cdsVendasNOME_USUARIOLK: TStringField;
    dspItens_Vendas: TDataSetProvider;
    DSourceItens_Venda: TDataSource;
    cdsItensVenda: TClientDataSet;
    SQueryItens_venda: TSQLQuery;
    cdsItensVendaID: TIntegerField;
    cdsItensVendaCOD_PRODUTO: TIntegerField;
    cdsItensVendaCOD_VENDA: TIntegerField;
    cdsItensVendaDESCRICAO: TStringField;
    cdsItensVendaVALOR: TFMTBCDField;
    cdsItensVendaSTATUS: TIntegerField;
    cdsItensVendaQTD: TIntegerField;
    procedure cdsPessoaAfterPost(DataSet: TDataSet);
    procedure cdsPessoaNewRecord(DataSet: TDataSet);
    procedure cdsPessoaAfterDelete(DataSet: TDataSet);
    procedure DSourcePessoaStateChange(Sender: TObject);
    procedure cdsPessoaBeforePost(DataSet: TDataSet);
    procedure cdsProfissaoNewRecord(DataSet: TDataSet);
    procedure DSourceProfissaoStateChange(Sender: TObject);
    procedure cdsPessoaAfterCancel(DataSet: TDataSet);
    procedure cdsProfissaoAfterPost(DataSet: TDataSet);
    procedure cdsPessoaCEPValidate(Sender: TField);
    procedure cdsPessoaDATANASCIMENTOSetText(Sender: TField;
      const Text: string);
    procedure cdsPessoaTELEFONEValidate(Sender: TField);
    procedure cdsPessoaEMAILValidate(Sender: TField);
    procedure cdsPessoaCPFValidate(Sender: TField);
    procedure cdsProfissaoAfterDelete(DataSet: TDataSet);
    procedure cdsProfissaoBeforeDelete(DataSet: TDataSet);
    procedure cdsProfissaoBeforePost(DataSet: TDataSet);
    procedure cdsProfissaoBeforeInsert(DataSet: TDataSet);
    procedure cdsCategoriaNewRecord(DataSet: TDataSet);
    procedure cdsCategoriaBeforeInsert(DataSet: TDataSet);
    procedure cdsCategoriaAfterPost(DataSet: TDataSet);
    procedure cdsCategoriaBeforePost(DataSet: TDataSet);
    procedure cdsCategoriaAfterDelete(DataSet: TDataSet);
    procedure DSourceProdutoStateChange(Sender: TObject);
    procedure cdsProdutoNewRecord(DataSet: TDataSet);
    procedure cdsProdutoAfterPost(DataSet: TDataSet);
    procedure cdsProdutoBeforePost(DataSet: TDataSet);
    procedure DSourceProdutoDataChange(Sender: TObject; Field: TField);
    procedure cdsUsuarioNewRecord(DataSet: TDataSet);
    procedure cdsUsuarioAfterPost(DataSet: TDataSet);
    procedure cdsUsuarioAfterDelete(DataSet: TDataSet);
    procedure cdsVendasNewRecord(DataSet: TDataSet);
    procedure cdsVendasBeforePost(DataSet: TDataSet);
    procedure cdsVendasAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UFrmPessoa, UProfissao, UConfiguracao, uFrmMenuVendas;

{$R *.dfm}


procedure Tdm.cdsCategoriaAfterDelete(DataSet: TDataSet);
begin
  try
    cdsCategoria.ApplyUpdates(0);
  except
    on E: Exception do
      begin
        raise Exception.Create('Erro ao deletar Categoria' + E.Message);
      end;
  end;
end;

procedure Tdm.cdsCategoriaAfterPost(DataSet: TDataSet);
begin
  try
    cdsCategoria.ApplyUpdates(0);
    cdsCategoria.First;
  except
    on E: Exception do
    begin
      raise Exception.Create('Erro ao inserir Profiss�o: ' + E.Message);
    end;
  end;
end;

procedure Tdm.cdsCategoriaBeforeInsert(DataSet: TDataSet);
begin
  FrmCategoria.DBGrid1.DataSource.DataSet.Last;
end;

procedure Tdm.cdsCategoriaBeforePost(DataSet: TDataSet);
var
Categoria : String;
begin
  SQueryCategoria.Close;
  SQueryCategoria.SQL.Clear;
  SQueryCategoria.SQL.Add('SELECT CATEGORIA FROM CATEGORIA WHERE CATEGORIA = ' + QuotedStr(Trim(cdsCategoriaCATEGORIA.AsString)));
  SQueryCategoria.Open;

  if not SQueryCategoria.IsEmpty then
    begin
      Categoria := SQueryCategoria['CATEGORIA'];
      cdsCategoriaCATEGORIA.Clear;
      cdsCategoriaCATEGORIA.FocusControl;
      raise Exception.Create('Profiss�o j� cadastrada! ' + Categoria);
    end;
end;

procedure Tdm.cdsCategoriaNewRecord(DataSet: TDataSet);
begin
  dm.SQueryCategoria.Close;
  dm.SQueryCategoria.SQL.Clear;
  dm.SQueryCategoria.SQL.Add('SELECT GEN_ID(gen_categoria_id, 1) as ID FROM RDB$DATABASE');
  dm.SQueryCategoria.Open;

  if not dm.SQueryCategoria.FieldByName('ID').IsNull then
    dm.cdsCategoriaID.AsInteger := dm.SQueryCategoria.FieldByName('ID').AsInteger;

end;

procedure Tdm.cdsPessoaAfterCancel(DataSet: TDataSet);
begin
  cdsPessoa.First;
end;


procedure Tdm.cdsPessoaAfterDelete(DataSet: TDataSet);
begin

  try
    cdsPessoa.ApplyUpdates(0);
    cdsPessoa.First;
  except
    raise Exception.Create('Erro ao deletar pessoa!');
  end;
end;


procedure Tdm.cdsPessoaAfterPost(DataSet: TDataSet);
var
cpfFormatado: String;
begin

  try
    cdsPessoa.ApplyUpdates(0);
    cdsPessoa.First;
  except
    raise Exception.Create('Erro ao inserir pessoa!');
  end;

end;


procedure Tdm.cdsPessoaBeforePost(DataSet: TDataSet);
var
CpfFormatado: String;
begin

    if Length(Trim(cdsPessoaNOME.AsString)) < 4 then
      raise Exception.Create('O campo nome precisa ter no m�nimo 4 caracteres');

    CpfFormatado := cdsPessoaCPF.AsString.Replace('.', '').Replace('-', '');

    if CpfFormatado.IsEmpty then
      begin
        cdsPessoaCPF.FocusControl;
        raise Exception.Create('O campo CPF precisa ser preenchido!');
      end;

end;


procedure Tdm.cdsPessoaCEPValidate(Sender: TField);
var
  CepFormatado, Locate: String;
  Estado: Integer;
begin

  if dm.cdsPessoa.State in [dsInsert, dsEdit] then
  begin
    CepFormatado := cdsPessoaCEP.AsString.Replace('-', '');

    if CepFormatado <> '' then
      begin

      FrmPessoa.RESTClient1.BaseURL := 'https://viacep.com.br/ws/' + FrmPessoa.dbCEP.Text + '/json';
      FrmPessoa.RESTRequest1.Execute;

      if FrmPessoa.RESTResponse1.StatusCode = 200 then
        begin

          cdsPessoaRUA.AsString := FrmPessoa.RESTResponse1.JSONValue.GetValue<string>('logradouro');
          cdsPessoaCOMPLEMENTO.AsString := FrmPessoa.RESTResponse1.JSONValue.GetValue<string>('complemento');
          cdsPessoaBAIRRO.AsString := FrmPessoa.RESTResponse1.JSONValue.GetValue<string>('bairro');
          cdsPessoaIBGE.AsString := FrmPessoa.RESTResponse1.JSONValue.GetValue<string>('ibge');
          cdsPessoaCIDADE.AsString := FrmPessoa.RESTResponse1.JSONValue.GetValue<string>('localidade');

          if cdsEstado.Locate('UF', FrmPessoa.RESTResponse1.JSONValue.GetValue<string>('uf'), []) then
            cdsPessoaID_UF.AsInteger := cdsEstadoID.AsInteger


      end
      else if FrmPessoa.RESTResponse1.StatusCode = 400 then
        begin
          raise Exception.Create('Erro consultar CEP: ' + FrmPessoa.RESTResponse1.StatusText);
          cdsPessoaCEP.FocusControl;
        end
      else if (FrmPessoa.RESTResponse1.StatusCode <> 200) or (FrmPessoa.RESTResponse1.StatusCode <> 400) then
        begin
          raise Exception.Create('Erro inesperado!');
        end;
      end;
  end;
end;


procedure Tdm.cdsPessoaCPFValidate(Sender: TField);

function ValidarCPF(const CPF: String): Boolean;

var
  I, Soma, Digito1, Digito2: Integer;
  NumArray: array[1..11] of Integer;
  CPFTemp, cpfFormatado: String;
begin

  // Remove caracteres especiais do CPF
  CPFTemp := CPF.Replace('-', '').Replace('.', '');

  // Verifica se o CPF tem 11 d�gitos
  if Length(CPFTemp) <> 11 then
    Exit(False);

  // Converte cada caractere para um n�mero
  for I := 1 to 11 do
    NumArray[I] := StrToInt(CPFTemp[I]);

  // Calcula o primeiro d�gito verificador
  Soma := 0;
  for I := 1 to 9 do
    Soma := Soma + NumArray[I] * (11 - I);
  Digito1 := (Soma * 10) mod 11;
  if Digito1 = 10 then
    Digito1 := 0;

  // Calcula o segundo d�gito verificador
  Soma := 0;
  for I := 1 to 10 do
    Soma := Soma + NumArray[I] * (12 - I);
  Digito2 := (Soma * 10) mod 11;
  if Digito2 = 10 then
    Digito2 := 0;

  // Verifica se os d�gitos calculados s�o iguais aos d�gitos do CPF
  Result := (Digito1 = NumArray[10]) and (Digito2 = NumArray[11]);
end;

begin

  if not ValidarCPF(Sender.AsString) then
    raise Exception.Create('CPF inv�lido. Por favor, verifique o n�mero do CPF.');

end;


procedure Tdm.cdsPessoaDATANASCIMENTOSetText(Sender: TField;  const Text: string);
var
  data: TDate;
begin
  try
    if Text = '  /  /    ' then
      sender.Clear
    else
      begin
        data := StrToDate(Text);
        sender.AsString := Text;
      end;

  Except
    on e:econverterror do
      begin
        raise Exception.Create('A Dada Digitada : ' + Text + ' N�o Correposnde a Uma Data V�lidadata');
      end;
  end;
end;


procedure Tdm.cdsPessoaEMAILValidate(Sender: TField);
var
  Email, EmailModelo: String;
begin

  if Trim(cdsPessoaEMAIL.AsString) <> '' then
      begin
        Email := Trim(cdsPessoaEMAIL.AsString);
        EmailModelo := '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$';

        if not TRegEx.IsMatch(Email, EmailModelo) then
        raise Exception.Create('Email inv�lido');
      end
end;


procedure Tdm.cdsPessoaNewRecord(DataSet: TDataSet);
begin

  dm.SQueryProf.Open;
  dm.cdsProfissao.Open;


  dm.SQueryTemp.Close;
  dm.SQueryTemp.SQL.Clear;
  dm.SQueryTemp.SQL.Add('SELECT GEN_ID(gen_pessoa_id, 1) as ID FROM RDB$DATABASE');
  dm.SQueryTemp.open;

  dm.cdsPessoaID.AsInteger := dm.SQueryTemp.FieldByName('ID').AsInteger;
end;


procedure Tdm.cdsPessoaTELEFONEValidate(Sender: TField);
var
  TelefoneFormatado: String;
begin

  if cdsPessoaTELEFONE.AsString.Trim = '' then
    Exit;

  TelefoneFormatado := cdsPessoaTELEFONE.AsString.Replace('(', '').Replace(')', '').Replace('-', '').Replace(' ', '');

  if Length(TelefoneFormatado) < 11 then
    raise Exception.Create('Erro! O telefone inserido � inv�lido!: ' + TelefoneFormatado);
end;


procedure Tdm.cdsProdutoAfterPost(DataSet: TDataSet);
begin

  try
    dm.cdsProduto.ApplyUpdates(0);
    dm.cdsProduto.First;
  except
    on E: Exception do
      begin
        raise Exception.Create('Erro inesperado!' + E.Message);
      end;

  end;
end;

procedure Tdm.cdsProdutoBeforePost(DataSet: TDataSet);
Var
Produtos: String;
begin

  SQueryProduto.Close;
  SQueryProduto.SQL.Clear;
  SQueryProduto.SQL.Add('SELECT DESCRICAO FROM PRODUTO WHERE DESCRICAO = ' + QuotedStr(Trim(cdsProdutoDESCRICAO.AsString)));
  SQueryProduto.Open;

  if not SQueryProduto.IsEmpty then
    begin
      Produtos := SQueryProduto['DESCRICAO'];
      cdsProdutoDESCRICAO.Clear;
      cdsProdutoDESCRICAO.FocusControl;
      raise Exception.Create('Produto j� cadastrado na base de dados!');
    end;

end;

procedure Tdm.cdsProdutoNewRecord(DataSet: TDataSet);
begin
  if not dm.cdsProduto.Active then
      dm.cdsProduto.Open;

  dm.cdsCategoria.Open;

  dm.SQueryTemp.Close;
  dm.SQueryTemp.SQL.Clear;
  dm.SQueryTemp.SQL.Add('SELECT GEN_ID(gen_produto_id, 1) as ID FROM RDB$DATABASE');
  dm.SQueryTemp.Open;

  dm.cdsProdutoID.AsInteger := dm.SQueryTemp.FieldByName('ID').AsInteger;


  dm.cdsProdutoDT_CADASTRO.AsDateTime := Date;
end;

procedure Tdm.cdsProfissaoAfterDelete(DataSet: TDataSet);
begin

  try
    cdsProfissao.ApplyUpdates(0);
  Except
    raise Exception.Create('Erro inesperado!');
  end;
end;


procedure Tdm.cdsProfissaoAfterPost(DataSet: TDataSet);
begin
  try
    cdsProfissao.ApplyUpdates(0);
    cdsProfissao.First;
  except
    on E: Exception do
    begin
      raise Exception.Create('Erro ao inserir Profiss�o: ' + E.Message);
    end;
  end;
end;


procedure Tdm.cdsProfissaoBeforeDelete(DataSet: TDataSet);
begin
  if DSourcePessoa.DataSet.Locate('ID_PROF', cdsProfissaoID.AsInteger, []) then
  begin
    cdsProfissao.Cancel;
    raise Exception.Create('N�o � poss�vel deletar registros que est� vinculado a uma pessoa!');
  end;

end;


procedure Tdm.cdsProfissaoBeforeInsert(DataSet: TDataSet);
begin
  FrmProfissao.DBGrid1.DataSource.DataSet.Last;
end;

procedure Tdm.cdsProfissaoBeforePost(DataSet: TDataSet);
var
Profissao: String;
begin

  SQueryProf.Close;
  SQueryProf.SQL.Clear;
  SQueryProf.SQL.Add('SELECT NOME FROM PROFISSAO WHERE NOME = ' + QuotedStr(Trim(cdsProfissaoNOME.AsString)));
  SQueryProf.Open;

  if not SQueryProf.IsEmpty then
    begin
      Profissao := SQueryProf['NOME'];
      cdsProfissaoNome.Clear;
      cdsProfissaoNOME.FocusControl;
      raise Exception.Create('Profiss�o j� cadastrada! ' + Profissao);
    end;
end;


procedure Tdm.cdsProfissaoNewRecord(DataSet: TDataSet);
begin

  dm.SQueryTemp.Close;
  dm.SQueryTemp.SQL.Clear;
  dm.SQueryTemp.SQL.Add('SELECT GEN_ID(gen_profissao_id, 1) as ID FROM RDB$DATABASE');
  dm.SQueryTemp.Open;

  if not dm.SQueryTemp.FieldByName('ID').IsNull then
    dm.cdsProfissaoID.AsInteger := dm.SQueryTemp.FieldByName('ID').AsInteger;

end;


procedure Tdm.cdsUsuarioAfterDelete(DataSet: TDataSet);
begin
cdsUsuario.ApplyUpdates(0);
end;

procedure Tdm.cdsUsuarioAfterPost(DataSet: TDataSet);
begin
  try
    dm.cdsUsuario.ApplyUpdates(0);
    dm.cdsUsuario.First;
  except
    raise Exception.Create('Error Message');
  end;
end;


procedure Tdm.cdsUsuarioNewRecord(DataSet: TDataSet);
begin
  dm.SQueryTemp.Close;
  dm.SQueryTemp.SQL.Clear;
  dm.SQueryTemp.SQL.Add('SELECT GEN_ID(gen_usuario_id, 1) as ID FROM RDB$DATABASE');
  dm.SQueryTemp.Open;

  if not dm.SQueryTemp.FieldByName('ID').IsNull then
    dm.cdsUsuarioID.AsInteger := dm.SQueryTemp.FieldByName('ID').AsInteger;
end;

procedure Tdm.cdsVendasAfterPost(DataSet: TDataSet);
begin
  dm.cdsVendas.ApplyUpdates(0);
end;

procedure Tdm.cdsVendasBeforePost(DataSet: TDataSet);
begin
  dm.cdsVendas.ApplyUpdates(0);
end;

procedure Tdm.cdsVendasNewRecord(DataSet: TDataSet);
begin
  dm.SQueryTemp.Close;
  dm.SQueryTemp.SQL.Clear;
  dm.SQueryTemp.SQL.Add('SELECT GEN_ID(gen_vendas_id, 1) as ID FROM RDB$DATABASE');
  dm.SQueryTemp.Open;

  if not dm.SQueryTemp.FieldByName('ID').IsNull then
    dm.cdsVendasID.AsInteger := dm.SQueryTemp.FieldByName('ID').AsInteger; // Atribui o novo ID

  dm.cdsVendasSTATUS.AsInteger := uFrmMenuVendas.Bandeira;
  dm.cdsVendasMESA.AsString := uFrmMenuVendas.ValorMesa;
  dm.cdsVendasCOD_CLIENTE.AsInteger := dm.cdsPessoaID.AsInteger;
  dm.cdsVendasCOD_FUNCIONARIO.AsInteger := dm.cdsUsuarioID.AsInteger;
  dm.cdsVendasDATA_HORA.AsDateTime := Now;
  dm.cdsVendasVALOR_TOTAL.AsFloat := 0.00;
end;



procedure Tdm.DSourcePessoaStateChange(Sender: TObject);
begin
  FrmPessoa.DBGrid1.Enabled := cdsPessoa.State = dsBrowse; // Modo de visualiza��o
end;


procedure Tdm.DSourceProdutoDataChange(Sender: TObject; Field: TField);
begin
  if Field = nil then
    FrmProdutos.cbStatus.ItemIndex := dm.cdsProdutoSTATUS.AsInteger;
end;

procedure Tdm.DSourceProdutoStateChange(Sender: TObject);
begin
  FrmProdutos.DBGrid1.Enabled := cdsProduto.State = dsBrowse; // Visualiza��o
end;

procedure Tdm.DSourceProfissaoStateChange(Sender: TObject);
begin
  FrmCategoria.DBGrid1.Enabled := cdsCategoria.State in [dsEdit, dsInsert];
  cdsCategoriaCATEGORIA.FocusControl;
end;


end.

