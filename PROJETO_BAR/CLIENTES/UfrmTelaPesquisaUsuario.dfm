object FrmTelaPesquisaCliente: TFrmTelaPesquisaCliente
  Left = 0
  Top = 0
  Caption = 'Tela de Pesquisa de Clientes'
  ClientHeight = 278
  ClientWidth = 419
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object pnlFundoPesquisar: TPanel
    Left = 0
    Top = 0
    Width = 419
    Height = 57
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 415
    object Label1: TLabel
      Left = 8
      Top = 17
      Width = 72
      Height = 20
      Caption = 'Pesquisar:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtPesquisarCliente: TEdit
      Left = 86
      Top = 15
      Width = 169
      Height = 23
      TabOrder = 0
      TextHint = 'Pesquise por c'#243'digo ou por nome de cliente...'
    end
    object btnPesquisar: TButton
      Left = 269
      Top = 17
      Width = 65
      Height = 22
      Caption = 'Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnPesquisarClick
    end
    object btnOk: TButton
      Left = 340
      Top = 17
      Width = 65
      Height = 22
      Caption = 'Ok'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnOkClick
    end
  end
  object pnlFundoGrid: TPanel
    Left = 0
    Top = 57
    Width = 419
    Height = 221
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 415
    ExplicitHeight = 220
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 417
      Height = 219
      Align = alClient
      DataSource = dm.DSourcePessoa
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
end
