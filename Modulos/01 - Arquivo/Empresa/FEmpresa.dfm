object FrmEmpresa: TFrmEmpresa
  Left = 209
  Top = 22
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Cadastro de Empresa'
  ClientHeight = 574
  ClientWidth = 1064
  Color = clWhite
  Constraints.MinHeight = 597
  Constraints.MinWidth = 1070
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -15
  Font.Name = 'Calibri'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 1064
    Height = 481
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    ParentColor = True
    TabOrder = 0
    object PgParametros: TPageControl
      Left = 5
      Top = 5
      Width = 1054
      Height = 471
      ActivePage = Tab_Operacionais
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      MultiLine = True
      ParentFont = False
      Style = tsFlatButtons
      TabOrder = 0
      object Tab_DadosEmpresa: TTabSheet
        Caption = 'Dados da Empresa'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 1046
          Height = 439
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object GroupBox7: TGroupBox
            Left = 2
            Top = 15
            Width = 1042
            Height = 422
            Align = alClient
            TabOrder = 0
            object Label5: TLabel
              Left = 84
              Top = 129
              Width = 46
              Height = 13
              Caption = '&Endere'#231'o'
              FocusControl = EditRUA
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label8: TLabel
              Left = 14
              Top = 169
              Width = 27
              Height = 13
              Caption = '&Bairro'
              FocusControl = EditBAIRRO
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label9: TLabel
              Left = 14
              Top = 129
              Width = 21
              Height = 13
              Caption = 'CE&P'
              FocusControl = EditCEP
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label10: TLabel
              Left = 297
              Top = 168
              Width = 33
              Height = 13
              Caption = 'Ci&dade'
              FocusControl = EditCIDADE
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label11: TLabel
              Left = 654
              Top = 169
              Width = 14
              Height = 13
              Caption = '&UF'
              FocusControl = EditUF
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label12: TLabel
              Left = 560
              Top = 91
              Width = 24
              Height = 13
              Caption = 'F&one'
              FocusControl = EditNUM_FONE
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label19: TLabel
              Left = 14
              Top = 90
              Width = 27
              Height = 13
              Caption = 'CNPJ'
              FocusControl = EditULT_VISITA
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label1: TLabel
              Left = 182
              Top = 91
              Width = 16
              Height = 13
              Caption = 'I.E.'
              FocusControl = DBEdit1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label33: TLabel
              Left = 445
              Top = 129
              Width = 37
              Height = 13
              Caption = 'N'#250'mero'
              FocusControl = DBEdit21
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label34: TLabel
              Left = 301
              Top = 90
              Width = 37
              Height = 13
              Caption = 'Contato'
              FocusControl = DBEdit22
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label48: TLabel
              Left = 14
              Top = 52
              Width = 71
              Height = 13
              Caption = 'Nome fantasia:'
              FocusControl = DBEdit27
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label25: TLabel
              Left = 504
              Top = 129
              Width = 64
              Height = 13
              Caption = 'Complemento'
              FocusControl = DBEdit12
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label44: TLabel
              Left = 14
              Top = 211
              Width = 77
              Height = 13
              Caption = 'Site da Empresa'
              FocusControl = DBEdit20
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label45: TLabel
              Left = 217
              Top = 212
              Width = 93
              Height = 13
              Caption = 'E - mail da Empresa'
              FocusControl = DBEdit23
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object BtnLogoRelatorios: TSpeedButton
              Left = 179
              Top = 251
              Width = 140
              Height = 35
              Cursor = crHandPoint
              Caption = 'Logo na NF-e'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = BtnLogoRelatoriosClick
            end
            object BtnLogomarca: TSpeedButton
              Left = 15
              Top = 251
              Width = 140
              Height = 35
              Cursor = crHandPoint
              Caption = 'Imagem para tela principal'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = BtnLogomarcaClick
            end
            object Label6: TLabel
              Left = 196
              Top = 168
              Width = 92
              Height = 13
              Caption = 'C'#243'd. Cidade [IBGE]'
              FocusControl = EditCIDADE
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label63: TLabel
              Left = 423
              Top = 212
              Width = 61
              Height = 13
              Caption = 'C'#243'digo Pa'#237's:'
              FocusControl = DBEdit39
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label64: TLabel
              Left = 537
              Top = 212
              Width = 56
              Height = 13
              Caption = 'Nome Pa'#237's:'
              FocusControl = DBEdit40
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label2: TLabel
              Left = 175
              Top = 12
              Width = 63
              Height = 13
              Caption = 'Raz'#227'o Social'
              FocusControl = EditNOME
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label15: TLabel
              Left = 14
              Top = 12
              Width = 55
              Height = 13
              Caption = 'ID Empresa'
              FocusControl = EditNOME
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label16: TLabel
              Left = 84
              Top = 12
              Width = 50
              Height = 13
              Caption = 'Data Base'
              FocusControl = editDataBase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label13: TLabel
              Left = 552
              Top = 169
              Width = 73
              Height = 13
              Caption = 'C'#243'd. UF [IBGE]'
              FocusControl = EditCIDADE
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object EditRUA: TDBEdit
              Left = 84
              Top = 144
              Width = 356
              Height = 21
              CharCase = ecUpperCase
              DataField = 'ENDERECO'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
            end
            object EditBAIRRO: TDBEdit
              Left = 12
              Top = 184
              Width = 181
              Height = 21
              CharCase = ecUpperCase
              DataField = 'BAIRRO'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 12
            end
            object EditCEP: TDBEdit
              Left = 14
              Top = 144
              Width = 64
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CEP'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
            end
            object EditCIDADE: TDBEdit
              Left = 295
              Top = 184
              Width = 251
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CIDADE'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 14
            end
            object EditUF: TDBEdit
              Left = 654
              Top = 184
              Width = 25
              Height = 21
              CharCase = ecUpperCase
              DataField = 'UF'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              MaxLength = 2
              ParentFont = False
              TabOrder = 16
            end
            object EditNUM_FONE: TDBEdit
              Left = 560
              Top = 105
              Width = 119
              Height = 21
              CharCase = ecUpperCase
              DataField = 'FONE'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
            end
            object EditULT_VISITA: TDBEdit
              Left = 14
              Top = 105
              Width = 154
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CNPJ'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object DBEdit1: TDBEdit
              Left = 182
              Top = 105
              Width = 113
              Height = 21
              CharCase = ecUpperCase
              DataField = 'IE'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object DBEdit21: TDBEdit
              Left = 445
              Top = 144
              Width = 41
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NUMERO'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
            end
            object DBEdit22: TDBEdit
              Left = 301
              Top = 105
              Width = 244
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CONTATO'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
            end
            object DBEdit27: TDBEdit
              Left = 14
              Top = 66
              Width = 665
              Height = 21
              DataField = 'NOMEFANTASIA'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object DBEdit12: TDBEdit
              Left = 504
              Top = 144
              Width = 175
              Height = 21
              CharCase = ecUpperCase
              DataField = 'COMPLEMENTO'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 11
            end
            object DBEdit20: TDBEdit
              Left = 14
              Top = 226
              Width = 200
              Height = 21
              CharCase = ecLowerCase
              DataField = 'SITE'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 17
            end
            object DBEdit23: TDBEdit
              Left = 217
              Top = 226
              Width = 200
              Height = 21
              CharCase = ecLowerCase
              DataField = 'EMAIL'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 18
            end
            object Panel1: TPanel
              Left = 15
              Top = 285
              Width = 140
              Height = 125
              Color = clWhite
              ParentBackground = False
              TabOrder = 21
              object IMGLogomarca: TImage
                Left = 2
                Top = 2
                Width = 135
                Height = 120
                Hint = '2 cliques limpar'
                Center = True
                ParentShowHint = False
                Proportional = True
                ShowHint = True
                Transparent = True
                OnDblClick = IMGLogomarcaDblClick
              end
            end
            object Panel3: TPanel
              Left = 179
              Top = 286
              Width = 140
              Height = 125
              Color = clWhite
              ParentBackground = False
              TabOrder = 22
              object IMGLogoRelatorios: TImage
                Left = 2
                Top = 2
                Width = 135
                Height = 120
                Hint = '2 cliques limpar'
                Center = True
                ParentShowHint = False
                Proportional = True
                ShowHint = True
                Transparent = True
                OnDblClick = IMGLogoRelatoriosDblClick
              end
            end
            object DBEdit4: TDBEdit
              Left = 196
              Top = 184
              Width = 96
              Height = 21
              Hint = 'obrigat'#243'rio caso sua empresa emita Nota Fiscal Eletr'#244'nica'
              CharCase = ecUpperCase
              DataField = 'IDCIDADE'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 13
              OnKeyDown = DBEdit4KeyDown
            end
            object DBEdit39: TDBEdit
              Left = 423
              Top = 226
              Width = 108
              Height = 21
              CharCase = ecLowerCase
              DataField = 'IDPAIS'
              DataSource = DS_Parametros
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 19
            end
            object DBEdit40: TDBEdit
              Left = 537
              Top = 226
              Width = 142
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NOMEPAIS'
              DataSource = DS_Parametros
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 20
            end
            object DBEdit5: TDBEdit
              Left = 14
              Top = 27
              Width = 64
              Height = 21
              Hint = 
                'C'#243'digo da empresa ou filial (c'#243'digo 1 sempre ser'#225' empresa matriz' +
                ')'
              CharCase = ecUpperCase
              Color = clBtnFace
              DataField = 'EMPRESA'
              DataSource = DS_Parametros
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
            object EditNOME: TDBEdit
              Left = 175
              Top = 27
              Width = 504
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NOME'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object editDataBase: TDBEdit
              Left = 84
              Top = 27
              Width = 85
              Height = 21
              Hint = 
                'significa que nenhum lan'#231'amento poder'#225' ser feito com data ou ven' +
                'cimento antes dessa Data Base.'
              CharCase = ecUpperCase
              DataField = 'INF_DATABASE'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
            end
            object DBEdit7: TDBEdit
              Left = 552
              Top = 184
              Width = 96
              Height = 21
              Hint = 'obrigat'#243'rio caso sua empresa emita Nota Fiscal Eletr'#244'nica'
              CharCase = ecUpperCase
              DataField = 'IDUF'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 15
              OnKeyDown = DBEdit4KeyDown
            end
            object dbEditPesquisarEmpresa: TIDBEditDialog
              Left = 375
              Top = 285
              Width = 65
              Height = 21
              HelpKeyWord = ''
              Color = clWindow
              Enabled = True
              TabOrder = 23
              Text = ''
              Visible = False
              LabelCaption = 'Pesquisar Empresa'
              LabelAlwaysEnabled = True
              LabelFont.Charset = DEFAULT_CHARSET
              LabelFont.Color = clWindowText
              LabelFont.Height = -11
              LabelFont.Name = 'Tahoma'
              LabelFont.Style = []
              Lookup.Separator = ';'
              Version = '5.0.0.0'
              ButtonStyle = bsButton
              ButtonWidth = 16
              ButtonHint = 'Procurar...'
              Etched = False
              ButtonCaption = '...'
              SQLdbRetornoVazio = ' *** '
              SQLdbMaxLenght = 10
              SearchQuery.Strings = (
                'SELECT * FROM CONFIG_PARAMETROS'
                'WHERE'
                '%WHERE%')
              CountQuery.Strings = (
                '')
              SearchDialogFieldList = <
                item
                  FieldName = 'EMPRESA'
                  WhereSyntax = 'EMPRESA'
                  DisplayLabel = 'ID'
                  DisplayWidth = 6
                  DisplayColumnWidth = 0
                  FieldType = ftInteger
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scEqual
                  SearchCase = scMixed
                end
                item
                  FieldName = 'NOME'
                  WhereSyntax = 'NOME'
                  DisplayLabel = 'NOME:'
                  DisplayWidth = 45
                  DisplayColumnWidth = 0
                  FieldType = ftString
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scContains
                  SearchCase = scMixed
                end
                item
                  FieldName = 'CNPJ'
                  WhereSyntax = 'CNPJ'
                  DisplayLabel = 'CNPJ'
                  DisplayWidth = 20
                  DisplayColumnWidth = 0
                  FieldType = ftString
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scContains
                  SearchCase = scMixed
                end
                item
                  FieldName = 'CIDADE'
                  WhereSyntax = 'CIDADE'
                  DisplayLabel = 'CIDADE'
                  DisplayWidth = 20
                  DisplayColumnWidth = 0
                  FieldType = ftString
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scContains
                  SearchCase = scMixed
                end
                item
                  FieldName = 'UF'
                  WhereSyntax = 'UF'
                  DisplayLabel = 'UF'
                  DisplayWidth = 10
                  DisplayColumnWidth = 0
                  FieldType = ftString
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scContains
                  SearchCase = scMixed
                end>
              SearchPresetList = <>
              DialogCaption = 'Pesquisa'
              DialogWidth = 0
              DialogHeight = 0
              Store = dsFields
              CompareFormatDate = 'DDMMYYYY'
              CompareFormatTime = 'HHMMSS'
              CompareFormatDateTime = 'DDMMYYYY'
              TrueExpression = '1=1'
              DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
              ConnectionDialog = FrmPrincipal.DBConexao
              Connection = FrmPrincipal.DBConexao
            end
          end
        end
      end
      object Tab_Operacionais: TTabSheet
        Caption = 'Par'#226'metros Operacionais'
        ImageIndex = 8
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox10: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1040
          Height = 433
          Align = alClient
          TabOrder = 0
          object Label20: TLabel
            Left = 24
            Top = 32
            Width = 102
            Height = 14
            Caption = 'Ramo de Atividade'
          end
          object Label26: TLabel
            Left = 24
            Top = 60
            Width = 94
            Height = 14
            Caption = 'Tipo Operacional'
          end
          object Label35: TLabel
            Left = 24
            Top = 88
            Width = 74
            Height = 14
            Caption = 'Tipo Empresa'
          end
          object Label39: TLabel
            Left = 24
            Top = 116
            Width = 105
            Height = 14
            Caption = 'Segmento Principal'
          end
          object DBComboBox2: TDBComboBox
            Left = 143
            Top = 29
            Width = 260
            Height = 22
            Style = csDropDownList
            DataField = 'RAMO_ATIVIDADE'
            DataSource = DS_Parametros
            Items.Strings = (
              'COMERCIO'
              'INDUSTRIA'
              'SERVI'#199'O')
            TabOrder = 0
          end
          object DBComboBox3: TDBComboBox
            Left = 143
            Top = 57
            Width = 260
            Height = 22
            Style = csDropDownList
            DataField = 'TIPO_OPERACIONAL'
            DataSource = DS_Parametros
            Items.Strings = (
              'Matriz'
              'Ponto de Acesso')
            TabOrder = 1
          end
          object DBComboBox4: TDBComboBox
            Left = 143
            Top = 85
            Width = 260
            Height = 22
            Style = csDropDownList
            DataField = 'TIPO_EMPRESA'
            DataSource = DS_Parametros
            Items.Strings = (
              'Industrializa'#231#227'o Pr'#243'pria'
              'Adquiridos de Terceiros'
              'Mista')
            TabOrder = 2
          end
          object DBComboBox5: TDBComboBox
            Left = 143
            Top = 111
            Width = 260
            Height = 22
            Style = csDropDownList
            DataField = 'SEGUIMENTO'
            DataSource = DS_Parametros
            Items.Strings = (
              'Vestu'#225'rio'
              'Cal'#231'ados')
            TabOrder = 3
          end
          object DBRadioGroup17: TDBRadioGroup
            Left = 24
            Top = 139
            Width = 379
            Height = 104
            Caption = 'Origem dos Produtos'
            DataField = 'ORIGEM_PRODUTOS'
            DataSource = DS_Parametros
            Items.Strings = (
              'Industrializa'#231#227'o Pr'#243'pria'
              'Adquiridos de Terceiros'
              'Mista')
            TabOrder = 4
            Values.Strings = (
              'PROPRIA'
              'TERCEIROS'
              'MISTA')
          end
          object DBRadioGroup18: TDBRadioGroup
            Left = 24
            Top = 249
            Width = 185
            Height = 105
            Caption = 'Pr'#225'tica de Pre'#231'os'
            DataField = 'PRATICA_PRECOS'
            DataSource = DS_Parametros
            Items.Strings = (
              'Atacado'
              'varejo'
              'Atacado e Varejo')
            TabOrder = 5
            Values.Strings = (
              'ATACADO'
              'VAREJO'
              'TODOS')
          end
          object DBRadioGroup19: TDBRadioGroup
            Left = 218
            Top = 249
            Width = 185
            Height = 105
            Caption = 'Padr'#227'o nas Vendas'
            DataField = 'PADRAO_VENDA'
            DataSource = DS_Parametros
            Items.Strings = (
              'Atacado'
              'Varejo')
            TabOrder = 6
            Values.Strings = (
              'ATACADO'
              'VAREJO')
          end
          object DBRadioGroup20: TDBRadioGroup
            Left = 432
            Top = 29
            Width = 249
            Height = 104
            Caption = 'Tratamento de quantidade de produtos'
            DataField = 'QUANTIFICAR'
            DataSource = DS_Parametros
            Items.Strings = (
              'Grade de Cores e Tamanhos'
              'Sem grade')
            TabOrder = 7
            Values.Strings = (
              'GRADE'
              'NORMAL')
          end
        end
      end
      object Tab_Financeiro: TTabSheet
        Caption = 'Financeiro'
        ImageIndex = 4
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox18: TGroupBox
          Left = 0
          Top = 0
          Width = 1046
          Height = 138
          Align = alClient
          ParentBackground = False
          TabOrder = 0
          TabStop = True
          object Label28: TLabel
            Left = 504
            Top = 10
            Width = 190
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Toler'#226'ncia de atraso dos clientes:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 779
            Top = 10
            Width = 69
            Height = 14
            Caption = 'dias de atraso'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label30: TLabel
            Left = 2
            Top = 35
            Width = 260
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Juros a cobrar nos atrasos %:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label31: TLabel
            Left = 10
            Top = 11
            Width = 249
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Prazo m'#233'dio de entrega da carta de cobran'#231'a:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label32: TLabel
            Left = 347
            Top = 10
            Width = 141
            Height = 14
            Caption = 'dias para chega at'#233' o cliente'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label36: TLabel
            Left = 504
            Top = 36
            Width = 190
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Bloquear cr'#233'dito ap'#243's:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label37: TLabel
            Left = 779
            Top = 36
            Width = 69
            Height = 14
            Caption = 'dias de atraso'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label41: TLabel
            Left = 2
            Top = 62
            Width = 260
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Taxa de Cart'#243'rio %:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 504
            Top = 62
            Width = 190
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Clientes dever'#227'o ficar inativo ap'#243's:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 779
            Top = 62
            Width = 88
            Height = 14
            Caption = 'dias sem comprar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label40: TLabel
            Left = 10
            Top = 100
            Width = 207
            Height = 14
            Caption = 'Site de Cota'#231#227'o de Moeda Estrangeira'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit13: TDBEdit
            Left = 697
            Top = 7
            Width = 80
            Height = 20
            Hint = 'Tolerancia antes do envio de cobran'#231'a'
            Ctl3D = False
            DataField = 'CLI_DIASATRASO'
            DataSource = DS_Parametros
            ParentCtl3D = False
            TabOrder = 1
          end
          object DBEdit14: TDBEdit
            Left = 265
            Top = 33
            Width = 80
            Height = 20
            Ctl3D = False
            DataField = 'FIN_JUROS'
            DataSource = DS_Parametros
            ParentCtl3D = False
            TabOrder = 2
          end
          object DBEdit15: TDBEdit
            Left = 265
            Top = 7
            Width = 80
            Height = 20
            Ctl3D = False
            DataField = 'FIN_COBDIAS'
            DataSource = DS_Parametros
            ParentCtl3D = False
            TabOrder = 0
          end
          object DBEdit16: TDBEdit
            Left = 697
            Top = 33
            Width = 80
            Height = 20
            Ctl3D = False
            DataField = 'FIN_DIASBLOQUEAR'
            DataSource = DS_Parametros
            ParentCtl3D = False
            TabOrder = 3
          end
          object DBEdit19: TDBEdit
            Left = 265
            Top = 59
            Width = 80
            Height = 20
            Ctl3D = False
            DataField = 'FIN_CARTORIO'
            DataSource = DS_Parametros
            ParentCtl3D = False
            TabOrder = 4
          end
          object DBEdit3: TDBEdit
            Left = 697
            Top = 59
            Width = 80
            Height = 20
            Ctl3D = False
            DataField = 'CLI_DIASINATIVAR'
            DataSource = DS_Parametros
            ParentCtl3D = False
            TabOrder = 5
          end
          object DBEdit6: TDBEdit
            Left = 223
            Top = 97
            Width = 794
            Height = 20
            Ctl3D = False
            DataField = 'SITECOTACAOMOEDA'
            DataSource = DS_Parametros
            ParentCtl3D = False
            TabOrder = 6
          end
        end
        object GroupBox20: TGroupBox
          Left = 0
          Top = 266
          Width = 1046
          Height = 104
          Align = alBottom
          Caption = 'Compras e Contas'
          TabOrder = 2
          object DBCheckBox8: TDBCheckBox
            Left = 10
            Top = 48
            Width = 345
            Height = 17
            Cursor = crHandPoint
            Hint = 'Controle Bancario (d'#233'bido)'
            Caption = 'ao dar baixar manual lan'#231'ar no banco  automaticamente'
            DataField = 'FIN_CTAPAG_LANCBCO'
            DataSource = DS_Parametros
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox4: TDBCheckBox
            Left = 10
            Top = 25
            Width = 345
            Height = 17
            Cursor = crHandPoint
            Hint = 'Controle de Caixa (d'#233'bito)'
            Caption = 'ao dar baixar manual lan'#231'ar no caixa automaticamente'
            DataField = 'FIN_CTAPAG_LANCCX'
            DataSource = DS_Parametros
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object IDBEditDialog3: TIDBEditDialog
            Left = 441
            Top = 28
            Width = 137
            Height = 23
            Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = ''
            Visible = True
            EditType = etUppercase
            FocusColor = clBtnFace
            LabelCaption = 'Plano de Contas ao gerar T'#237'tulos a Pagar'
            LabelAlwaysEnabled = True
            LabelFont.Charset = ANSI_CHARSET
            LabelFont.Color = clBlack
            LabelFont.Height = -12
            LabelFont.Name = 'Calibri'
            LabelFont.Style = []
            Lookup.Separator = ';'
            Version = '5.0.0.0'
            ButtonStyle = bsButton
            ButtonWidth = 16
            ButtonHint = 'Plano de Contas'
            Etched = False
            ButtonCaption = '...'
            DataField = 'FIN_CTAPAG_PLANOCTA'
            DataSource = DS_Parametros
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = Edit1
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO_PLANO'
            SQLdbSQL.Strings = (
              'SELECT * FROM VIEW_PLANOCONTAS'
              'WHERE'
              'CODIGO_PLANO=:CODIGO_PLANO'
              '')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM VIEW_PLANOCONTAS'
              'WHERE'
              'TIPO='#39'DEBITO'#39
              'AND'
              '%WHERE%')
            SearchDialogFieldList = <
              item
                FieldName = 'CODIGO_PLANO'
                WhereSyntax = 'CODIGO_PLANO'
                DisplayLabel = 'C'#211'DIGO'
                DisplayWidth = 15
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'NOME'
                WhereSyntax = 'NOME'
                DisplayLabel = 'PLANO DE CONTA'
                DisplayWidth = 74
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'TIPO'
                WhereSyntax = 'TIPO'
                DisplayLabel = 'TIPO'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end>
            SearchPresetList = <>
            DialogCaption = 'Pesquisa'
            DialogWidth = 0
            DialogHeight = 0
            Store = dsFields
            CompareFormatDate = 'DDMMYYYY'
            CompareFormatTime = 'HHMMSS'
            CompareFormatDateTime = 'DDMMYYYY'
            TrueExpression = '1=1'
            DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
            ConnectionDialog = FrmPrincipal.DBConexao
            Connection = FrmPrincipal.DBConexao
          end
          object Edit1: TEdit
            Left = 584
            Top = 28
            Width = 273
            Height = 23
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object Edit2: TEdit
            Left = 519
            Top = 74
            Width = 338
            Height = 23
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
            Text = '***'
          end
          object IDBEditDialog4: TIDBEditDialog
            Left = 441
            Top = 74
            Width = 75
            Height = 23
            Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
            HelpKeyWord = ''
            Color = clWindow
            Enabled = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            Text = ''
            Visible = True
            EditType = etAlphaNumeric
            FocusColor = clBtnFace
            LabelCaption = 'Conta Caixa para gerar T'#237'tulos a Pagar'
            LabelAlwaysEnabled = True
            LabelFont.Charset = ANSI_CHARSET
            LabelFont.Color = clBlack
            LabelFont.Height = -12
            LabelFont.Name = 'Calibri'
            LabelFont.Style = []
            Lookup.Separator = ';'
            Version = '5.0.0.0'
            ButtonStyle = bsButton
            ButtonWidth = 16
            ButtonHint = 'Procurar...'
            Etched = False
            ButtonCaption = '...'
            DataField = 'FIN_CTAPAG_CONTACX'
            DataSource = DS_Parametros
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = Edit2
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT * FROM CAD_CONTAS'
              'WHERE'
              'CODIGO=:CODIGO'
              'AND'
              'EMPRESA=1')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_CONTAS'
              'WHERE'
              '%WHERE%')
            SearchDialogFieldList = <
              item
                FieldName = 'CODIGO'
                WhereSyntax = 'CODIGO'
                DisplayLabel = 'C'#211'DIGO:'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scUpper
              end
              item
                FieldName = 'NOME'
                WhereSyntax = 'NOME'
                DisplayLabel = 'NOME DA CONTA:'
                DisplayWidth = 60
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'SALDOINICIAL'
                WhereSyntax = 'SALDOINICIAL'
                DisplayLabel = 'SALDO INICIAL:'
                DisplayFormat = '###,##0.00'
                DisplayWidth = 15
                DisplayColumnWidth = 0
                FieldType = ftFloat
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'SALDOATUAL'
                WhereSyntax = 'SALDOATUAL'
                DisplayLabel = 'SALDO ATUAL:'
                DisplayFormat = '###,##0.00'
                DisplayWidth = 15
                DisplayColumnWidth = 0
                FieldType = ftFloat
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end>
            SearchPresetList = <>
            DialogCaption = 'Pesquisa'
            DialogWidth = 0
            DialogHeight = 0
            Store = dsFields
            CompareFormatDate = 'DDMMYYYY'
            CompareFormatTime = 'HHMMSS'
            CompareFormatDateTime = 'DDMMYYYY'
            TrueExpression = '1=1'
            DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
            ConnectionDialog = FrmPrincipal.DBConexao
            Connection = FrmPrincipal.DBConexao
          end
        end
        object GroupBox19: TGroupBox
          Left = 0
          Top = 138
          Width = 1046
          Height = 128
          Align = alBottom
          Caption = 'Contas a Receber'
          TabOrder = 1
          object DBCheckBox7: TDBCheckBox
            Left = 10
            Top = 14
            Width = 345
            Height = 17
            Cursor = crHandPoint
            Hint = 
              'Se estiver marcado, todas as vezes que gerar faturas em que o ve' +
              'ncimento seja igual a data de emiss'#227'o, o sistema entender'#225' como ' +
              'sendo uma venda '#224' vista e automaticamente dar'#225' baixa na parcela ' +
              'fazendo tambem lan'#231'amento no caixa.'
            Caption = 'Venda '#224' vista baixar automaticamente'
            DataField = 'FIN_VENDAVISTABAIXAR'
            DataSource = DS_Parametros
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox2: TDBCheckBox
            Left = 10
            Top = 32
            Width = 345
            Height = 17
            Cursor = crHandPoint
            Hint = 
              'Se estiver marcado, todas as vezes que fizer uma venda e houver ' +
              'entrada em dinheiro, automaticamente ser'#225' lan'#231'ado no caixa. E se' +
              'mpre que gerar faturas em que o vencimento seja igual a data de ' +
              'emiss'#227'o, o sistema entender'#225' como sendo uma venda '#224' vista e tamb' +
              'em lan'#231'ar'#225' automaticamente no caixa.'
            Caption = 'Venda '#224' vista lan'#231'ar no caixa automaticamente'
            DataField = 'FIN_BANCAO_LANCCX'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox5: TDBCheckBox
            Left = 10
            Top = 51
            Width = 345
            Height = 17
            Cursor = crHandPoint
            Hint = 
              'Se estiver marcado, todas as vezes que der baixa no contas a rec' +
              'eber, o valor recebido ser'#225' lan'#231'ado automaticamente no controle ' +
              'de caixa como Receita (cr'#233'dito).'
            Caption = 'Ao dar baixar manual lan'#231'ar no caixa automaticamente'
            DataField = 'FIN_CTAREC_LANCARCAIXA'
            DataSource = DS_Parametros
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox1: TDBCheckBox
            Left = 10
            Top = 70
            Width = 345
            Height = 17
            Cursor = crHandPoint
            Hint = 
              'Se estiver marcado, todas as vezes que der baixa no contas a rec' +
              'eber, o valor recebido ser'#225' lan'#231'ado automaticamente no controle ' +
              'banc'#225'rio (cr'#233'dito).'
            Caption = 'Ao dar baixar manual lan'#231'ar no banco automaticamente'
            DataField = 'FIN_CTAREC_LANCARBANCO'
            DataSource = DS_Parametros
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox6: TDBCheckBox
            Left = 10
            Top = 89
            Width = 345
            Height = 17
            Caption = 'Imprimir dados das faturas do cliente no Venda Expressa'
            DataField = 'VND_IMPFATURA'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object IDBEditDialog2: TIDBEditDialog
            Left = 441
            Top = 28
            Width = 137
            Height = 23
            Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Text = ''
            Visible = True
            EditType = etUppercase
            FocusColor = clBtnFace
            LabelCaption = 'Plano de Contas ao gerar T'#237'tulos a Receber'
            LabelAlwaysEnabled = True
            LabelFont.Charset = ANSI_CHARSET
            LabelFont.Color = clBlack
            LabelFont.Height = -12
            LabelFont.Name = 'Calibri'
            LabelFont.Style = []
            Lookup.Separator = ';'
            Version = '5.0.0.0'
            ButtonStyle = bsButton
            ButtonWidth = 16
            ButtonHint = 'Plano de Contas'
            Etched = False
            ButtonCaption = '...'
            DataField = 'FIN_CTAREC_PLANOCONTAS'
            DataSource = DS_Parametros
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = EditNomePlanoContasReceber
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO_PLANO'
            SQLdbSQL.Strings = (
              'SELECT * FROM VIEW_PLANOCONTAS'
              'WHERE'
              'CODIGO_PLANO=:CODIGO_PLANO'
              '')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM VIEW_PLANOCONTAS'
              'WHERE'
              'TIPO='#39'CREDITO'#39
              'AND'
              '%WHERE%')
            SearchDialogFieldList = <
              item
                FieldName = 'CODIGO_PLANO'
                WhereSyntax = 'CODIGO_PLANO'
                DisplayLabel = 'C'#211'DIGO'
                DisplayWidth = 15
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'NOME'
                WhereSyntax = 'NOME'
                DisplayLabel = 'PLANO DE CONTA'
                DisplayWidth = 74
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'TIPO'
                WhereSyntax = 'TIPO'
                DisplayLabel = 'TIPO'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end>
            SearchPresetList = <>
            DialogCaption = 'Pesquisa'
            DialogWidth = 0
            DialogHeight = 0
            Store = dsFields
            CompareFormatDate = 'DDMMYYYY'
            CompareFormatTime = 'HHMMSS'
            CompareFormatDateTime = 'DDMMYYYY'
            TrueExpression = '1=1'
            DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
            ConnectionDialog = FrmPrincipal.DBConexao
            Connection = FrmPrincipal.DBConexao
          end
          object ContaProcurar: TIDBEditDialog
            Left = 441
            Top = 74
            Width = 75
            Height = 23
            Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
            HelpKeyWord = ''
            Color = clWindow
            Enabled = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            Text = ''
            Visible = True
            EditType = etAlphaNumeric
            FocusColor = clBtnFace
            LabelCaption = 'Conta Caixa para gerar T'#237'tulos a Receber'
            LabelAlwaysEnabled = True
            LabelFont.Charset = ANSI_CHARSET
            LabelFont.Color = clBlack
            LabelFont.Height = -12
            LabelFont.Name = 'Calibri'
            LabelFont.Style = []
            Lookup.Separator = ';'
            Version = '5.0.0.0'
            ButtonStyle = bsButton
            ButtonWidth = 16
            ButtonHint = 'Procurar...'
            Etched = False
            ButtonCaption = '...'
            DataField = 'FIN_CTAREC_CONTACAIXA'
            DataSource = DS_Parametros
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = EditNomeContaCaixa
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT * FROM CAD_CONTAS'
              'WHERE'
              'CODIGO=:CODIGO'
              'AND'
              'EMPRESA=1')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_CONTAS'
              'WHERE'
              '%WHERE%')
            SearchDialogFieldList = <
              item
                FieldName = 'CODIGO'
                WhereSyntax = 'CODIGO'
                DisplayLabel = 'C'#211'DIGO:'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scUpper
              end
              item
                FieldName = 'NOME'
                WhereSyntax = 'NOME'
                DisplayLabel = 'NOME DA CONTA:'
                DisplayWidth = 60
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'SALDOINICIAL'
                WhereSyntax = 'SALDOINICIAL'
                DisplayLabel = 'SALDO INICIAL:'
                DisplayFormat = '###,##0.00'
                DisplayWidth = 15
                DisplayColumnWidth = 0
                FieldType = ftFloat
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'SALDOATUAL'
                WhereSyntax = 'SALDOATUAL'
                DisplayLabel = 'SALDO ATUAL:'
                DisplayFormat = '###,##0.00'
                DisplayWidth = 15
                DisplayColumnWidth = 0
                FieldType = ftFloat
                Search = False
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end>
            SearchPresetList = <>
            DialogCaption = 'Pesquisa'
            DialogWidth = 0
            DialogHeight = 0
            Store = dsFields
            CompareFormatDate = 'DDMMYYYY'
            CompareFormatTime = 'HHMMSS'
            CompareFormatDateTime = 'DDMMYYYY'
            TrueExpression = '1=1'
            DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
            ConnectionDialog = FrmPrincipal.DBConexao
            Connection = FrmPrincipal.DBConexao
          end
          object EditNomeContaCaixa: TEdit
            Left = 519
            Top = 74
            Width = 338
            Height = 23
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 8
            Text = '***'
          end
          object EditNomePlanoContasReceber: TEdit
            Left = 584
            Top = 28
            Width = 273
            Height = 23
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
        end
        object GroupBox21: TGroupBox
          Left = 0
          Top = 370
          Width = 1046
          Height = 69
          Align = alBottom
          Caption = 'Notas Fiscais de Entrada | M'#243'dulo Compras'
          TabOrder = 3
          object Edit4: TEdit
            Left = 519
            Top = 32
            Width = 338
            Height = 23
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object DbEditCFOP: TIDBEditDialog
            Left = 441
            Top = 32
            Width = 75
            Height = 23
            Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = ''
            Visible = True
            EditType = etUppercase
            FocusColor = clWindow
            LabelCaption = 'CFOP'
            LabelAlwaysEnabled = True
            LabelFont.Charset = ANSI_CHARSET
            LabelFont.Color = clBlack
            LabelFont.Height = -12
            LabelFont.Name = 'Calibri'
            LabelFont.Style = []
            Lookup.Separator = ';'
            Version = '5.0.0.0'
            ButtonStyle = bsButton
            ButtonWidth = 16
            ButtonHint = 'Plano de Contas'
            Etched = False
            ButtonCaption = '...'
            DataField = 'COMPRA_CFOP'
            DataSource = DS_Parametros
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = Edit4
            SQLdbCampoRetorno = 'DESCRICAO'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT * FROM CAD_CFOP'
              'WHERE'
              'CODIGO=:CODIGO')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_CFOP'
              'WHERE'
              'OPERACAO='#39'E'#39
              'AND'
              '%WHERE%')
            SearchDialogFieldList = <
              item
                FieldName = 'CODIGO'
                WhereSyntax = 'CODIGO'
                DisplayLabel = 'CFOP'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'DESCRICAO'
                WhereSyntax = 'DESCRICAO'
                DisplayLabel = 'Nome:'
                DisplayWidth = 75
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'OPERACAO'
                WhereSyntax = 'OPERACAO'
                DisplayLabel = 'Sa'#237'da/Entrada'
                DisplayWidth = 15
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scBeginsWith
                SearchCase = scUpper
              end>
            SearchPresetList = <>
            DialogCaption = 'Pesquisa'
            DialogWidth = 0
            DialogHeight = 0
            Store = dsFields
            CompareFormatDate = 'DDMMYYYY'
            CompareFormatTime = 'HHMMSS'
            CompareFormatDateTime = 'DDMMYYYY'
            TrueExpression = '1=1'
            DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
            ConnectionDialog = FrmPrincipal.DBConexao
            Connection = FrmPrincipal.DBConexao
          end
          object IDBEditDialog5: TIDBEditDialog
            Left = 10
            Top = 32
            Width = 137
            Height = 23
            Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = ''
            Visible = True
            EditType = etUppercase
            FocusColor = clBtnFace
            LabelCaption = 'Plano de Contas'
            LabelAlwaysEnabled = True
            LabelFont.Charset = ANSI_CHARSET
            LabelFont.Color = clBlack
            LabelFont.Height = -12
            LabelFont.Name = 'Calibri'
            LabelFont.Style = []
            Lookup.Separator = ';'
            Version = '5.0.0.0'
            ButtonStyle = bsButton
            ButtonWidth = 16
            ButtonHint = 'Plano de Contas'
            Etched = False
            ButtonCaption = '...'
            DataField = 'COMPRA_PLNCTA'
            DataSource = DS_Parametros
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = Edit3
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO_PLANO'
            SQLdbSQL.Strings = (
              'SELECT * FROM VIEW_PLANOCONTAS'
              'WHERE'
              'CODIGO_PLANO=:CODIGO_PLANO'
              '')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM VIEW_PLANOCONTAS'
              'WHERE'
              'TIPO='#39'DEBITO'#39
              'AND'
              '%WHERE%')
            SearchDialogFieldList = <
              item
                FieldName = 'CODIGO_PLANO'
                WhereSyntax = 'CODIGO_PLANO'
                DisplayLabel = 'C'#211'DIGO'
                DisplayWidth = 15
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'NOME'
                WhereSyntax = 'NOME'
                DisplayLabel = 'PLANO DE CONTA'
                DisplayWidth = 74
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'TIPO'
                WhereSyntax = 'TIPO'
                DisplayLabel = 'TIPO'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end>
            SearchPresetList = <>
            DialogCaption = 'Pesquisa'
            DialogWidth = 0
            DialogHeight = 0
            Store = dsFields
            CompareFormatDate = 'DDMMYYYY'
            CompareFormatTime = 'HHMMSS'
            CompareFormatDateTime = 'DDMMYYYY'
            TrueExpression = '1=1'
            DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
            ConnectionDialog = FrmPrincipal.DBConexao
            Connection = FrmPrincipal.DBConexao
          end
          object Edit3: TEdit
            Left = 153
            Top = 32
            Width = 273
            Height = 23
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Vendas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        ImageIndex = 4
        ParentFont = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox6: TGroupBox
          Left = 0
          Top = 0
          Width = 1046
          Height = 161
          Align = alTop
          Caption = 'Pedido de Venda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object GroupBox2: TGroupBox
            Left = 2
            Top = 70
            Width = 1042
            Height = 89
            Align = alBottom
            Caption = 'Mensagem nos pedidos de vendas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object DBMemo1: TDBMemo
              Left = 2
              Top = 20
              Width = 1038
              Height = 67
              Align = alClient
              DataField = 'PED_MSG'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 732
            Top = 20
            Width = 312
            Height = 50
            Hint = 
              'Se a resposta for SIM, as notas fiscais n'#227'o dar'#227'o baixas no esto' +
              'que. Somente os pedidos de vendas.'
            Align = alRight
            Caption = 'Ao aprovar Pedido de Venda, baixar estoque?'
            Columns = 2
            DataField = 'PED_BAIXAESTOQUE'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            Values.Strings = (
              'S'
              'N')
          end
          object GroupBox8: TGroupBox
            Left = 2
            Top = 20
            Width = 730
            Height = 50
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label17: TLabel
              Left = 239
              Top = 18
              Width = 25
              Height = 18
              Caption = 'dias'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
            end
            object Label3: TLabel
              Left = 13
              Top = 18
              Width = 186
              Height = 18
              Caption = 'Prazo de entrega dos pedidos:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit2: TDBEdit
              Left = 203
              Top = 15
              Width = 32
              Height = 24
              BiDiMode = bdRightToLeft
              Ctl3D = False
              DataField = 'PED_DIASENTREGA'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = []
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
            end
          end
        end
        object GroupBox16: TGroupBox
          Left = 0
          Top = 161
          Width = 1046
          Height = 278
          Align = alClient
          Caption = 'Centraliza'#231#227'o das Vendas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object GroupBox17: TGroupBox
            Left = 2
            Top = 20
            Width = 1042
            Height = 107
            Align = alTop
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object editComissaoNomeContaCaixa: TEdit
              Left = 87
              Top = 30
              Width = 339
              Height = 23
              CharCase = ecUpperCase
              Color = clBtnFace
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              Text = '***'
            end
            object editComissaoNomeCentroCusto: TEdit
              Left = 574
              Top = 30
              Width = 287
              Height = 23
              CharCase = ecUpperCase
              Color = clBtnFace
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
              Text = '***'
            end
            object DCodPlano: TIDBEditDialog
              Left = 10
              Top = 73
              Width = 137
              Height = 23
              Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
              HelpKeyWord = ''
              CharCase = ecUpperCase
              Color = clWindow
              Enabled = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              Text = ''
              Visible = True
              EditType = etUppercase
              FocusColor = clBtnFace
              LabelCaption = 'Plano de Contas'
              LabelAlwaysEnabled = True
              LabelFont.Charset = DEFAULT_CHARSET
              LabelFont.Color = clWindowText
              LabelFont.Height = -11
              LabelFont.Name = 'Tahoma'
              LabelFont.Style = []
              Lookup.Separator = ';'
              Version = '5.0.0.0'
              ButtonStyle = bsButton
              ButtonWidth = 16
              ButtonHint = 'Plano de Contas'
              Etched = False
              ButtonCaption = '...'
              DataField = 'FIN_CTAPAG_COMPLANCTA'
              DataSource = DS_Parametros
              ButtonKeyClickBtn = 119
              SQLdbFazBusca = True
              SQLdbFocusControl = EditNomePlanoContas
              SQLdbCampoRetorno = 'NOME'
              SQLdbRetornoVazio = '***'
              SQLdbCampoParametro = 'CODIGO_PLANO'
              SQLdbSQL.Strings = (
                'SELECT * FROM VIEW_PLANOCONTAS'
                'WHERE'
                'CODIGO_PLANO=:CODIGO_PLANO'
                '')
              SQLdbMaxLenght = 10
              SearchQuery.Strings = (
                'SELECT * FROM VIEW_PLANOCONTAS'
                'WHERE'
                'TIPO='#39'DEBITO'#39
                'AND'
                '%WHERE%')
              CountQuery.Strings = (
                'SELECT COUNT(*) FROM VIEW_PLANOCONTAS'
                'WHERE'
                'TIPO='#39'DEBITO'#39
                'AND'
                '%WHERE%')
              SearchDialogFieldList = <
                item
                  FieldName = 'CODIGO_PLANO'
                  WhereSyntax = 'CODIGO_PLANO'
                  DisplayLabel = 'C'#211'DIGO'
                  DisplayWidth = 15
                  DisplayColumnWidth = 0
                  FieldType = ftString
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scContains
                  SearchCase = scUpper
                end
                item
                  FieldName = 'NOME'
                  WhereSyntax = 'NOME'
                  DisplayLabel = 'PLANO DE CONTA'
                  DisplayWidth = 74
                  DisplayColumnWidth = 0
                  FieldType = ftString
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scContains
                  SearchCase = scUpper
                end
                item
                  FieldName = 'TIPO'
                  WhereSyntax = 'TIPO'
                  DisplayLabel = 'TIPO'
                  DisplayWidth = 10
                  DisplayColumnWidth = 0
                  FieldType = ftString
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scContains
                  SearchCase = scUpper
                end>
              SearchPresetList = <>
              DialogCaption = 'Pesquisa'
              DialogWidth = 0
              DialogHeight = 0
              Store = dsFields
              CompareFormatDate = 'DDMMYYYY'
              CompareFormatTime = 'HHMMSS'
              CompareFormatDateTime = 'DDMMYYYY'
              TrueExpression = '1=1'
              DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
              ConnectionDialog = FrmPrincipal.DBConexao
              Connection = FrmPrincipal.DBConexao
            end
            object EditNomePlanoContas: TEdit
              Left = 153
              Top = 73
              Width = 273
              Height = 23
              CharCase = ecUpperCase
              Color = clBtnFace
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object EstSearchDialogZeos1: TIDBEditDialog
              Left = 478
              Top = 30
              Width = 93
              Height = 23
              Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
              HelpKeyWord = ''
              CharCase = ecUpperCase
              Color = clWindow
              Enabled = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              Text = ''
              Visible = True
              EditType = etUppercase
              FocusColor = clWindow
              LabelCaption = 'Centro de Custo'
              LabelAlwaysEnabled = True
              LabelFont.Charset = DEFAULT_CHARSET
              LabelFont.Color = clWindowText
              LabelFont.Height = -11
              LabelFont.Name = 'Tahoma'
              LabelFont.Style = []
              Lookup.Separator = ';'
              Version = '5.0.0.0'
              ButtonStyle = bsButton
              ButtonWidth = 16
              ButtonHint = 'Departamento'
              Etched = False
              ButtonCaption = '...'
              DataField = 'FIN_CTAPAG_COMCTOCUSTO'
              DataSource = DS_Parametros
              ButtonKeyClickBtn = 119
              SQLdbFazBusca = True
              SQLdbFocusControl = editComissaoNomeCentroCusto
              SQLdbCampoRetorno = 'NOME'
              SQLdbRetornoVazio = '***'
              SQLdbCampoParametro = 'CODIGO'
              SQLdbSQL.Strings = (
                'SELECT * FROM CAD_DEPARTAMENTOS'
                'WHERE'
                'CODIGO=:CODIGO'
                '')
              SQLdbMaxLenght = 10
              SearchQuery.Strings = (
                'SELECT * FROM CAD_DEPARTAMENTOS'
                'WHERE'
                '%WHERE%')
              CountQuery.Strings = (
                'SELECT COUNT(CODIGO) FROM CAD_DEPARTAMENTOS'
                'WHERE'
                '%WHERE%')
              SearchDialogFieldList = <
                item
                  FieldName = 'CODIGO'
                  WhereSyntax = 'CODIGO'
                  DisplayLabel = 'C'#243'digo:'
                  DisplayWidth = 10
                  DisplayColumnWidth = 0
                  FieldType = ftInteger
                  Search = False
                  EmptyOperation = eoNull
                  DefaultComparison = scEqual
                  SearchCase = scMixed
                end
                item
                  FieldName = 'NOME'
                  WhereSyntax = 'NOME'
                  DisplayLabel = 'Nome:'
                  DisplayWidth = 80
                  DisplayColumnWidth = 0
                  FieldType = ftString
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scContains
                  SearchCase = scUpper
                end>
              SearchPresetList = <>
              DialogCaption = 'Pesquisa'
              DialogWidth = 0
              DialogHeight = 0
              Store = dsFields
              CompareFormatDate = 'DDMMYYYY'
              CompareFormatTime = 'HHMMSS'
              CompareFormatDateTime = 'DDMMYYYY'
              TrueExpression = '1=1'
              DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
              ConnectionDialog = FrmPrincipal.DBConexao
              Connection = FrmPrincipal.DBConexao
            end
            object IDBEditDialog1: TIDBEditDialog
              Left = 10
              Top = 30
              Width = 71
              Height = 23
              Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
              HelpKeyWord = ''
              Color = clWindow
              Enabled = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Text = ''
              Visible = True
              EditType = etAlphaNumeric
              FocusColor = clBtnFace
              LabelCaption = 'Conta Caixa:'
              LabelAlwaysEnabled = True
              LabelFont.Charset = DEFAULT_CHARSET
              LabelFont.Color = clWindowText
              LabelFont.Height = -11
              LabelFont.Name = 'Tahoma'
              LabelFont.Style = []
              Lookup.Separator = ';'
              Version = '5.0.0.0'
              ButtonStyle = bsButton
              ButtonWidth = 16
              ButtonHint = 'Procurar...'
              Etched = False
              ButtonCaption = '...'
              DataField = 'FIN_CTAPAG_COMCTACX'
              DataSource = DS_Parametros
              ButtonKeyClickBtn = 119
              SQLdbFazBusca = True
              SQLdbFocusControl = editComissaoNomeContaCaixa
              SQLdbCampoRetorno = 'NOME'
              SQLdbRetornoVazio = '***'
              SQLdbCampoParametro = 'CODIGO'
              SQLdbSQL.Strings = (
                'SELECT * FROM CAD_CONTAS'
                'WHERE'
                'CODIGO=:CODIGO'
                '')
              SQLdbMaxLenght = 10
              SearchQuery.Strings = (
                'SELECT * FROM CAD_CONTAS'
                'WHERE'
                '%WHERE%')
              SearchDialogFieldList = <
                item
                  FieldName = 'CODIGO'
                  WhereSyntax = 'CODIGO'
                  DisplayLabel = 'C'#211'DIGO:'
                  DisplayWidth = 10
                  DisplayColumnWidth = 0
                  FieldType = ftInteger
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scEqual
                  SearchCase = scUpper
                end
                item
                  FieldName = 'NOME'
                  WhereSyntax = 'NOME'
                  DisplayLabel = 'NOME DA CONTA:'
                  DisplayWidth = 60
                  DisplayColumnWidth = 0
                  FieldType = ftString
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scContains
                  SearchCase = scUpper
                end
                item
                  FieldName = 'SALDOINICIAL'
                  WhereSyntax = 'SALDOINICIAL'
                  DisplayLabel = 'SALDO INICIAL:'
                  DisplayFormat = '###,##0.00'
                  DisplayWidth = 15
                  DisplayColumnWidth = 0
                  FieldType = ftFloat
                  Search = False
                  EmptyOperation = eoNull
                  DefaultComparison = scEqual
                  SearchCase = scMixed
                end
                item
                  FieldName = 'SALDOATUAL'
                  WhereSyntax = 'SALDOATUAL'
                  DisplayLabel = 'SALDO ATUAL:'
                  DisplayFormat = '###,##0.00'
                  DisplayWidth = 15
                  DisplayColumnWidth = 0
                  FieldType = ftFloat
                  Search = False
                  EmptyOperation = eoNull
                  DefaultComparison = scEqual
                  SearchCase = scMixed
                end>
              SearchPresetList = <>
              DialogCaption = 'Pesquisa'
              DialogWidth = 0
              DialogHeight = 0
              Store = dsFields
              CompareFormatDate = 'DDMMYYYY'
              CompareFormatTime = 'HHMMSS'
              CompareFormatDateTime = 'DDMMYYYY'
              TrueExpression = '1=1'
              DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
              ConnectionDialog = FrmPrincipal.DBConexao
              Connection = FrmPrincipal.DBConexao
            end
          end
          object GroupBox24: TGroupBox
            Left = 2
            Top = 127
            Width = 1042
            Height = 84
            Align = alTop
            TabOrder = 1
            object EditCliente: TIDBEditDialog
              Left = 6
              Top = 36
              Width = 80
              Height = 23
              Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
              HelpKeyWord = ''
              CharCase = ecUpperCase
              Color = clWindow
              Enabled = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Text = ''
              Visible = True
              LabelCaption = 'Cliente padr'#227'o do sistema:'
              LabelAlwaysEnabled = True
              LabelFont.Charset = DEFAULT_CHARSET
              LabelFont.Color = clWindowText
              LabelFont.Height = -11
              LabelFont.Name = 'Tahoma'
              LabelFont.Style = []
              Lookup.Separator = ';'
              Version = '5.0.0.0'
              ButtonStyle = bsButton
              ButtonWidth = 16
              ButtonHint = 'Procurar...'
              Etched = False
              ButtonCaption = '...'
              DataField = 'VND_IDCLIENTEPADRAO'
              DataSource = DS_Parametros
              ButtonKeyClickBtn = 119
              SQLdbFazBusca = True
              SQLdbFocusControl = EditNomeCliente
              SQLdbCampoRetorno = 'NOME'
              SQLdbRetornoVazio = ' *** '
              SQLdbCampoParametro = 'CODIGO'
              SQLdbSQL.Strings = (
                'SELECT * FROM CAD_CLIENTES'
                'WHERE'
                'TIPO='#39'CLIENTE'#39
                'AND'
                'CODIGO=:CODIGO')
              SQLdbMaxLenght = 10
              SearchQuery.Strings = (
                'SELECT * FROM CAD_CLIENTES'
                'WHERE'
                'TIPO='#39'CLIENTE'#39
                'AND'
                '%WHERE%')
              CountQuery.Strings = (
                'SELECT COUNT(*) FROM CAD_CLIENTES'
                'WHERE'
                'TIPO='#39'CLIENTE'#39
                'AND'
                '%WHERE%')
              SearchDialogFieldList = <
                item
                  FieldName = 'CODIGO'
                  WhereSyntax = 'CODIGO'
                  DisplayLabel = 'C'#243'digo:'
                  DisplayWidth = 10
                  DisplayColumnWidth = 0
                  FieldType = ftInteger
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scEqual
                  SearchCase = scMixed
                end
                item
                  FieldName = 'NOME'
                  WhereSyntax = 'NOME'
                  DisplayLabel = 'Nome:'
                  DisplayWidth = 80
                  DisplayColumnWidth = 0
                  FieldType = ftString
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scContains
                  SearchCase = scUpper
                end>
              SearchPresetList = <>
              DialogCaption = 'Pesquisa'
              DialogWidth = 0
              DialogHeight = 0
              Store = dsFields
              CompareFormatDate = 'DDMMYYYY'
              CompareFormatTime = 'HHMMSS'
              CompareFormatDateTime = 'DDMMYYYY'
              TrueExpression = '1=1'
              DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
              ConnectionDialog = FrmPrincipal.DBConexao
              Connection = FrmPrincipal.DBConexao
            end
            object EditNomeCliente: TEdit
              Left = 83
              Top = 36
              Width = 339
              Height = 23
              CharCase = ecUpperCase
              Color = clBtnFace
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              Text = '***'
            end
            object EditVendedor1: TEdit
              Left = 574
              Top = 36
              Width = 299
              Height = 23
              Color = clBtnFace
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              Text = '***'
            end
            object EditCodevendedor: TIDBEditDialog
              Left = 478
              Top = 36
              Width = 93
              Height = 23
              Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
              HelpKeyWord = ''
              Color = clWindow
              Enabled = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              Text = ''
              Visible = True
              LabelCaption = 'Vendedor padr'#227'o do sistema:'
              LabelAlwaysEnabled = True
              LabelFont.Charset = DEFAULT_CHARSET
              LabelFont.Color = clWindowText
              LabelFont.Height = -11
              LabelFont.Name = 'Tahoma'
              LabelFont.Style = []
              Lookup.Separator = ';'
              Version = '5.0.0.0'
              ButtonStyle = bsButton
              ButtonWidth = 16
              ButtonHint = 'Procurar...'
              Etched = False
              ButtonCaption = '...'
              DataField = 'VND_IDVENDPADRAO'
              DataSource = DS_Parametros
              ButtonKeyClickBtn = 119
              SQLdbFazBusca = True
              SQLdbFocusControl = EditVendedor1
              SQLdbCampoRetorno = 'NOME'
              SQLdbRetornoVazio = ' *** '
              SQLdbCampoParametro = 'CODIGO'
              SQLdbSQL.Strings = (
                'SELECT * FROM CAD_CLIENTES'
                'WHERE'
                'CODIGO=:CODIGO')
              SQLdbMaxLenght = 10
              SearchQuery.Strings = (
                'SELECT * FROM CAD_CLIENTES'
                'WHERE'
                
                  'TIPO IN ('#39'VENDEDOR'#39','#39'REPRESENTANTE'#39','#39'BALCONISTA'#39','#39'FUNCIONARIO'#39','#39 +
                  'PREPOSTO'#39','#39'TELEVENDAS'#39','#39'WEBVENDAS'#39')'
                'AND'
                '%WHERE%')
              SearchDialogFieldList = <
                item
                  FieldName = 'CODIGO'
                  WhereSyntax = 'CODIGO'
                  DisplayLabel = 'C'#243'digo:'
                  DisplayWidth = 10
                  DisplayColumnWidth = 0
                  FieldType = ftInteger
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scEqual
                  SearchCase = scUpper
                end
                item
                  FieldName = 'NOME'
                  WhereSyntax = 'NOME'
                  DisplayLabel = 'Nome:'
                  DisplayWidth = 80
                  DisplayColumnWidth = 0
                  FieldType = ftString
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scContains
                  SearchCase = scUpper
                end>
              SearchPresetList = <>
              DialogCaption = 'Pesquisa'
              DialogWidth = 0
              DialogHeight = 0
              Store = dsFields
              CompareFormatDate = 'DDMMYYYY'
              CompareFormatTime = 'HHMMSS'
              CompareFormatDateTime = 'DDMMYYYY'
              TrueExpression = '1=1'
              DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
              ConnectionDialog = FrmPrincipal.DBConexao
              Connection = FrmPrincipal.DBConexao
            end
          end
        end
      end
      object Tab_NFE: TTabSheet
        Caption = 'Nota Fiscal Eletr'#244'nica'
        ImageIndex = 6
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox14: TGroupBox
          Left = 0
          Top = 182
          Width = 1046
          Height = 82
          Align = alTop
          Caption = 
            'Configura'#231#227'o Documento/N'#250'mero Fiscal/Optante do Simples Nacional' +
            ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object Label7: TLabel
            Left = 10
            Top = 27
            Width = 45
            Height = 15
            Caption = 'Modelo:'
            FocusControl = DBEdit35
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 92
            Top = 27
            Width = 30
            Height = 15
            Caption = 'S'#233'rie:'
            FocusControl = DBEdit36
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label58: TLabel
            Left = 182
            Top = 27
            Width = 112
            Height = 15
            Hint = 'informe o ultimo numero de Nota Fiscal Eletronica emitida'
            Caption = 'Ultimo N'#250'mero NF-e:'
            FocusControl = DBEdit37
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label62: TLabel
            Left = 309
            Top = 27
            Width = 74
            Height = 15
            Caption = 'Lote de Envio:'
            FocusControl = DBEdit38
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label38: TLabel
            Left = 725
            Top = 46
            Width = 58
            Height = 15
            Caption = 'Al'#237'quota %'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit35: TDBEdit
            Left = 10
            Top = 43
            Width = 74
            Height = 23
            Hint = 'Informe o n'#250'mero: 55'
            CharCase = ecUpperCase
            DataField = 'NFE_MODELO'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
          object DBEdit36: TDBEdit
            Left = 93
            Top = 43
            Width = 74
            Height = 23
            Hint = 'Informe a s'#233'rie da sua NFe (padr'#227'o '#233' numero  1)'
            CharCase = ecUpperCase
            DataField = 'NFE_SERIE'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object DBEdit37: TDBEdit
            Left = 183
            Top = 43
            Width = 118
            Height = 23
            Hint = 
              'Pela legisla'#231#227'o brasileira este campo deve ser sequencial e n'#227'o ' +
              'pode ser alterado manualmente.'
            CharCase = ecUpperCase
            DataField = 'NFE_SEQUENCIA'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
          object DBEdit38: TDBEdit
            Left = 310
            Top = 43
            Width = 83
            Height = 23
            Hint = 
              'Pela legisla'#231#227'o brasileira este campo deve ser sequencial e n'#227'o ' +
              'pode ser alterado manualmente.'
            CharCase = ecUpperCase
            DataField = 'NFE_LOTE'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
          end
          object EditAliquota: TDBEdit
            Left = 792
            Top = 43
            Width = 63
            Height = 23
            Hint = 'Al'#237'quota do Simples Nacional %'
            DataField = 'REGIME_TRIBALIQUOT'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
          end
          object DBRadioGroup14: TDBRadioGroup
            Left = 408
            Top = 11
            Width = 311
            Height = 65
            Caption = 'Regime Tribut'#225'rio'
            DataField = 'REGIME_TRIB'
            DataSource = DS_Parametros
            Items.Strings = (
              'Simples Nacional'
              'Simples Nacional '#8211' excesso de receita bruta'
              'Regime Normal')
            TabOrder = 4
            Values.Strings = (
              '1'
              '2'
              '3')
          end
        end
        object GroupBox13: TGroupBox
          Left = 0
          Top = 264
          Width = 1046
          Height = 175
          Align = alClient
          Caption = 'Tabela de Impostos por Estados (UF)'
          TabOrder = 3
          object DBGrid1: TDBGrid
            Left = 2
            Top = 16
            Width = 1042
            Height = 157
            Align = alClient
            DataSource = ds_Estados
            Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -12
            TitleFont.Name = 'Calibri'
            TitleFont.Style = []
            OnKeyPress = DBGrid1KeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'SIGLA'
                Title.Caption = 'UF (Sigla)'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME'
                Title.Caption = 'Nome do Estado'
                Width = 241
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ICMS'
                Width = 72
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ICMS_PFISICA'
                Title.Caption = 'ICMS Pessoa F'#237'sica'
                Width = 122
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IPI'
                Width = 59
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ISS'
                Width = 72
                Visible = True
              end>
          end
        end
        object GroupBox22: TGroupBox
          Left = 0
          Top = 109
          Width = 1046
          Height = 73
          Align = alTop
          Caption = 'CFOP em Notas Fiscais'
          TabOrder = 1
          object IDBEditDialog6: TIDBEditDialog
            Left = 10
            Top = 40
            Width = 75
            Height = 23
            Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = ''
            Visible = True
            EditType = etUppercase
            FocusColor = clWindow
            LabelCaption = 'CFOP para Vendas DENTRO do Estado'
            LabelAlwaysEnabled = True
            LabelFont.Charset = ANSI_CHARSET
            LabelFont.Color = clBlack
            LabelFont.Height = -12
            LabelFont.Name = 'Calibri'
            LabelFont.Style = []
            Lookup.Separator = ';'
            Version = '5.0.0.0'
            ButtonStyle = bsButton
            ButtonWidth = 16
            ButtonHint = 'Procurar...'
            Etched = False
            ButtonCaption = '...'
            DataField = 'CFOP_VNDUFLOCAL'
            DataSource = DS_Parametros
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = Edit5
            SQLdbCampoRetorno = 'DESCRICAO'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT * FROM CAD_CFOP'
              'WHERE'
              'CODIGO=:CODIGO')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_CFOP'
              'WHERE'
              'OPERACAO='#39'S'#39
              'AND'
              '%WHERE%')
            SearchDialogFieldList = <
              item
                FieldName = 'CODIGO'
                WhereSyntax = 'CODIGO'
                DisplayLabel = 'CFOP'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'DESCRICAO'
                WhereSyntax = 'DESCRICAO'
                DisplayLabel = 'Nome:'
                DisplayWidth = 75
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'OPERACAO'
                WhereSyntax = 'OPERACAO'
                DisplayLabel = 'Sa'#237'da/Entrada'
                DisplayWidth = 15
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scBeginsWith
                SearchCase = scUpper
              end>
            SearchPresetList = <>
            DialogCaption = 'Pesquisa'
            DialogWidth = 0
            DialogHeight = 0
            Store = dsFields
            CompareFormatDate = 'DDMMYYYY'
            CompareFormatTime = 'HHMMSS'
            CompareFormatDateTime = 'DDMMYYYY'
            TrueExpression = '1=1'
            DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
            ConnectionDialog = FrmPrincipal.DBConexao
            Connection = FrmPrincipal.DBConexao
          end
          object Edit5: TEdit
            Left = 88
            Top = 40
            Width = 338
            Height = 23
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object IDBEditDialog7: TIDBEditDialog
            Left = 441
            Top = 40
            Width = 75
            Height = 23
            Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = ''
            Visible = True
            EditType = etUppercase
            FocusColor = clWindow
            LabelCaption = 'CFOP para Vendas FORA do Estado'
            LabelAlwaysEnabled = True
            LabelFont.Charset = ANSI_CHARSET
            LabelFont.Color = clBlack
            LabelFont.Height = -12
            LabelFont.Name = 'Calibri'
            LabelFont.Style = []
            Lookup.Separator = ';'
            Version = '5.0.0.0'
            ButtonStyle = bsButton
            ButtonWidth = 16
            ButtonHint = 'Procurar...'
            Etched = False
            ButtonCaption = '...'
            DataField = 'CFOP_VNDAUFEXTERNO'
            DataSource = DS_Parametros
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = Edit6
            SQLdbCampoRetorno = 'DESCRICAO'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT * FROM CAD_CFOP'
              'WHERE'
              'CODIGO=:CODIGO')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_CFOP'
              'WHERE'
              'OPERACAO='#39'S'#39
              'AND'
              '%WHERE%')
            SearchDialogFieldList = <
              item
                FieldName = 'CODIGO'
                WhereSyntax = 'CODIGO'
                DisplayLabel = 'CFOP'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'DESCRICAO'
                WhereSyntax = 'DESCRICAO'
                DisplayLabel = 'Nome:'
                DisplayWidth = 75
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'OPERACAO'
                WhereSyntax = 'OPERACAO'
                DisplayLabel = 'Sa'#237'da/Entrada'
                DisplayWidth = 15
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scBeginsWith
                SearchCase = scUpper
              end>
            SearchPresetList = <>
            DialogCaption = 'Pesquisa'
            DialogWidth = 0
            DialogHeight = 0
            Store = dsFields
            CompareFormatDate = 'DDMMYYYY'
            CompareFormatTime = 'HHMMSS'
            CompareFormatDateTime = 'DDMMYYYY'
            TrueExpression = '1=1'
            DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
            ConnectionDialog = FrmPrincipal.DBConexao
            Connection = FrmPrincipal.DBConexao
          end
          object Edit6: TEdit
            Left = 517
            Top = 40
            Width = 338
            Height = 23
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 1046
          Height = 109
          Align = alTop
          BevelWidth = 2
          TabOrder = 0
          object DBRadioGroup12: TDBRadioGroup
            Left = 478
            Top = 1
            Width = 225
            Height = 104
            Caption = 'TIPO DE AMBIETE:'
            DataField = 'NFE_AMBIENTE'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Items.Strings = (
              'Produ'#231#227'o (Real)'
              'Homologa'#231#227'o (Teste)')
            ParentFont = False
            TabOrder = 2
            Values.Strings = (
              '1'
              '2')
          end
          object DBRadioGroup6: TDBRadioGroup
            Left = 255
            Top = 1
            Width = 217
            Height = 104
            Caption = 'DANFE - MODO DE IMPRESS'#195'O:'
            DataField = 'NFE_TIPODANFE'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Items.Strings = (
              'Retrato'
              'Paisagem')
            ParentFont = False
            TabOrder = 1
            Values.Strings = (
              '1'
              '2')
          end
          object DBRadioGroup11: TDBRadioGroup
            Left = 0
            Top = 1
            Width = 249
            Height = 104
            Caption = 'FORMA DE EMISS'#195'O:'
            DataField = 'NFE_FORMAEMISSAO'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Items.Strings = (
              'Normal'
              'Conting'#234'ncia'
              'SCAN'
              'DPEC'
              'FSDA')
            ParentFont = False
            TabOrder = 0
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5')
          end
          object DBRadioGroup15: TDBRadioGroup
            Left = 881
            Top = 2
            Width = 163
            Height = 105
            Align = alRight
            Caption = 'Frete por conta do:'
            DataField = 'FRETEPADRAO'
            DataSource = DS_Parametros
            Items.Strings = (
              'Emitente'
              'Destinat'#225'rio'
              'Terceiros'
              'Sem Frete')
            TabOrder = 3
            Values.Strings = (
              '0'
              '1'
              '2'
              '9')
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Representante/Vendedor'
        ImageIndex = 7
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox23: TGroupBox
          Left = 0
          Top = 0
          Width = 1046
          Height = 225
          Align = alTop
          Caption = 'PAGAMENTO DE COMISS'#213'ES:'
          TabOrder = 0
          object DBRadioGroup13: TDBRadioGroup
            Left = 2
            Top = 16
            Width = 503
            Height = 207
            Align = alLeft
            Caption = 
              'Em qual momento deve lan'#231'ar automaticamente as comiss'#245'es em Cont' +
              'as as Pagar?'
            DataField = 'FIN_CTAPAG_COMISSAO'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            Items.Strings = (
              'No momento que o cliente pagar cada titulo (Contas a Receber)'
              
                'Na aprova'#231#227'o de Pedido de Venda/emiss'#227'o de Nota Fiscal Eletr'#244'nic' +
                'a'
              'N'#227'o lan'#231'ar automaticamente (ter'#225' que fazer manualmente)')
            ParentFont = False
            TabOrder = 0
            Values.Strings = (
              'RECEBIMENTO'
              'NOTAFISCAL'
              'NAO')
          end
          object GroupBox25: TGroupBox
            Left = 505
            Top = 16
            Width = 539
            Height = 207
            Align = alClient
            Caption = 'Centralizacao de Comiss'#245'es'
            TabOrder = 1
            object Label70: TLabel
              Left = 6
              Top = 161
              Width = 216
              Height = 18
              Caption = 'Vencimento para despesas geradas'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              Visible = False
            end
            object Label69: TLabel
              Left = 266
              Top = 161
              Width = 25
              Height = 18
              Caption = 'dias'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              Visible = False
            end
            object DBEdit42: TDBEdit
              Left = 228
              Top = 155
              Width = 32
              Height = 20
              BiDiMode = bdRightToLeft
              Ctl3D = False
              DataField = 'FIN_CTAPAG_COMVECTO'
              DataSource = DS_Parametros
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = []
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 6
              Visible = False
            end
            object Edit8: TEdit
              Left = 82
              Top = 35
              Width = 273
              Height = 23
              CharCase = ecUpperCase
              Color = clBtnFace
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              Text = '***'
            end
            object IDBEditDialog9: TIDBEditDialog
              Left = 5
              Top = 35
              Width = 71
              Height = 23
              Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
              HelpKeyWord = ''
              Color = clWindow
              Enabled = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Text = ''
              Visible = True
              EditType = etAlphaNumeric
              FocusColor = clBtnFace
              LabelCaption = 'Conta Caixa:'
              LabelAlwaysEnabled = True
              LabelFont.Charset = DEFAULT_CHARSET
              LabelFont.Color = clWindowText
              LabelFont.Height = -11
              LabelFont.Name = 'Tahoma'
              LabelFont.Style = []
              Lookup.Separator = ';'
              Version = '5.0.0.0'
              ButtonStyle = bsButton
              ButtonWidth = 16
              ButtonHint = 'Procurar...'
              Etched = False
              ButtonCaption = '...'
              DataField = 'FIN_CTAPAG_COMCTACX'
              DataSource = DS_Parametros
              ButtonKeyClickBtn = 119
              SQLdbFazBusca = True
              SQLdbFocusControl = Edit8
              SQLdbCampoRetorno = 'NOME'
              SQLdbRetornoVazio = '***'
              SQLdbCampoParametro = 'CODIGO'
              SQLdbSQL.Strings = (
                'SELECT * FROM CAD_CONTAS'
                'WHERE'
                'CODIGO=:CODIGO'
                '')
              SQLdbMaxLenght = 10
              SearchQuery.Strings = (
                'SELECT * FROM CAD_CONTAS'
                'WHERE'
                '%WHERE%')
              SearchDialogFieldList = <
                item
                  FieldName = 'CODIGO'
                  WhereSyntax = 'CODIGO'
                  DisplayLabel = 'C'#211'DIGO:'
                  DisplayWidth = 10
                  DisplayColumnWidth = 0
                  FieldType = ftInteger
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scEqual
                  SearchCase = scUpper
                end
                item
                  FieldName = 'NOME'
                  WhereSyntax = 'NOME'
                  DisplayLabel = 'NOME DA CONTA:'
                  DisplayWidth = 60
                  DisplayColumnWidth = 0
                  FieldType = ftString
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scContains
                  SearchCase = scUpper
                end
                item
                  FieldName = 'SALDOINICIAL'
                  WhereSyntax = 'SALDOINICIAL'
                  DisplayLabel = 'SALDO INICIAL:'
                  DisplayFormat = '###,##0.00'
                  DisplayWidth = 15
                  DisplayColumnWidth = 0
                  FieldType = ftFloat
                  Search = False
                  EmptyOperation = eoNull
                  DefaultComparison = scEqual
                  SearchCase = scMixed
                end
                item
                  FieldName = 'SALDOATUAL'
                  WhereSyntax = 'SALDOATUAL'
                  DisplayLabel = 'SALDO ATUAL:'
                  DisplayFormat = '###,##0.00'
                  DisplayWidth = 15
                  DisplayColumnWidth = 0
                  FieldType = ftFloat
                  Search = False
                  EmptyOperation = eoNull
                  DefaultComparison = scEqual
                  SearchCase = scMixed
                end>
              SearchPresetList = <>
              DialogCaption = 'Pesquisa'
              DialogWidth = 0
              DialogHeight = 0
              Store = dsFields
              CompareFormatDate = 'DDMMYYYY'
              CompareFormatTime = 'HHMMSS'
              CompareFormatDateTime = 'DDMMYYYY'
              TrueExpression = '1=1'
              DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
              ConnectionDialog = FrmPrincipal.DBConexao
              Connection = FrmPrincipal.DBConexao
            end
            object Edit9: TEdit
              Left = 104
              Top = 75
              Width = 251
              Height = 23
              CharCase = ecUpperCase
              Color = clBtnFace
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
              Text = '***'
            end
            object IDBEditDialog10: TIDBEditDialog
              Left = 5
              Top = 75
              Width = 95
              Height = 23
              Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
              HelpKeyWord = ''
              CharCase = ecUpperCase
              Color = clWindow
              Enabled = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              Text = ''
              Visible = True
              EditType = etUppercase
              FocusColor = clWindow
              LabelCaption = 'Centro de Custo'
              LabelAlwaysEnabled = True
              LabelFont.Charset = DEFAULT_CHARSET
              LabelFont.Color = clWindowText
              LabelFont.Height = -11
              LabelFont.Name = 'Tahoma'
              LabelFont.Style = []
              Lookup.Separator = ';'
              Version = '5.0.0.0'
              ButtonStyle = bsButton
              ButtonWidth = 16
              ButtonHint = 'Departamento'
              Etched = False
              ButtonCaption = '...'
              DataField = 'FIN_CTAPAG_COMCTOCUSTO'
              DataSource = DS_Parametros
              ButtonKeyClickBtn = 119
              SQLdbFazBusca = True
              SQLdbFocusControl = Edit9
              SQLdbCampoRetorno = 'NOME'
              SQLdbRetornoVazio = '***'
              SQLdbCampoParametro = 'CODIGO'
              SQLdbSQL.Strings = (
                'SELECT * FROM CAD_DEPARTAMENTOS'
                'WHERE'
                'CODIGO=:CODIGO'
                '')
              SQLdbMaxLenght = 10
              SearchQuery.Strings = (
                'SELECT * FROM CAD_DEPARTAMENTOS'
                'WHERE'
                '%WHERE%')
              CountQuery.Strings = (
                'SELECT COUNT(CODIGO) FROM CAD_DEPARTAMENTOS'
                'WHERE'
                '%WHERE%')
              SearchDialogFieldList = <
                item
                  FieldName = 'CODIGO'
                  WhereSyntax = 'CODIGO'
                  DisplayLabel = 'C'#243'digo:'
                  DisplayWidth = 10
                  DisplayColumnWidth = 0
                  FieldType = ftInteger
                  Search = False
                  EmptyOperation = eoNull
                  DefaultComparison = scEqual
                  SearchCase = scMixed
                end
                item
                  FieldName = 'NOME'
                  WhereSyntax = 'NOME'
                  DisplayLabel = 'Nome:'
                  DisplayWidth = 80
                  DisplayColumnWidth = 0
                  FieldType = ftString
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scContains
                  SearchCase = scUpper
                end>
              SearchPresetList = <>
              DialogCaption = 'Pesquisa'
              DialogWidth = 0
              DialogHeight = 0
              Store = dsFields
              CompareFormatDate = 'DDMMYYYY'
              CompareFormatTime = 'HHMMSS'
              CompareFormatDateTime = 'DDMMYYYY'
              TrueExpression = '1=1'
              DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
              ConnectionDialog = FrmPrincipal.DBConexao
              Connection = FrmPrincipal.DBConexao
            end
            object Edit10: TEdit
              Left = 104
              Top = 126
              Width = 251
              Height = 23
              CharCase = ecUpperCase
              Color = clBtnFace
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object IDBEditDialog11: TIDBEditDialog
              Left = 5
              Top = 126
              Width = 95
              Height = 23
              Hint = 'Clique no bot'#227'o ou  tecle F8 para localizar'
              HelpKeyWord = ''
              CharCase = ecUpperCase
              Color = clWindow
              Enabled = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              Text = ''
              Visible = True
              EditType = etUppercase
              FocusColor = clBtnFace
              LabelCaption = 'Plano de Contas'
              LabelAlwaysEnabled = True
              LabelFont.Charset = DEFAULT_CHARSET
              LabelFont.Color = clWindowText
              LabelFont.Height = -11
              LabelFont.Name = 'Tahoma'
              LabelFont.Style = []
              Lookup.Separator = ';'
              Version = '5.0.0.0'
              ButtonStyle = bsButton
              ButtonWidth = 16
              ButtonHint = 'Plano de Contas'
              Etched = False
              ButtonCaption = '...'
              DataField = 'FIN_CTAPAG_COMPLANCTA'
              DataSource = DS_Parametros
              ButtonKeyClickBtn = 119
              SQLdbFazBusca = True
              SQLdbFocusControl = Edit10
              SQLdbCampoRetorno = 'NOME'
              SQLdbRetornoVazio = '***'
              SQLdbCampoParametro = 'CODIGO_PLANO'
              SQLdbSQL.Strings = (
                'SELECT * FROM VIEW_PLANOCONTAS'
                'WHERE'
                'CODIGO_PLANO=:CODIGO_PLANO'
                '')
              SQLdbMaxLenght = 10
              SearchQuery.Strings = (
                'SELECT * FROM VIEW_PLANOCONTAS'
                'WHERE'
                'TIPO='#39'DEBITO'#39
                'AND'
                '%WHERE%')
              CountQuery.Strings = (
                'SELECT COUNT(*) FROM VIEW_PLANOCONTAS'
                'WHERE'
                'TIPO='#39'DEBITO'#39
                'AND'
                '%WHERE%')
              SearchDialogFieldList = <
                item
                  FieldName = 'CODIGO_PLANO'
                  WhereSyntax = 'CODIGO_PLANO'
                  DisplayLabel = 'C'#211'DIGO'
                  DisplayWidth = 15
                  DisplayColumnWidth = 0
                  FieldType = ftString
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scContains
                  SearchCase = scUpper
                end
                item
                  FieldName = 'NOME'
                  WhereSyntax = 'NOME'
                  DisplayLabel = 'PLANO DE CONTA'
                  DisplayWidth = 74
                  DisplayColumnWidth = 0
                  FieldType = ftString
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scContains
                  SearchCase = scUpper
                end
                item
                  FieldName = 'TIPO'
                  WhereSyntax = 'TIPO'
                  DisplayLabel = 'TIPO'
                  DisplayWidth = 10
                  DisplayColumnWidth = 0
                  FieldType = ftString
                  Search = True
                  EmptyOperation = eoNull
                  DefaultComparison = scContains
                  SearchCase = scUpper
                end>
              SearchPresetList = <>
              DialogCaption = 'Pesquisa'
              DialogWidth = 0
              DialogHeight = 0
              Store = dsFields
              CompareFormatDate = 'DDMMYYYY'
              CompareFormatTime = 'HHMMSS'
              CompareFormatDateTime = 'DDMMYYYY'
              TrueExpression = '1=1'
              DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
              ConnectionDialog = FrmPrincipal.DBConexao
              Connection = FrmPrincipal.DBConexao
            end
          end
        end
      end
      object Tab_Producao: TTabSheet
        Caption = 'PPCP (produ'#231#227'o)'
        ImageIndex = 5
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox12: TGroupBox
          Left = 0
          Top = 0
          Width = 1046
          Height = 116
          Align = alTop
          Caption = 'Situa'#231#227'o Tribut'#225'ria | Classifica'#231#227'o Fiscal | C'#243'digo NCM '
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 0
          object Label24: TLabel
            Left = 10
            Top = 25
            Width = 200
            Height = 13
            Caption = 'Situa'#231#227'o Tribut'#225'ria (Refer'#234'ncias/Modelos)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label42: TLabel
            Left = 324
            Top = 25
            Width = 206
            Height = 13
            Caption = 'Classifica'#231#227'o Fiscal  (Refer'#234'ncias/Modelos)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label65: TLabel
            Left = 634
            Top = 25
            Width = 160
            Height = 13
            Caption = 'C'#243'digo NCM (produtos acabados)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 10
            Top = 40
            Width = 300
            Height = 21
            DataField = 'SIT_TRIB'
            DataSource = DS_Parametros
            DropDownRows = 12
            DropDownWidth = 700
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'CODIGO'
            ListField = 'DESCRICAO;CODIGO'
            NullValueKey = 46
            ParentFont = False
            TabOrder = 0
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 324
            Top = 40
            Width = 300
            Height = 21
            DataField = 'CLASSIF_FISCAL'
            DataSource = DS_Parametros
            DropDownRows = 12
            DropDownWidth = 700
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'CODIGO'
            ListField = 'DESCRICAO;CODIGO'
            NullValueKey = 46
            ParentFont = False
            TabOrder = 1
          end
          object EditNCM: TDBEdit
            Left = 634
            Top = 40
            Width = 175
            Height = 21
            Hint = 'Necess'#225'rio para emiss'#227'o da Nota Fiscal Eletr'#244'nica'
            CharCase = ecUpperCase
            DataField = 'NCM_PADRAO'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
          object Edit7: TEdit
            Left = 102
            Top = 81
            Width = 227
            Height = 23
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            Text = '***'
          end
          object IDBEditDialog8: TIDBEditDialog
            Left = 10
            Top = 81
            Width = 90
            Height = 23
            Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            ShowHint = True
            TabOrder = 3
            Text = ''
            Visible = True
            LabelCaption = 'Controle de Qualidade:'
            LabelAlwaysEnabled = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Separator = ';'
            Version = '5.0.0.0'
            ButtonStyle = bsButton
            ButtonWidth = 16
            ButtonHint = 'Procurar...'
            Etched = False
            ButtonCaption = '...'
            DataField = 'QUALIDADE_PADRAO'
            DataSource = DS_Parametros
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = Edit7
            SQLdbCampoRetorno = 'DESCRICAO'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT * FROM CAD_QUALIDADES'
              'WHERE'
              'CODIGO=:CODIGO'
              '')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_QUALIDADES'
              'WHERE'
              '%WHERE%')
            SearchDialogFieldList = <
              item
                FieldName = 'CODIGO'
                WhereSyntax = 'CODIGO'
                DisplayLabel = 'C'#211'DIGO:'
                DisplayWidth = 12
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'DESCRICAO'
                WhereSyntax = 'DESCRICAO'
                DisplayLabel = 'NOME:'
                DisplayWidth = 90
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end>
            SearchPresetList = <>
            DialogCaption = 'Pesquisa'
            DialogWidth = 0
            DialogHeight = 0
            Store = dsFields
            CompareFormatDate = 'DDMMYYYY'
            CompareFormatTime = 'HHMMSS'
            CompareFormatDateTime = 'DDMMYYYY'
            TrueExpression = '1=1'
            DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
            ConnectionDialog = FrmPrincipal.DBConexao
            Connection = FrmPrincipal.DBConexao
          end
        end
        object GroupBox15: TGroupBox
          Left = 0
          Top = 116
          Width = 1046
          Height = 60
          Align = alTop
          Caption = 'Terceirizado - Dia de vencimento no m'#234's (para pagamento)'
          TabOrder = 1
          object Label67: TLabel
            Left = 11
            Top = 28
            Width = 105
            Height = 14
            Caption = 'Dia de vencimento:'
          end
          object DBEdit41: TDBEdit
            Left = 120
            Top = 26
            Width = 32
            Height = 20
            Ctl3D = False
            DataField = 'TERC_DIAVCTO'
            DataSource = DS_Parametros
            ParentCtl3D = False
            TabOrder = 0
          end
        end
        object DBRadioGroup16: TDBRadioGroup
          Left = 0
          Top = 176
          Width = 1046
          Height = 60
          Align = alTop
          Caption = 'Atualizar estoque na finaliza'#231#227'o do andamento fase'
          Columns = 2
          DataField = 'PRODUCAO_FINALIZAR'
          DataSource = DS_Parametros
          Items.Strings = (
            'Autom'#225'tico'
            'C'#243'digo de Barras')
          TabOrder = 2
          Values.Strings = (
            'AUTOMATICO'
            'CODIGOBARRAS')
        end
      end
      object Tab_Configurar: TTabSheet
        Caption = 'Estoque'
        ImageIndex = 5
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox3: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1040
          Height = 278
          Align = alTop
          Caption = 'Estoque:'
          TabOrder = 0
          object DBCheckBox11: TDBCheckBox
            Left = 2
            Top = 16
            Width = 1036
            Height = 17
            Align = alTop
            Caption = 'Impedir venda sem estoque'
            DataField = 'ESTOQUENEGATIVO'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object GroupBox5: TGroupBox
            Left = 2
            Top = 33
            Width = 1036
            Height = 143
            Align = alTop
            Caption = 'Codifica'#231#227'o dos produtos:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object Label21: TLabel
              Left = 217
              Top = 30
              Width = 68
              Height = 13
              Caption = 'D'#237'gitos Grupo:'
            end
            object Label22: TLabel
              Left = 349
              Top = 30
              Width = 85
              Height = 13
              Caption = 'D'#237'gitos Subgrupo:'
            end
            object Label23: TLabel
              Left = 492
              Top = 30
              Width = 77
              Height = 13
              Caption = 'D'#237'gitos Produto:'
            end
            object Label27: TLabel
              Left = 5
              Top = 30
              Width = 54
              Height = 13
              Caption = 'Separador:'
            end
            object GrpPreV: TGroupBox
              Left = 2
              Top = 68
              Width = 1032
              Height = 73
              Align = alBottom
              Caption = 'Codigo do produto ficar'#225' assim:'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              object GrpPreview: TLabel
                Left = 2
                Top = 15
                Width = 54
                Height = 35
                Align = alClient
                Alignment = taCenter
                Caption = '000'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -29
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Layout = tlCenter
              end
            end
            object DBComboBox1: TDBComboBox
              Left = 63
              Top = 27
              Width = 137
              Height = 21
              Style = csDropDownList
              DataField = 'SEPARADOR'
              DataSource = DS_Parametros
              Items.Strings = (
                '.'
                '-'
                '/'
                '|')
              TabOrder = 0
              OnContextPopup = DBComboBox1ContextPopup
            end
            object cxDBSpinEdit1: TcxDBSpinEdit
              Left = 292
              Top = 27
              DataBinding.DataField = 'GRUPO'
              DataBinding.DataSource = DS_Parametros
              TabOrder = 1
              OnClick = cxDBSpinEdit1Click
              Width = 44
            end
            object cxDBSpinEdit2: TcxDBSpinEdit
              Left = 437
              Top = 27
              DataBinding.DataField = 'SUBGRUPO'
              DataBinding.DataSource = DS_Parametros
              TabOrder = 2
              OnClick = cxDBSpinEdit1Click
              Width = 44
            end
            object cxDBSpinEdit3: TcxDBSpinEdit
              Left = 572
              Top = 27
              DataBinding.DataField = 'PRODUTO'
              DataBinding.DataSource = DS_Parametros
              TabOrder = 3
              OnClick = cxDBSpinEdit1Click
              Width = 44
            end
          end
          object DBRadioGroup9: TDBRadioGroup
            Left = 2
            Top = 176
            Width = 1036
            Height = 73
            Align = alTop
            Caption = 'Codifica'#231#227'o dos Produtos'
            Columns = 2
            DataField = 'CODIFICACAO'
            DataSource = DS_Parametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'Autom'#225'tico (grupo + subgrupo + codigo)'
              'Manual (at'#233' 30 d'#237'gitos)')
            ParentFont = False
            TabOrder = 1
            Values.Strings = (
              'AUTO'
              'MANUAL')
          end
        end
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 1064
    Height = 33
    Align = alTop
    Constraints.MinHeight = 33
    Color = 14120960
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    ExplicitWidth = 1064
    ExplicitHeight = 33
    inherited Image3: TImage
      Width = 1064
      Height = 33
      ExplicitWidth = 894
    end
    inherited pnTitulo: TPanel
      Width = 1064
      Height = 33
      Constraints.MinHeight = 33
      ExplicitWidth = 1064
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 921
        Height = 25
        Caption = 'Cadastro de Empresa'
        ExplicitWidth = 416
        ExplicitHeight = 33
      end
      inherited Image1: TImage
        Height = 31
        ExplicitLeft = 1008
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 1005
        Height = 25
        ExplicitLeft = 838
        ExplicitHeight = 31
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 514
    Width = 1064
    Height = 60
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 930
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitTop = 514
    ExplicitWidth = 1064
    inherited PanelBotoesBottom: TPanel
      Width = 1054
      ExplicitWidth = 1054
      inherited SpbAdicionar: TSpeedButton
        Left = 160
        ExplicitLeft = 160
      end
      inherited SpbEditar: TSpeedButton
        Left = 360
        ExplicitLeft = 360
      end
      inherited SpbCancelar: TSpeedButton
        Left = 460
        ExplicitLeft = 460
      end
      inherited SpbSalvar: TSpeedButton
        Left = 260
        ExplicitLeft = 260
      end
      inherited SpbExcluir: TSpeedButton
        Left = 560
        ExplicitLeft = 560
      end
      inherited SpbImprimir: TSpeedButton
        Left = 760
        ExplicitLeft = 760
      end
      inherited SpbSair: TSpeedButton
        Left = 950
        ExplicitLeft = 950
      end
      inherited SpbExtra: TSpeedButton
        Left = 860
        ExplicitLeft = 860
      end
      inherited SpbProcurar: TSpeedButton
        Left = 660
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 660
      end
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 
      'All (*.gif;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf)|*.gif;*.jpg;*.j' +
      'peg;*.bmp;*.ico;*.emf;*.wmf|GIF Image (*.gif)|*.gif|JPEG Image F' +
      'ile (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Bitmaps (*.bmp' +
      ')|*.bmp|Icons (*.ico)|*.ico|Enhanced Metafiles (*.emf)|*.emf|Met' +
      'afiles (*.wmf)|*.wmf'
    Left = 581
    Top = 337
  end
  object DS_Parametros: TDataSource
    DataSet = db_Parametros
    Left = 872
    Top = 128
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 504
    Top = 336
  end
  object db_Estados: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_UF_IMPOSTOS'
      'ORDER BY SIGLA, NOME')
    Left = 504
    Top = 399
    object db_EstadosSIGLA: TStringField
      FieldName = 'SIGLA'
      Origin = 'SIGLA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object db_EstadosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 200
    end
    object db_EstadosICMS: TFloatField
      FieldName = 'ICMS'
      Origin = 'ICMS'
      DisplayFormat = '###,##0.00%'
    end
    object db_EstadosICMS_PFISICA: TFloatField
      FieldName = 'ICMS_PFISICA'
      Origin = 'ICMS_PFISICA'
      DisplayFormat = '###,##0.00%'
    end
    object db_EstadosISS: TFloatField
      FieldName = 'ISS'
      Origin = 'ISS'
      DisplayFormat = '###,##0.00%'
    end
    object db_EstadosIPI: TFloatField
      FieldName = 'IPI'
      Origin = 'IPI'
      DisplayFormat = '###,##0.00%'
    end
    object db_EstadosIR: TFloatField
      FieldName = 'IR'
      Origin = 'IR'
      DisplayFormat = '###,##0.00%'
    end
    object db_EstadosRETER_PIS: TStringField
      FieldName = 'RETER_PIS'
      Origin = 'RETER_PIS'
      Size = 10
    end
    object db_EstadosRETER_COFINS: TStringField
      FieldName = 'RETER_COFINS'
      Origin = 'RETER_COFINS'
      Size = 10
    end
    object db_EstadosRETER_CSLL: TStringField
      FieldName = 'RETER_CSLL'
      Origin = 'RETER_CSLL'
      Size = 10
    end
    object db_EstadosRETER_INSS: TStringField
      FieldName = 'RETER_INSS'
      Origin = 'RETER_INSS'
      Size = 10
    end
  end
  object ds_Estados: TDataSource
    DataSet = db_Estados
    Left = 580
    Top = 400
  end
  object db_Parametros: TFDQuery
    AfterScroll = db_ParametrosAfterScroll
    OnNewRecord = db_ParametrosNewRecord
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'EMPRESA'
    SQL.Strings = (
      'SELECT * FROM CONFIG_PARAMETROS')
    Left = 779
    Top = 129
  end
end
