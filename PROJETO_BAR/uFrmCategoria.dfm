object FrmCategoria: TFrmCategoria
  Left = 0
  Top = 0
  Caption = 'Cadastro de Categorias'
  ClientHeight = 241
  ClientWidth = 246
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object pnlFundoCategorias: TPanel
    Left = 0
    Top = 0
    Width = 246
    Height = 241
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 242
    ExplicitHeight = 240
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 15
      Width = 216
      Height = 25
      DataSource = dm.DSourceCategoria
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 46
      Width = 236
      Height = 195
      DataSource = dm.DSourceCategoria
      Enabled = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
end
