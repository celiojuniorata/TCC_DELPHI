object dm: Tdm
  Height = 480
  Width = 640
  object dspPessoa: TDataSetProvider
    DataSet = SQuery
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
    object cdsPessoaDATANASCIMENTO: TDateField
      DisplayLabel = 'DATA DE NASCIMENTO'
      DisplayWidth = 8
      FieldName = 'DATANASCIMENTO'
      EditMask = '!99/99/0000;0;_'
    end
    object cdsPessoaTELEFONE: TStringField
      DisplayWidth = 15
      FieldName = 'TELEFONE'
      EditMask = '!\(99\)00000-0000;0;_'
    end
    object cdsPessoaEMAIL: TStringField
      DisplayWidth = 15
      FieldName = 'EMAIL'
      Size = 100
    end
    object cdsPessoaRUA: TStringField
      FieldName = 'RUA'
      Size = 200
    end
    object cdsPessoaCPF: TStringField
      DisplayWidth = 11
      FieldName = 'CPF'
      Required = True
      EditMask = '000.000.000-00;0;_'
      Size = 11
    end
    object cdsPessoaCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000-000;0;_'
      Size = 8
    end
    object cdsPessoaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsPessoaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cdsPessoaIBGE: TStringField
      FieldName = 'IBGE'
      Size = 10
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
      
        'Database=C:\Users\conta\OneDrive\Documentos\Embarcadero\Studio\P' +
        'rojects\TASK\DBOPT\CRUD.FDB'
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
    Left = 552
    Top = 40
  end
  object SQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select  * from pessoa')
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
    Left = 128
    Top = 32
  end
end
