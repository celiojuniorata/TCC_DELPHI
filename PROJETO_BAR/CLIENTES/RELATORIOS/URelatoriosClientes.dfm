object FrmRelatorioClientes: TFrmRelatorioClientes
  Left = 0
  Top = 0
  Caption = 'FrmRelatorioClientes'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object frListagemDeClientes: TfrxReport
    Version = '2024.2.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45486.115012789300000000
    ReportOptions.LastChange = 45486.115012789300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 48
    Top = 33
    Datasets = <
      item
        DataSet = frxDsRelCliente
        DataSetName = 'frxDsRelCliente'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 14211288
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 15790320
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 15790320
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object RelatorioClientes: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110717773437500000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            'Listagem de Clientes')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 83.149660000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110236220472000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Width = 31.540913027464500000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'ID')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 31.540913030000000000
          Width = 172.114133890000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 203.655046920000000000
          Width = 81.667583660000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'CPF')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 285.322630580000000000
          Width = 93.116547380000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'TELEFONE')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 378.439177956738000000
          Width = 210.671058263735000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'EMAIL')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 589.110236220472000000
          Width = 129.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'DATANASCIMENTO')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        DataSet = frxDsRelCliente
        DataSetName = 'frxDsRelCliente'
        RowCount = 0
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Width = 31.540913027464500000
          Height = 18.897650000000000000
          DataField = 'ID'
          DataSet = frxDsRelCliente
          DataSetName = 'frxDsRelCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDsRelCliente."ID"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 31.540913030000000000
          Width = 141.877893890000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'NOME'
          DataSet = frxDsRelCliente
          DataSetName = 'frxDsRelCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDsRelCliente."NOME"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 177.198336910000000000
          Width = 108.124293660000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'CPF'
          DataSet = frxDsRelCliente
          DataSetName = 'frxDsRelCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDsRelCliente."CPF"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 285.322630580000000000
          Width = 108.234667380000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'TELEFONE'
          DataSet = frxDsRelCliente
          DataSetName = 'frxDsRelCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDsRelCliente."TELEFONE"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 393.557297960000000000
          Width = 199.332468260000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'EMAIL'
          DataSet = frxDsRelCliente
          DataSetName = 'frxDsRelCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDsRelCliente."EMAIL"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo14: TfrxMemoView
          Description = 'DT_NASCIMENTO'
          AllowVectorExport = True
          Left = 585.330706220000000000
          Width = 132.779530000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'DATANASCIMENTO'
          DataSet = frxDsRelCliente
          DataSetName = 'frxDsRelCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDsRelCliente."DATANASCIMENTO"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object FooterRelClientes: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 245.669450000000000000
        Width = 718.110700000000000000
        object Memo15: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110717773437500000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo17: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 642.520117773437500000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
    end
  end
  object frxDsRelCliente: TfrxDBDataset
    UserName = 'frxDsRelCliente'
    CloseDataSource = False
    DataSet = SQLqueryClientes
    BCDToCurrency = False
    DataSetOptions = []
    Left = 48
    Top = 104
    FieldDefs = <
      item
        FieldName = 'ID'
      end
      item
        FieldName = 'NOME'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'DATANASCIMENTO'
        FieldType = fftDateTime
      end
      item
        FieldName = 'RUA'
        FieldType = fftString
        Size = 200
      end
      item
        FieldName = 'TELEFONE'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'EMAIL'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'CPF'
        FieldType = fftString
        Size = 11
      end
      item
        FieldName = 'CEP'
        FieldType = fftString
      end
      item
        FieldName = 'BAIRRO'
        FieldType = fftString
        Size = 30
      end
      item
        FieldName = 'COMPLEMENTO'
        FieldType = fftString
        Size = 30
      end
      item
        FieldName = 'IBGE'
        FieldType = fftString
      end
      item
        FieldName = 'CIDADE'
        FieldType = fftString
        Size = 30
      end
      item
        FieldName = 'ID_PROF'
      end
      item
        FieldName = 'NUMERO'
      end
      item
        FieldName = 'ID_UF'
      end>
  end
  object SQLqueryClientes: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM PESSOA')
    SQLConnection = dm.conexao
    Left = 48
    Top = 168
    object SQLqueryClientesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SQLqueryClientesNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object SQLqueryClientesDATANASCIMENTO: TDateField
      FieldName = 'DATANASCIMENTO'
    end
    object SQLqueryClientesRUA: TStringField
      FieldName = 'RUA'
      Size = 200
    end
    object SQLqueryClientesTELEFONE: TStringField
      FieldName = 'TELEFONE'
      EditMask = '!\(99\)99999-9999;0;_'
    end
    object SQLqueryClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object SQLqueryClientesCPF: TStringField
      FieldName = 'CPF'
      EditMask = '999.999.999-99;0;_'
      Size = 11
    end
    object SQLqueryClientesCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object SQLqueryClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object SQLqueryClientesCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object SQLqueryClientesIBGE: TStringField
      FieldName = 'IBGE'
      Size = 10
    end
    object SQLqueryClientesCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object SQLqueryClientesID_PROF: TIntegerField
      FieldName = 'ID_PROF'
    end
    object SQLqueryClientesNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object SQLqueryClientesID_UF: TIntegerField
      FieldName = 'ID_UF'
    end
  end
  object SQLqueryClientesEnd: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select PESS.ID,'
      '       PESS.NOME,'
      '       PESS.CPF,'
      '       PESS.RUA,'
      '       PESS.BAIRRO,'
      '       PESS.NUMERO,'
      '       PESS.CIDADE,'
      '       ES.UF,'
      '       PESS.COMPLEMENTO,'
      '       PESS.IBGE'
      'from PESSOA PESS'
      'inner join ESTADO ES on PESS.ID_UF = ES.ID'
      'order by pess.nome')
    SQLConnection = dm.conexao
    Left = 160
    Top = 168
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object DateField1: TDateField
      FieldName = 'DATANASCIMENTO'
    end
    object StringField2: TStringField
      FieldName = 'RUA'
      Size = 200
    end
    object StringField3: TStringField
      FieldName = 'TELEFONE'
    end
    object StringField4: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object StringField5: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object StringField6: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object StringField7: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object StringField8: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object StringField9: TStringField
      FieldName = 'IBGE'
      Size = 10
    end
    object StringField10: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_PROF'
    end
    object IntegerField3: TIntegerField
      FieldName = 'NUMERO'
    end
    object IntegerField4: TIntegerField
      FieldName = 'ID_UF'
    end
  end
  object frmListagemClienteEndereco: TfrxReport
    Version = '2024.2.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45486.144563067100000000
    ReportOptions.LastChange = 45486.144563067100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 160
    Top = 33
    Datasets = <
      item
        DataSet = frxDsRelCliente
        DataSetName = 'frxDsRelCliente'
      end
      item
        DataSet = frxDsRelClienteEnd
        DataSetName = 'frxDsRelClienteEnd'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 14211288
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 15790320
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 15790320
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110717773437500000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            'Report')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110236220472000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Width = 22.291657572654200000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'ID')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 22.291657570000000000
          Width = 66.581645420000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 88.873302990000000000
          Width = 103.715958180000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'CPF')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 200.148321170000000000
          Width = 119.469512050000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'RUA')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 319.617833218609000000
          Width = 35.077178785487600000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'CEP')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 354.695012004097000000
          Width = 70.660493930796000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'BAIRRO')
          ParentFont = False
          Style = 'Header'
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 425.355505934892000000
          Width = 64.301227271964100000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'NUMERO')
          ParentFont = False
          Style = 'Header'
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 489.656733206857000000
          Width = 68.833990900391200000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'CIDADE')
          ParentFont = False
          Style = 'Header'
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 558.490724107248000000
          Width = 119.976075751725000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'COMPLEMENTO')
          ParentFont = False
          Style = 'Header'
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 678.466799858973000000
          Width = 39.643436361499600000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'IBGE')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        DataSet = frxDsRelClienteEnd
        DataSetName = 'frxDsRelClienteEnd'
        RowCount = 0
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Width = 22.291657572654200000
          Height = 18.897650000000000000
          DataField = 'ID'
          DataSet = frxDsRelClienteEnd
          DataSetName = 'frxDsRelClienteEnd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDsRelClienteEnd."ID"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 22.291657572654200000
          Width = 104.376945419136000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frxDsRelClienteEnd
          DataSetName = 'frxDsRelClienteEnd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDsRelClienteEnd."NOME"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 126.668602991790000000
          Width = 35.684418179070900000
          Height = 18.897650000000000000
          DataField = 'CPF'
          DataSet = frxDsRelClienteEnd
          DataSetName = 'frxDsRelClienteEnd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDsRelClienteEnd."CPF"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 162.353021170000000000
          Width = 157.264812050000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'RUA'
          DataSet = frxDsRelClienteEnd
          DataSetName = 'frxDsRelClienteEnd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDsRelClienteEnd."RUA"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 319.617833218609000000
          Width = 35.077178785487600000
          Height = 18.897650000000000000
          DataField = 'CEP'
          DataSet = frxDsRelClienteEnd
          DataSetName = 'frxDsRelClienteEnd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDsRelClienteEnd."CEP"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 354.695012004097000000
          Width = 70.660493930796000000
          Height = 18.897650000000000000
          DataField = 'BAIRRO'
          DataSet = frxDsRelClienteEnd
          DataSetName = 'frxDsRelClienteEnd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDsRelClienteEnd."BAIRRO"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 425.355505934892000000
          Width = 64.301227271964100000
          Height = 18.897650000000000000
          DataField = 'NUMERO'
          DataSet = frxDsRelClienteEnd
          DataSetName = 'frxDsRelClienteEnd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDsRelClienteEnd."NUMERO"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 489.656733206857000000
          Width = 68.833990900391200000
          Height = 18.897650000000000000
          DataField = 'CIDADE'
          DataSet = frxDsRelClienteEnd
          DataSetName = 'frxDsRelClienteEnd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDsRelClienteEnd."CIDADE"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 558.490724107248000000
          Width = 119.976075751725000000
          Height = 18.897650000000000000
          DataField = 'COMPLEMENTO'
          DataSet = frxDsRelClienteEnd
          DataSetName = 'frxDsRelClienteEnd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDsRelClienteEnd."COMPLEMENTO"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 678.466799858973000000
          Width = 39.643436361499600000
          Height = 18.897650000000000000
          DataField = 'IBGE'
          DataSet = frxDsRelClienteEnd
          DataSetName = 'frxDsRelClienteEnd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDsRelClienteEnd."IBGE"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        object Memo23: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110717773437500000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo25: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 642.520117773437500000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
    end
  end
  object frxDsRelClienteEnd: TfrxDBDataset
    UserName = 'frxDsRelClienteEnd'
    CloseDataSource = False
    DataSet = SQLqueryClientesEnd
    BCDToCurrency = False
    DataSetOptions = []
    Left = 160
    Top = 104
    FieldDefs = <
      item
        FieldName = 'ID'
      end
      item
        FieldName = 'NOME'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'DATANASCIMENTO'
        FieldType = fftDateTime
      end
      item
        FieldName = 'RUA'
        FieldType = fftString
        Size = 200
      end
      item
        FieldName = 'TELEFONE'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'EMAIL'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'CPF'
        FieldType = fftString
        Size = 11
      end
      item
        FieldName = 'CEP'
        FieldType = fftString
      end
      item
        FieldName = 'BAIRRO'
        FieldType = fftString
        Size = 30
      end
      item
        FieldName = 'COMPLEMENTO'
        FieldType = fftString
        Size = 30
      end
      item
        FieldName = 'IBGE'
        FieldType = fftString
      end
      item
        FieldName = 'CIDADE'
        FieldType = fftString
        Size = 30
      end
      item
        FieldName = 'ID_PROF'
      end
      item
        FieldName = 'NUMERO'
      end
      item
        FieldName = 'ID_UF'
      end>
  end
end
