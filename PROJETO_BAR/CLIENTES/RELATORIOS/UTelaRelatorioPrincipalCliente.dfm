object FrmRelatorios: TFrmRelatorios
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Clientes'
  ClientHeight = 411
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 624
    object Label1: TLabel
      Left = 177
      Top = 11
      Width = 208
      Height = 24
      Caption = 'Relat'#243'rio de Clientes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 628
    Height = 370
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 624
    ExplicitHeight = 369
    object Button1: TButton
      Left = 448
      Top = 312
      Width = 75
      Height = 25
      HelpType = htKeyword
      HelpKeyword = 'Teste'
      Caption = 'Yes'
      ModalResult = 6
      TabOrder = 0
      StyleName = 'Windows'
    end
    object Button2: TButton
      Left = 529
      Top = 312
      Width = 75
      Height = 25
      Caption = 'No'
      ModalResult = 7
      TabOrder = 1
      StyleName = 'Windows'
    end
    object ListBox1: TListBox
      Left = 24
      Top = 32
      Width = 361
      Height = 305
      ItemHeight = 15
      Items.Strings = (
        'Listagem de Clientes.'
        'Listagem de Clientes ordenado por data de nascimento.')
      TabOrder = 2
      OnClick = ListBox1Click
    end
    object CheckListBox1: TCheckListBox
      Left = 416
      Top = 32
      Width = 188
      Height = 249
      ItemHeight = 17
      Items.Strings = (
        'Ordenar por nome.')
      TabOrder = 3
    end
  end
end
