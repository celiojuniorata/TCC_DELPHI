object FrmTelaInicial: TFrmTelaInicial
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Tela Inicial'
  ClientHeight = 652
  ClientWidth = 1025
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  WindowState = wsMaximized
  TextHeight = 15
  object pnlFundoTelaVendas: TPanel
    Left = 0
    Top = 0
    Width = 1025
    Height = 652
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1021
    ExplicitHeight = 651
    object Panel1: TPanel
      Left = 352
      Top = 192
      Width = 209
      Height = 105
      Caption = 'MESAS'
      Color = clActiveCaption
      ParentBackground = False
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 32
      Top = 192
      Width = 209
      Height = 105
      Caption = 'VENDAS'
      Color = clActiveCaption
      ParentBackground = False
      TabOrder = 1
    end
    object Panel3: TPanel
      Left = 32
      Top = 352
      Width = 209
      Height = 105
      Caption = 'RECEBIMENTOS'
      Color = clActiveCaption
      ParentBackground = False
      TabOrder = 2
    end
    object Panel4: TPanel
      Left = 32
      Top = 24
      Width = 209
      Height = 105
      Caption = 'CLIENTES'
      Color = clActiveCaption
      ParentBackground = False
      TabOrder = 3
    end
    object Panel5: TPanel
      Left = 352
      Top = 24
      Width = 209
      Height = 105
      Caption = 'USU'#193'RIOS'
      Color = clActiveCaption
      ParentBackground = False
      TabOrder = 4
    end
    object Panel6: TPanel
      Left = 744
      Top = 40
      Width = 209
      Height = 577
      Caption = '-----'
      TabOrder = 5
    end
    object CAIXA: TPanel
      Left = 352
      Top = 352
      Width = 209
      Height = 105
      Caption = 'FLUXO DE CAIXA'
      Color = clActiveCaption
      ParentBackground = False
      TabOrder = 6
    end
  end
  object MainMenu1: TMainMenu
    Left = 696
    Top = 8
    object Configuraes1: TMenuItem
      Caption = 'Configura'#231#245'es'
    end
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
    end
  end
end
