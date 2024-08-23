object FrmProdutos: TFrmProdutos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Produtos'
  ClientHeight = 562
  ClientWidth = 438
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  StyleElements = []
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 15
  object pnlFundoProdutos: TPanel
    Left = 0
    Top = 0
    Width = 438
    Height = 562
    Align = alClient
    TabOrder = 0
    DesignSize = (
      438
      562)
    object lbDescricao: TLabel
      Left = 24
      Top = 11
      Width = 54
      Height = 15
      Caption = 'Descri'#231#227'o:'
    end
    object lbCodigo: TLabel
      Left = 280
      Top = 11
      Width = 42
      Height = 15
      Caption = 'C'#243'digo:'
    end
    object lbValor: TLabel
      Left = 24
      Top = 75
      Width = 29
      Height = 15
      Caption = 'Valor:'
    end
    object lbCategoria: TLabel
      Left = 280
      Top = 75
      Width = 54
      Height = 15
      Caption = 'Categoria:'
    end
    object lbDataCadastro: TLabel
      Left = 24
      Top = 142
      Width = 93
      Height = 15
      Caption = 'Data de Cadastro:'
    end
    object Label6: TLabel
      Left = 24
      Top = 216
      Width = 38
      Height = 15
      Caption = 'Buscar:'
    end
    object lbStatus: TLabel
      Left = 280
      Top = 142
      Width = 35
      Height = 15
      Caption = 'Status:'
    end
    object dbValor: TDBEdit
      Left = 24
      Top = 96
      Width = 64
      Height = 25
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataField = 'VALOR'
      DataSource = dm.DSourceProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object dbDescricao: TDBEdit
      Left = 24
      Top = 32
      Width = 217
      Height = 25
      DataField = 'DESCRICAO'
      DataSource = dm.DSourceProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object dbCodigo: TDBEdit
      Left = 280
      Top = 32
      Width = 44
      Height = 25
      DataField = 'ID'
      DataSource = dm.DSourceProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
    end
    object dbDtCadastro: TDBEdit
      Left = 24
      Top = 163
      Width = 113
      Height = 25
      DataField = 'DT_CADASTRO'
      DataSource = dm.DSourceProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBGrid1: TDBGrid
      Left = 24
      Top = 274
      Width = 404
      Height = 263
      BorderStyle = bsNone
      DataSource = dm.DSourceProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_CATEGORIA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DT_CADASTRO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object edtPesquisar: TEdit
      Left = 68
      Top = 213
      Width = 125
      Height = 23
      TabOrder = 5
      OnKeyDown = edtPesquisarKeyDown
    end
    object btnPesquisar: TButton
      Left = 199
      Top = 211
      Width = 65
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 6
      OnClick = btnPesquisarClick
    end
    object btnNovo: TButton
      Left = 24
      Top = 521
      Width = 70
      Height = 25
      Caption = 'Novo - F1'
      TabOrder = 7
      OnClick = btnNovoClick
    end
    object btnSalvar: TButton
      Left = 128
      Top = 521
      Width = 70
      Height = 25
      Caption = 'Salvar - F2'
      Enabled = False
      TabOrder = 8
      OnClick = btnSalvarClick
    end
    object btnEditar: TButton
      Left = 241
      Top = 521
      Width = 70
      Height = 25
      Caption = 'Editar - F3'
      Enabled = False
      TabOrder = 9
      OnClick = btnEditarClick
    end
    object btnCancelar: TButton
      Left = 357
      Top = 521
      Width = 70
      Height = 25
      Caption = 'Cancelar - F4'
      Enabled = False
      TabOrder = 10
      OnClick = btnCancelarClick
    end
    object btnUltimo: TButton
      Left = 377
      Top = 211
      Width = 45
      Height = 25
      Caption = '>>'
      TabOrder = 11
      OnClick = btnUltimoClick
    end
    object btnProximo: TButton
      Left = 270
      Top = 211
      Width = 45
      Height = 25
      Caption = '>'
      TabOrder = 12
      OnClick = btnProximoClick
    end
    object btnPrimeiro: TButton
      Left = 326
      Top = 211
      Width = 45
      Height = 25
      Caption = '>|'
      TabOrder = 13
      OnClick = btnPrimeiroClick
    end
    object cbCategoria: TDBLookupComboBox
      Left = 280
      Top = 96
      Width = 148
      Height = 25
      DataField = 'ID_CATEGORIA'
      DataSource = dm.DSourceProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'ID'
      ListField = 'CATEGORIA'
      ListSource = dm.DSourceCategoria
      ParentFont = False
      TabOrder = 2
    end
  end
  object cbStatus: TComboBox
    Left = 280
    Top = 163
    Width = 145
    Height = 23
    ItemIndex = 0
    TabOrder = 1
    Text = 'ATIVO'
    OnChange = cbStatusChange
    Items.Strings = (
      'ATIVO'
      'INATIVO')
  end
  object MainMenu1: TMainMenu
    Left = 176
    Top = 120
    object Categoria1: TMenuItem
      Caption = 'Categoria'
      OnClick = Categoria1Click
    end
    object Sairt1: TMenuItem
      Caption = 'Sair'
    end
  end
end
