object FrmConfiguracao: TFrmConfiguracao
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Tela de Configura'#231#227'o de Pessoas'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 624
    object Label4: TLabel
      Left = 96
      Top = -5
      Width = 418
      Height = 38
      Caption = 'Tela de configura'#231#227'o de pessoas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -28
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 628
    Height = 401
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 624
    ExplicitHeight = 400
    object Label1: TLabel
      Left = 31
      Top = 104
      Width = 178
      Height = 15
      Caption = 'Obrigar preenchimento do E-mail'
    end
    object Label2: TLabel
      Left = 31
      Top = 64
      Width = 193
      Height = 15
      Caption = 'Obrigar preenchimento do endere'#231'o'
    end
    object Label3: TLabel
      Left = 31
      Top = 32
      Width = 165
      Height = 15
      Caption = 'Obrigar preenchimento do CPF'
    end
    object Label5: TLabel
      Left = 31
      Top = 144
      Width = 169
      Height = 15
      Caption = 'N'#227'o alterar CPF ap'#243's informado'
    end
    object cbObrigaCPF: TCheckBox
      Left = 8
      Top = 32
      Width = 17
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object cbObrigaEndereco: TCheckBox
      Left = 8
      Top = 64
      Width = 17
      Height = 17
      TabOrder = 1
    end
    object dbObrigaEmail: TCheckBox
      Left = 8
      Top = 104
      Width = 17
      Height = 17
      TabOrder = 2
    end
    object cbNaoAlteraCPF: TCheckBox
      Left = 8
      Top = 144
      Width = 17
      Height = 17
      TabOrder = 3
    end
  end
end
