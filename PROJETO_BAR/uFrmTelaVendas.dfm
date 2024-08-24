object FrmTelaVendas: TFrmTelaVendas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Tela de Vendas'
  ClientHeight = 631
  ClientWidth = 856
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object pnlVendas: TPanel
    Left = 0
    Top = 0
    Width = 856
    Height = 631
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 852
    ExplicitHeight = 630
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 400
      Height = 629
      Align = alLeft
      TabOrder = 0
      ExplicitHeight = 628
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 398
        Height = 174
        Align = alTop
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object lbID: TLabel
          Left = 8
          Top = 6
          Width = 93
          Height = 28
          Caption = 'Comanda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbMesa: TLabel
          Left = 8
          Top = 54
          Width = 44
          Height = 21
          Caption = 'Mesa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbCliente: TLabel
          Left = 8
          Top = 87
          Width = 58
          Height = 21
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbFuncionario: TLabel
          Left = 8
          Top = 117
          Width = 95
          Height = 21
          Caption = 'Funcion'#225'rio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbDataHora: TLabel
          Left = 8
          Top = 144
          Width = 40
          Height = 21
          Caption = 'Data:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbStatus: TLabel
          Left = 245
          Top = 6
          Width = 64
          Height = 28
          Caption = 'Status:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbNomeStatus: TLabel
          Left = 315
          Top = 15
          Width = 87
          Height = 17
          Caption = 'lbNomeStatus'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbCodigo: TDBEdit
          Left = 107
          Top = 12
          Width = 40
          Height = 23
          DataField = 'ID'
          DataSource = dm.DSourceVendas
          ReadOnly = True
          TabOrder = 0
        end
        object dbMesa: TDBEdit
          Left = 58
          Top = 56
          Width = 31
          Height = 23
          DataField = 'MESA'
          DataSource = dm.DSourceVendas
          ReadOnly = True
          TabOrder = 1
        end
        object dbCliente: TDBEdit
          Left = 72
          Top = 85
          Width = 183
          Height = 23
          DataField = 'NOME_PESSOALK'
          DataSource = dm.DSourceVendas
          ReadOnly = True
          TabOrder = 2
        end
        object dbFuncionario: TDBEdit
          Left = 109
          Top = 117
          Width = 146
          Height = 23
          DataField = 'NOME_USUARIOLK'
          DataSource = dm.DSourceVendas
          ReadOnly = True
          TabOrder = 3
        end
        object dbTempo: TDBEdit
          Left = 54
          Top = 146
          Width = 115
          Height = 23
          DataField = 'DATA_HORA'
          DataSource = dm.DSourceVendas
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit3: TDBEdit
          Left = 315
          Top = 40
          Width = 78
          Height = 23
          DataField = 'STATUS'
          DataSource = dm.DSourceVendas
          ReadOnly = True
          TabOrder = 5
          Visible = False
        end
        object pnlTelaPesquisa: TPanel
          Left = 261
          Top = 87
          Width = 20
          Height = 20
          ParentShowHint = False
          ShowHint = False
          TabOrder = 6
          object imgPesquisa: TImage
            Left = 1
            Top = 1
            Width = 18
            Height = 18
            Align = alClient
            Center = True
            ParentShowHint = False
            Picture.Data = {
              07544269746D6170A2070000424DA20700000000000036000000280000001900
              00001900000001001800000000006C070000120B0000120B0000000000000000
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FBF5BDE3C092D197
              79C6806AC07166BE6E69C07177C57E91D396B8E2BCEEF5EEFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              AEDDB268BF705EBB665EBB665EBB665EBB665EBB665EBA6661C06961C16950A1
              584F95559FC8A3F8FBF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF31FFFFFFFFFFFF
              FFFFFFFFFFFFE0F2E277C57D5EBB665EBB665EBB665EBB665EBB665EBB665EBA
              6661C16960BE684E9C55478E4D4A95524B95525DA164D1E4D2FFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFDCF0DE5FBB675EBB665EBB665EBB665EBB
              665EBB665EBB665DBA6661C2695FBE674D9A54478D4D4F985644924B2C843430
              85384B9551CAE1CCFFFFFFFFFFFFFFFFFF38FFFFFFFFFFFFE7F5E85FBC675EBB
              665EBB665EBB665EBB665EBB665EBB665EBA6662C36A5DBA654C9752478E4E4F
              9956388B3F408F4793C09782B7883B8C434A9451D5E7D7FFFFFFFFFFFF00FFFF
              FFFFFFFF72C3795EBB665EBB665EBB665EBB665EBB665EBB665EBB6662C36A5D
              B8654A9551488F4E4F995634893C32873ACBE1CDFFFFFFFFFFFF7EB4832F8537
              539B59FEFEFEFFFFFF38FFFFFFBBE2BE5EBB665EBB665EBB665EBB665EBB665E
              BB665EBB6662C46B5BB56349935048904F509957358A3D33883BCEE2D0FFFFFF
              FFFFFFFFFFFFA0C7A327812F4A94519DC7A1FFFFFF00FEFEFE64BE6C5EBB665E
              BB665EBB665EBB665EBB665FBD6760C2684CAA543887403E8B454B975343914A
              3E8E45D2E5D4FFFFFFFFFFFFFFFFFFD1E4D33D8E4443924B4B96524B9652F3F8
              F438C8E8CB5EBB665EBB665EBB665EBB6660BC685EBC6646B34F42A04A5D9C63
              6BA670539B5A2D85350E72179DC6A1FFFFFFFFFFFFFFFFFFCEE2D0328739378B
              3F4F98564B96524B9652ADD0B00097D39C5EBB665EBB665EBB6660BC6857B85F
              3EAE488ECC93DFE9E0E9F0EAE3EFE4EBF4ECCCE1CE509957C7DFCAFFFFFFFFFF
              FFCDE2CF33883B34893C4F99564B96524B97524991507AB07F1C7CC8835EBB66
              5EBB665EBB665BB96340AE49BFE6C2FFFCFF9FC6A360A3665199586FAB74BDD8
              BFFFFFFFFFFFFFBBD7BE96C29A409048368A3D4F98564B96524B9752488F4E4A
              945170BC760067BF6E5EBB665EBB6660BC683DAD47ABE0B0FFFFFF4E96551E7C
              273B8D4342914A34883B1A792387B98CFFFFFF559C5B10731943914A4F98564B
              96524B9652478E4D4C97535DBA656BC7733862BD6A5EBB665EBB6656B85E5EBC
              66FFFFFF7FB083207D294F98564B96524B96524C97534B9652187821C9DFCBD3
              E5D52A83324B96524B97524A9552478E4D4F9D565FBD6761C16A64BC6B0068BF
              705EBB665EBB6646B14FA1DBA6EAEFEA378A3E46944E4B96524B96524B96524B
              96524C975333883B70AC75F6FAF6539B5A4190484A9351478D4D52A35961C26A
              61C0695EBA6567BF6F147EC9855EBB665EBB6642AF4BB8E6BCD4E2D62D85364B
              96524B96524B96524B96524B96524B965243914A4D9754ECF4ED74AF7A36873D
              478F4E55AB5D62C26A60BE685EBA665EBB6675C57C009BD5A05EBB665EBB6644
              B04DADE1B1E0E9E132873A4A95514B96524B96524B96524B96524B96523B8D42
              5FA265F2F8F3609D653A894259B16062C46B5FBD675EBA665EBB665EBB668CCE
              921CCEEAD15EBB665EBB6650B55975C77CFFFFFF5B9D623187394E98554B9652
              4B96524B96524F98551B7923ABCEAEECEFED31863959B56162C36A5EBB665EBB
              665EBB665EBB665EBB66BCE3BF00FFFFFF6AC0715EBB665EBB673DAD47D6F2D8
              E9EBEA237E2C32873A4995504B965247944E237E2B519858FFFFFF8ABE8F41AB
              4A63C36B5EBB665EBB665EBB665EBB665EBB665FBC67F9FCF91CFFFFFFC2E5C5
              5EBB665FBB6751B65A53B75BF7FFF7E0E7E1579B5D34883C2F8537398B4175AC
              7AFFFFFFC1E3C43AA94461C1695EBA665EBB665EBB665EBB665EBB665EBB66B0
              DEB4FFFFFF00FFFFFFFFFFFF7CC8825EBB6661BD694AB25354B85DCAEDCDF2F9
              F2D9E6DACFE0D1E1EBE2F4FDF4A2DBA840AE4A58BA605FBB675EBB665EBB665E
              BB665EBB665EBB666EC275FFFFFFFFFFFF1CFFFFFFFFFFFFF0F9F167BF6E5EBB
              6662BD6951B65A42AF4B75C77CA6DEABB3E4B79BD9A061BD6940AE495BBA6360
              BC685EBB665EBB665EBB665EBB665EBB665FBB67E4F4E5FFFFFFFFFFFF00FFFF
              FFFFFFFFFFFFFFE8F5E969C0705EBB665FBB675FBB6751B55946B14F44B04D48
              B25156B85E60BC685EBB665EBB665EBB665EBB665EBB665EBB6660BC68DCF0DD
              FFFFFFFFFFFFFFFFFF1CFFFFFFFFFFFFFFFFFFFFFFFFECF7ED84CB8A5EBB665E
              BB665EBB665EBB665EBB665EBB665EBB665EBB665EBB665EBB665EBB665EBB66
              5EBB667AC781E3F3E4FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFBDE3C175C57C5EBB665EBB665EBB665EBB665EBB665EBB66
              5EBB665EBB665EBB6670C277B7E1BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCEACF9ED6A3
              82CA886CC17366BE6E6BC0727FC9869BD5A0C7E8CAFBFDFBFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF00}
            ShowHint = True
            Stretch = True
            OnClick = imgPesquisaClick
            ExplicitLeft = 3
          end
        end
        object Panel8: TPanel
          Left = 288
          Top = 87
          Width = 20
          Height = 20
          ParentShowHint = False
          ShowHint = False
          TabOrder = 7
          object Image1: TImage
            Left = 1
            Top = 1
            Width = 18
            Height = 18
            Align = alClient
            Center = True
            Picture.Data = {
              07544269746D6170FA090000424DFA0900000000000036000000280000001900
              0000190000000100200000000000C4090000120B0000120B0000000000000000
              0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00F5F8F700929893007B847D007B857D008D948F00EEF2F000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFE
              FF00FFFFFF00C7CCC9001C291E00000000000000000000000000000000001621
              1700BAC3BE00FFFFFF00FFFFFF00FFFFFF00A0A8A3002E3630002D4235003146
              3900314639003146390031463900314639003146390031463900314639002E43
              3500314538009FA5A000193222000000000000110400485A4F00516257000011
              050000010000000C0200D3D6D400FFFFFF00FFFFFF001831230000000000000B
              0000000A0000000A0000000A0000000A0000000A0000000A0000000A0000000A
              000000000000394D410056655B000003000000120000000000006A776E007A85
              7E00000000000010000000000000485B5000FFFFFF00FFFFFF0028413400000A
              0000052111000521110005211100052111000521110005211100052111000521
              110005211100000400007E8882005A6960000004000046594E00515651009DA6
              A000A2AAA400515551004B5E5300000E000016312100FFFFFF00FFFFFF002C44
              3700000A00000521110005211100052111000521110005211100052111000521
              11000521110005211100000500007B867F0059685E000006000075807900878F
              8800C3C7C400C5C9C600878E87007E898100001001001A352600FFFFFF00FFFF
              FF002C443700000A000005211100052111000521110005211100052111000521
              110005211100052111000521110000060000707D75005E6D630000000000000F
              0000000000005F6D64006D7A710000000000000D000000030000253D2F00FFFF
              FF00FFFFFF002C443700000A0000052111000521110005211100052111000521
              1100052111000521110005211100052111000017060024382B0086908900071D
              0D00001303000009020067746C007480780000090100001B0A0000000000969F
              9900FFFFFF00FFFFFF002C443700000A00000521110005211100052111000521
              1100052111000521110005211100052111000521110005231200000900005260
              560086948D000A1A0E0000000000001000000013020000030000000000005E6E
              6400FFFFFF00FFFFFF00FFFFFF002C443700000A000005211100052111000521
              1100052111000521110005211100052111000521110005211100052111000420
              100000090000505B5300818A8400616C630054635800505F540054645900999F
              9A00FFFFFF00FFFFFF00FFFFFF00FFFFFF002C443700000A0000052111000521
              1100052111000521110005211100052111000521110005211100052111000521
              11000522120003200F00000B000022352800717F770089918B00828C85006065
              6000D3D7D400FFFFFF00FFFFFF00FFFFFF00FFFFFF002C443700000A00000521
              1100052111000521110005211100052111000521110005211100052111000521
              1100052111000521110005211100052312000018070000060000000500000002
              0000000000009DA6A000FFFFFF00FFFFFF00FFFFFF00FFFFFF002C443700000A
              0000052111000521110005211100052111000521110005211100052111000521
              1100052111000521110005211100052111000521110005211100052111000521
              1100011D0D0000080000A7AEA900FFFFFF00FFFFFF00FFFFFF00FFFFFF002C44
              3700000A00000521110005211100052111000521110005211100052111000521
              1100052111000521110005211100052111000521110005211100052111000521
              110005211100011D0D0000080000A7AEA900FFFFFF00FFFFFF00FFFFFF00FFFF
              FF002C443700000A000005211100052111000521110005211100052111000521
              1100052111000521110005211100052111000521110005211100052111000521
              11000521110005211100011D0D0000080000A7AEA900FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00112C1E0000000000000500000005000000050000000500000005
              0000000500000005000000050000000500000005000000050000000500000005
              000000050000000500000005000000010000000000009BA39E00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF008B958F00636E6700707D7500707D7500707D7500707D
              7500707D7500707D7500707D7500707D7500707D7500707D7500707D7500707D
              7500707D7500707D7500707D7500707D75006D7A720065706800CFD2D000FFFF
              FF00FFFFFF00FFFFFF00FCFCFC007F8C8400636D65006B7A71006B7A71006B7A
              71006B7A71006B7A71006B7A71006B7A71006B7A71006B7A71006B7A71006B7A
              71006B7A71006B7A71006B7A71006B7A71006B7A710069786F00636A6500C6CB
              C800FFFFFF00FFFFFF00FFFFFF00F7F8F8000522110000000000000600000006
              0000000600000006000000060000000600000006000000060000000600000006
              0000000600000006000000060000000600000006000000060000000200000000
              0000939D9600FFFFFF00FFFFFF00FFFFFF00F7F8F8001C362700000E00000521
              1100052111000521110005211100052111000521110005211100052111000521
              110005211100052111000521110005211100052111000521110005211100011F
              0F000002000098A29B00FFFFFF00FFFFFF00FFFFFF00F9FAFA00132C1D000000
              0000000500000004000000040000000400000004000000040000000400000004
              0000000400000004000000040000000400000004000000040000000400000004
              00000000000000000000A5ADA700FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADB5
              B0003C443D003D52460040554900405549004055490040554900405549004055
              4900405549004055490040554900405549004055490040554900405549004055
              49003F55490039463B0069786E00F8F8F800FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00}
            Stretch = True
            OnClick = Image1Click
            ExplicitLeft = 8
            ExplicitTop = 8
            ExplicitWidth = 105
            ExplicitHeight = 105
          end
        end
      end
      object DBGridItensVenda: TDBGrid
        Left = 1
        Top = 211
        Width = 398
        Height = 285
        Align = alClient
        DataSource = dm.DSourceItens_Venda
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object Panel4: TPanel
        Left = 1
        Top = 496
        Width = 398
        Height = 132
        Align = alBottom
        TabOrder = 2
        ExplicitTop = 495
        object lbDesconto: TLabel
          Left = 5
          Top = 6
          Width = 81
          Height = 17
          Alignment = taCenter
          Caption = 'DESCONTOS:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbTotal: TLabel
          Left = 42
          Top = 37
          Width = 44
          Height = 17
          Alignment = taCenter
          Caption = 'TOTAL:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Panel7: TPanel
          Left = 88
          Top = 1
          Width = 309
          Height = 130
          Align = alRight
          TabOrder = 0
          object DBEdit1: TDBEdit
            Left = 4
            Top = 5
            Width = 109
            Height = 23
            TabOrder = 0
          end
          object dbTotal: TDBEdit
            Left = 4
            Top = 34
            Width = 109
            Height = 23
            DataField = 'VALOR_TOTAL'
            DataSource = dm.DSourceVendas
            TabOrder = 1
          end
          object btnCancelar: TButton
            Left = 1
            Top = 109
            Width = 307
            Height = 20
            Align = alBottom
            Caption = 'CANCELAR - F3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object btnFinalizar: TButton
            Left = 1
            Top = 89
            Width = 307
            Height = 20
            Align = alBottom
            Caption = 'FINALIZAR - F1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            OnClick = btnFinalizarClick
          end
          object btnDeletarItem: TButton
            Left = 1
            Top = 69
            Width = 307
            Height = 20
            Align = alBottom
            Caption = 'DELETAR - F2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
          end
        end
      end
      object Panel5: TPanel
        Left = 1
        Top = 175
        Width = 398
        Height = 36
        Align = alTop
        TabOrder = 3
        ExplicitTop = 176
        object Label10: TLabel
          Left = 107
          Top = 9
          Width = 137
          Height = 21
          Alignment = taCenter
          Caption = 'Itens da Comanda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object Panel2: TPanel
      Left = 401
      Top = 1
      Width = 454
      Height = 629
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 450
      ExplicitHeight = 628
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 452
        Height = 45
        Align = alTop
        Caption = 'Panel6'
        TabOrder = 0
        ExplicitWidth = 448
        object Edit1: TEdit
          Left = 1
          Top = 1
          Width = 330
          Height = 43
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TextHint = 'Busque o produto por Nome ou por C'#243'digo...'
          ExplicitWidth = 326
          ExplicitHeight = 33
        end
        object btnIncluir: TButton
          Left = 391
          Top = 1
          Width = 60
          Height = 43
          Align = alRight
          Caption = 'INCLUIR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btnIncluirClick
          ExplicitLeft = 387
        end
        object btnBuscar: TButton
          Left = 331
          Top = 1
          Width = 60
          Height = 43
          Align = alRight
          Caption = 'BUSCAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          ExplicitLeft = 327
        end
      end
      object PageControl1: TPageControl
        Left = 1
        Top = 46
        Width = 452
        Height = 582
        ActivePage = tabMarmita
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 448
        ExplicitHeight = 581
        object tabMarmita: TTabSheet
          Caption = 'PRODUTOS'
          object DBGrid2: TDBGrid
            Left = 0
            Top = 0
            Width = 444
            Height = 552
            Align = alClient
            BorderStyle = bsNone
            DataSource = dm.DSourceProduto
            GradientEndColor = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'ID'
                Visible = True
              end
              item
                Alignment = taLeftJustify
                Expanded = False
                FieldName = 'DESCRICAO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_CATEGORIA'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'DT_CADASTRO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATUS'
                Width = 64
                Visible = True
              end>
          end
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 516
    Top = 264
    object Configurao2: TMenuItem
      Caption = 'Libera'#231#227'o'
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
    end
  end
end
