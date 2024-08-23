object FrmProfissao: TFrmProfissao
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Tela de Profiss'#227'o'
  ClientHeight = 258
  ClientWidth = 253
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 15
  object pnlFundoProf: TPanel
    Left = 0
    Top = 0
    Width = 253
    Height = 258
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 249
    ExplicitHeight = 257
    object DBGrid1: TDBGrid
      Left = 0
      Top = 46
      Width = 236
      Height = 195
      DataSource = dm.DSourceProfissao
      Enabled = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
    object DBNavigator1: TDBNavigator
      Left = 13
      Top = 15
      Width = 216
      Height = 25
      DataSource = dm.DSourceProfissao
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      TabOrder = 1
    end
  end
end
