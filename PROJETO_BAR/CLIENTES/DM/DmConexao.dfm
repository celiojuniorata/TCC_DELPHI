object dm: Tdm
  Height = 704
  Width = 1136
  object dspPessoa: TDataSetProvider
    DataSet = SQueryPessoa
    Left = 48
    Top = 104
  end
  object DSourcePessoa: TDataSource
    DataSet = cdsPessoa
    OnStateChange = DSourcePessoaStateChange
    Left = 48
    Top = 248
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoa'
    BeforePost = cdsPessoaBeforePost
    AfterPost = cdsPessoaAfterPost
    AfterCancel = cdsPessoaAfterCancel
    AfterDelete = cdsPessoaAfterDelete
    OnNewRecord = cdsPessoaNewRecord
    Left = 48
    Top = 176
    object cdsPessoaID: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayWidth = 3
      FieldName = 'ID'
    end
    object cdsPessoaNOME: TStringField
      DisplayWidth = 15
      FieldName = 'NOME'
      Size = 100
    end
    object cdsPessoaCPF: TStringField
      DisplayWidth = 11
      FieldName = 'CPF'
      Required = True
      OnValidate = cdsPessoaCPFValidate
      EditMask = '999.999.999-99;0;_'
      Size = 11
    end
    object cdsPessoaDATANASCIMENTO: TDateField
      DisplayLabel = 'DATA DE NASCIMENTO'
      DisplayWidth = 14
      FieldName = 'DATANASCIMENTO'
      OnSetText = cdsPessoaDATANASCIMENTOSetText
      EditMask = '!99/99/9999;1;_'
    end
    object cdsPessoaTELEFONE: TStringField
      DisplayWidth = 14
      FieldName = 'TELEFONE'
      OnValidate = cdsPessoaTELEFONEValidate
      EditMask = '!\(99\)99999-9999;0;_'
    end
    object cdsPessoaEMAIL: TStringField
      DisplayWidth = 10
      FieldName = 'EMAIL'
      OnValidate = cdsPessoaEMAILValidate
      Size = 100
    end
    object cdsPessoaRUA: TStringField
      DisplayWidth = 20
      FieldName = 'RUA'
      Size = 200
    end
    object cdsPessoaCEP: TStringField
      FieldName = 'CEP'
      OnValidate = cdsPessoaCEPValidate
      EditMask = '99999-999;0;_'
      Size = 8
    end
    object cdsPessoaBAIRRO: TStringField
      DisplayWidth = 10
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsPessoaCOMPLEMENTO: TStringField
      DisplayWidth = 10
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cdsPessoaIBGE: TStringField
      DisplayWidth = 8
      FieldName = 'IBGE'
      Size = 10
    end
    object cdsPessoaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object cdsPessoaNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object cdsPessoaID_PROF: TIntegerField
      FieldName = 'ID_PROF'
      Visible = False
    end
    object cdsPessoaID_UF: TIntegerField
      FieldName = 'ID_UF'
      Visible = False
    end
  end
  object conexao: TSQLConnection
    DriverName = 'Interbase'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXInterbase'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXInterBaseDriver2' +
        '80.bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=28.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXInterbaseMetaDataCommandFactory,DbxInt' +
        'erBaseDriver280.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXInterbaseMetaDataCommand' +
        'Factory,Borland.Data.DbxInterBaseDriver,Version=28.0.0.0,Culture' +
        '=neutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=C:\Windows\System32\dbxfb.dll'
      'LibraryNameOsx=libsqlib.dylib'
      'VendorLib=C:\Windows\System32\fbclient.dll'
      'VendorLibWin64=ibclient64.dll'
      'VendorLibOsx=libgds.dylib'
      
        'Database=C:\Users\Pichau\Documents\Embarcadero\Studio\Projects\P' +
        'ROJETO_BAR\DBOPT\CRUD.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'DisplayDriverName=InterBase Server'
      'RoleName=RoleName'
      'ServerCharSet='
      'BlobSize=-1'
      'ErrorResourceFile='
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    Connected = True
    Left = 1016
    Top = 24
  end
  object SQueryPessoa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select  * from pessoa order by id')
    SQLConnection = conexao
    Left = 48
    Top = 32
  end
  object SQueryTemp: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select  * from pessoas')
    SQLConnection = conexao
    Left = 48
    Top = 336
  end
  object dspProfissao: TDataSetProvider
    DataSet = SQueryProf
    Left = 144
    Top = 104
  end
  object cdsProfissao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProfissao'
    BeforeInsert = cdsProfissaoBeforeInsert
    BeforePost = cdsProfissaoBeforePost
    AfterPost = cdsProfissaoAfterPost
    BeforeDelete = cdsProfissaoBeforeDelete
    AfterDelete = cdsProfissaoAfterDelete
    OnNewRecord = cdsProfissaoNewRecord
    Left = 144
    Top = 176
    object cdsProfissaoID: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayWidth = 3
      FieldName = 'ID'
      Visible = False
    end
    object cdsProfissaoNOME: TStringField
      DisplayWidth = 30
      FieldName = 'NOME'
      Size = 25
    end
  end
  object DSourceProfissao: TDataSource
    DataSet = cdsProfissao
    OnStateChange = DSourceProfissaoStateChange
    Left = 144
    Top = 248
  end
  object cdsEstado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstado'
    AfterPost = cdsProfissaoAfterPost
    OnNewRecord = cdsProfissaoNewRecord
    Left = 240
    Top = 176
    object cdsEstadoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEstadoUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
  end
  object SQueryEstado: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select  * from estado')
    SQLConnection = conexao
    Left = 240
    Top = 32
  end
  object dspEstado: TDataSetProvider
    DataSet = SQueryEstado
    Left = 240
    Top = 104
  end
  object DSourceEstado: TDataSource
    DataSet = cdsEstado
    Left = 240
    Top = 248
  end
  object SQueryProf: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from profissao order by nome')
    SQLConnection = conexao
    Left = 144
    Top = 32
  end
  object dspCategoria: TDataSetProvider
    DataSet = SQueryCategoria
    Left = 336
    Top = 104
  end
  object cdsCategoria: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCategoria'
    BeforeInsert = cdsCategoriaBeforeInsert
    BeforePost = cdsCategoriaBeforePost
    AfterPost = cdsCategoriaAfterPost
    AfterDelete = cdsCategoriaAfterDelete
    OnNewRecord = cdsCategoriaNewRecord
    Left = 336
    Top = 176
    object cdsCategoriaID: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayWidth = 2
      FieldName = 'ID'
      Required = True
    end
    object cdsCategoriaCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 35
    end
  end
  object DSourceCategoria: TDataSource
    DataSet = cdsCategoria
    OnStateChange = DSourceProfissaoStateChange
    Left = 336
    Top = 248
  end
  object SQueryCategoria: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from categoria')
    SQLConnection = conexao
    Left = 336
    Top = 32
  end
  object dspProduto: TDataSetProvider
    DataSet = SQueryProduto
    Left = 424
    Top = 104
  end
  object DSourceProduto: TDataSource
    DataSet = cdsProduto
    OnStateChange = DSourceProdutoStateChange
    OnDataChange = DSourceProdutoDataChange
    Left = 424
    Top = 248
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    BeforePost = cdsProdutoBeforePost
    AfterPost = cdsProdutoAfterPost
    OnNewRecord = cdsProdutoNewRecord
    Left = 424
    Top = 176
    object cdsProdutoID: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 2
      FieldName = 'ID'
    end
    object cdsProdutoDESCRICAO: TStringField
      Alignment = taCenter
      DisplayLabel = 'DESCRICAO PRODUTO'
      DisplayWidth = 20
      FieldName = 'DESCRICAO'
      Size = 45
    end
    object cdsProdutoVALOR: TFMTBCDField
      Alignment = taCenter
      DisplayLabel = 'PRE'#199'O'
      DisplayWidth = 8
      FieldName = 'VALOR'
      DisplayFormat = '#,##0.00'
      Precision = 9
      Size = 2
    end
    object cdsProdutoID_CATEGORIA: TIntegerField
      Alignment = taCenter
      FieldName = 'ID_CATEGORIA'
      Visible = False
    end
    object cdsProdutoDT_CADASTRO: TDateField
      Alignment = taCenter
      DisplayLabel = 'DATA CADASTRO'
      DisplayWidth = 14
      FieldName = 'DT_CADASTRO'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsProdutoSTATUS: TIntegerField
      Alignment = taCenter
      DisplayWidth = 2
      FieldName = 'STATUS'
    end
  end
  object SQueryProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select  * from produto')
    SQLConnection = conexao
    Left = 424
    Top = 32
  end
  object dspVendas: TDataSetProvider
    DataSet = SQueryVendas
    Left = 504
    Top = 104
  end
  object DSourceVendas: TDataSource
    DataSet = cdsVendas
    OnStateChange = DSourceProdutoStateChange
    OnDataChange = DSourceProdutoDataChange
    Left = 504
    Top = 248
  end
  object cdsVendas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendas'
    BeforePost = cdsVendasBeforePost
    AfterPost = cdsVendasAfterPost
    OnNewRecord = cdsVendasNewRecord
    Left = 504
    Top = 176
    object cdsVendasID: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayWidth = 2
      FieldName = 'ID'
    end
    object cdsVendasMESA: TStringField
      FieldName = 'MESA'
      Size = 5
    end
    object cdsVendasCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      ProviderFlags = []
    end
    object cdsVendasDATA_HORA: TDateField
      FieldName = 'DATA_HORA'
    end
    object cdsVendasVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 9
      Size = 2
    end
    object cdsVendasSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object cdsVendasCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      ProviderFlags = []
    end
    object cdsVendasNOME_PESSOALK: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME_PESSOALK'
      LookupDataSet = cdsPessoa
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'COD_CLIENTE'
      ProviderFlags = []
      Size = 25
      Lookup = True
    end
    object cdsVendasNOME_USUARIOLK: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME_USUARIOLK'
      LookupDataSet = cdsUsuario
      LookupKeyFields = 'ID'
      LookupResultField = 'USUARIO'
      KeyFields = 'COD_FUNCIONARIO'
      ProviderFlags = []
      Size = 25
      Lookup = True
    end
  end
  object SQueryVendas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select  * from vendas')
    SQLConnection = conexao
    Left = 504
    Top = 32
  end
  object dspUsuario: TDataSetProvider
    DataSet = SQueryUsuario
    Left = 576
    Top = 104
  end
  object DSourceUsuario: TDataSource
    DataSet = cdsUsuario
    OnStateChange = DSourceProdutoStateChange
    OnDataChange = DSourceProdutoDataChange
    Left = 576
    Top = 248
  end
  object cdsUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUsuario'
    AfterPost = cdsUsuarioAfterPost
    AfterDelete = cdsUsuarioAfterDelete
    OnNewRecord = cdsUsuarioNewRecord
    Left = 576
    Top = 176
    object cdsUsuarioID: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayWidth = 2
      FieldName = 'ID'
      Required = True
    end
    object cdsUsuarioUSUARIO: TStringField
      DisplayWidth = 15
      FieldName = 'USUARIO'
      Size = 25
    end
    object cdsUsuarioSENHA: TStringField
      DisplayWidth = 15
      FieldName = 'SENHA'
      Size = 10
    end
  end
  object SQueryUsuario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from usuario')
    SQLConnection = conexao
    Left = 576
    Top = 32
  end
  object SQueryTemp2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select  * from vendas')
    SQLConnection = conexao
    Left = 120
    Top = 336
  end
  object dspItens_Vendas: TDataSetProvider
    DataSet = SQueryItens_venda
    Left = 648
    Top = 104
  end
  object DSourceItens_Venda: TDataSource
    DataSet = cdsItensVenda
    Left = 648
    Top = 248
  end
  object cdsItensVenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItens_Vendas'
    Left = 648
    Top = 176
    object cdsItensVendaID: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayWidth = 2
      FieldName = 'ID'
      Visible = False
    end
    object cdsItensVendaCOD_PRODUTO: TIntegerField
      DisplayWidth = 2
      FieldName = 'COD_PRODUTO'
    end
    object cdsItensVendaQTD: TIntegerField
      FieldName = 'QTD'
    end
    object cdsItensVendaCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Visible = False
    end
    object cdsItensVendaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
    object cdsItensVendaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 9
      Size = 2
    end
    object cdsItensVendaSTATUS: TIntegerField
      FieldName = 'STATUS'
      Visible = False
    end
  end
  object SQueryItens_venda: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from ITENS_VENDA')
    SQLConnection = conexao
    Left = 648
    Top = 32
  end
end
