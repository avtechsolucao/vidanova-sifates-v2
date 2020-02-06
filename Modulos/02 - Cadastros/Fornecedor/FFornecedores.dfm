object FrmFornecedores: TFrmFornecedores
  Left = 0
  Top = 1
  HelpContext = 10
  Caption = 'Fornecedores'
  ClientHeight = 553
  ClientWidth = 871
  Color = clBtnFace
  Constraints.MinHeight = 450
  Constraints.MinWidth = 700
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label17: TLabel
    Left = 383
    Top = 149
    Width = 127
    Height = 13
    Alignment = taRightJustify
    Caption = 'Atraso M'#233'dio nas Entregas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 871
    Height = 33
    Align = alTop
    Constraints.MinHeight = 33
    Color = 14120960
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    ExplicitWidth = 871
    ExplicitHeight = 33
    inherited Image3: TImage
      Width = 871
      Height = 33
      ExplicitTop = 33
      ExplicitWidth = 765
    end
    inherited pnTitulo: TPanel
      Width = 871
      Height = 33
      Constraints.MinHeight = 33
      ExplicitWidth = 871
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 728
        Height = 25
        Caption = 'Fornecedores'
        ExplicitWidth = 136
        ExplicitHeight = 25
      end
      inherited Image1: TImage
        Height = 31
        ExplicitLeft = 815
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 812
        Height = 25
        ExplicitLeft = 709
        ExplicitHeight = 31
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 493
    Width = 871
    Height = 60
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 493
    ExplicitWidth = 871
    inherited PanelBotoesBottom: TPanel
      Width = 861
      ExplicitWidth = 861
      inherited SpbAdicionar: TSpeedButton
        Left = -33
        ExplicitLeft = -33
      end
      inherited SpbEditar: TSpeedButton
        Left = 167
        ExplicitLeft = 167
      end
      inherited SpbCancelar: TSpeedButton
        Left = 267
        ExplicitLeft = 267
      end
      inherited SpbSalvar: TSpeedButton
        Left = 67
        ExplicitLeft = 67
      end
      inherited SpbExcluir: TSpeedButton
        Left = 367
        ExplicitLeft = 367
      end
      inherited SpbImprimir: TSpeedButton
        Left = 567
        ExplicitLeft = 567
      end
      inherited SpbSair: TSpeedButton
        Left = 757
        ExplicitLeft = 757
      end
      inherited SpbExtra: TSpeedButton
        Left = 667
        ExplicitLeft = 667
      end
      inherited SpbProcurar: TSpeedButton
        Left = 467
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 467
      end
    end
  end
  object LocalizaFornecedor: TIDBEditDialog
    Left = 545
    Top = 8
    Width = 65
    Height = 21
    HelpKeyWord = ''
    Color = clWindow
    Enabled = True
    TabOrder = 2
    Text = ''
    Visible = False
    LabelCaption = 'Fornecedores'
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
    SQLdbFazBusca = True
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = ' *** '
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      'SELECT * FROM CAD_MAQUINAS'
      'WHERE'
      'CODIGO=:CODIGO')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM CAD_CLIENTES'
      'WHERE'
      '%WHERE%'
      'AND'
      'TIPO IN ('#39'FORNECEDOR'#39','#39'OFICINA'#39','#39'TERCEIRIZADO'#39')'
      'ORDER BY NOME')
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
        SearchCase = scMixed
      end
      item
        FieldName = 'NOME'
        WhereSyntax = 'NOME'
        DisplayLabel = 'NOME:'
        DisplayWidth = 50
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'CPF_CNPJ'
        WhereSyntax = 'CPF_CNPJ'
        DisplayLabel = 'CNPJ/CPF:'
        DisplayWidth = 18
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'NOME_FANTASIA'
        WhereSyntax = 'NOME_FANTASIA'
        DisplayLabel = 'NOME FANTASIA:'
        DisplayWidth = 30
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
  object pgFornecedores: TPageControl
    Left = 0
    Top = 33
    Width = 871
    Height = 460
    ActivePage = TabDados
    Align = alClient
    TabOrder = 3
    object TabDados: TTabSheet
      Caption = 'Dados Gerais'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 863
        Height = 361
        Align = alClient
        TabOrder = 0
        object Label5: TLabel
          Left = 14
          Top = 41
          Width = 3
          Height = 14
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 96
          Top = 96
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object Label7: TLabel
          Left = 5
          Top = 96
          Width = 21
          Height = 13
          Caption = 'CEP'
        end
        object Label26: TLabel
          Left = 5
          Top = 137
          Width = 27
          Height = 13
          Caption = 'Bairro'
        end
        object Label27: TLabel
          Left = 239
          Top = 136
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object Label28: TLabel
          Left = 650
          Top = 137
          Width = 14
          Height = 13
          Caption = 'UF'
        end
        object Label68: TLabel
          Left = 116
          Top = 177
          Width = 28
          Height = 13
          Caption = 'E-mail'
        end
        object Label69: TLabel
          Left = 445
          Top = 177
          Width = 80
          Height = 13
          Caption = 'Site (home page)'
        end
        object Spb_email2: TSpeedButton
          Left = 418
          Top = 192
          Width = 23
          Height = 22
          Cursor = crHandPoint
          Hint = 'enviar e-mail...'
          Caption = '...'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = Spb_email2Click
        end
        object Label2: TLabel
          Left = 5
          Top = 54
          Width = 63
          Height = 13
          Caption = 'Raz'#227'o Social'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 269
          Top = 55
          Width = 71
          Height = 13
          Caption = 'Nome Fantasia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label70: TLabel
          Left = 341
          Top = 14
          Width = 82
          Height = 13
          Caption = 'Incri'#231#227'o Estadual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label40: TLabel
          Left = 470
          Top = 54
          Width = 37
          Height = 13
          Caption = 'Contato'
        end
        object Label49: TLabel
          Left = 598
          Top = 255
          Width = 71
          Height = 13
          Caption = 'Valor Servi'#231'os:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton1: TSpeedButton
          Left = 673
          Top = 193
          Width = 23
          Height = 22
          Cursor = crHandPoint
          Hint = 'enviar e-mail...'
          Caption = '...'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton1Click
        end
        object Label4: TLabel
          Left = 5
          Top = 14
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 6
          Top = 177
          Width = 24
          Height = 13
          Caption = 'Fone'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 616
          Top = 96
          Width = 37
          Height = 13
          Caption = 'Numero'
        end
        object Label10: TLabel
          Left = 156
          Top = 139
          Width = 69
          Height = 13
          Caption = 'C'#243'digo Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 199
          Top = 10
          Width = 50
          Height = 15
          Caption = 'CNPJ/CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 470
          Top = 14
          Width = 21
          Height = 13
          Caption = 'Tipo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit42: TDBEdit
          Left = 96
          Top = 112
          Width = 514
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ENDERECO'
          DataSource = DS_Fornecedor
          TabOrder = 9
        end
        object DBEdit43: TDBEdit
          Left = 5
          Top = 112
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CEP'
          DataSource = DS_Fornecedor
          TabOrder = 8
        end
        object DBEdit44: TDBEdit
          Left = 5
          Top = 153
          Width = 145
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BAIRRO'
          DataSource = DS_Fornecedor
          TabOrder = 11
        end
        object EditUF: TDBEdit
          Left = 651
          Top = 153
          Width = 45
          Height = 21
          CharCase = ecUpperCase
          DataField = 'UF'
          DataSource = DS_Fornecedor
          TabOrder = 14
          OnExit = EditUFExit
        end
        object DBEdit50: TDBEdit
          Left = 116
          Top = 193
          Width = 301
          Height = 21
          CharCase = ecLowerCase
          DataField = 'EMAIL'
          DataSource = DS_Fornecedor
          TabOrder = 17
        end
        object DBEdit51: TDBEdit
          Left = 444
          Top = 193
          Width = 227
          Height = 21
          CharCase = ecLowerCase
          DataField = 'SITE'
          DataSource = DS_Fornecedor
          TabOrder = 18
        end
        object EdRazaoSocial: TDBEdit
          Left = 5
          Top = 70
          Width = 256
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = DS_Fornecedor
          TabOrder = 5
        end
        object EdFantasia: TDBEdit
          Left = 267
          Top = 70
          Width = 197
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME_FANTASIA'
          DataSource = DS_Fornecedor
          TabOrder = 6
        end
        object EdRGInscrEst: TDBEdit
          Left = 341
          Top = 30
          Width = 113
          Height = 21
          CharCase = ecUpperCase
          DataField = 'RG_IE'
          DataSource = DS_Fornecedor
          TabOrder = 3
        end
        object EditNomeCidade2: TDBEdit
          Left = 239
          Top = 153
          Width = 406
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOMECIDADE'
          DataSource = DS_Fornecedor
          TabOrder = 13
        end
        object DBEdit59: TDBEdit
          Left = 470
          Top = 69
          Width = 226
          Height = 21
          DataField = 'CONTATO'
          DataSource = DS_Fornecedor
          TabOrder = 7
        end
        object DBEdit1: TDBEdit
          Left = 598
          Top = 269
          Width = 98
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VALOR_SERVICOS'
          DataSource = DS_Fornecedor
          MaxLength = 10
          TabOrder = 29
        end
        object DBEdit2: TDBEdit
          Left = 5
          Top = 30
          Width = 44
          Height = 21
          CharCase = ecUpperCase
          Color = clBtnFace
          DataField = 'CODIGO'
          DataSource = DS_Fornecedor
          Enabled = False
          TabOrder = 0
        end
        object EditcodRegiao1: TIDBEditDialog
          Left = 6
          Top = 231
          Width = 52
          Height = 21
          HelpKeyWord = ''
          Color = clWindow
          Enabled = True
          TabOrder = 19
          Text = ''
          Visible = True
          LabelCaption = 'Regi'#227'o'
          LabelTransparent = True
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
          DataField = 'REGIAO'
          DataSource = DS_Fornecedor
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = EditRegiao1
          SQLdbCampoRetorno = 'NOME'
          SQLdbRetornoVazio = '***'
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT * FROM CAD_REGIOES'
            'WHERE'
            'CODIGO=:CODIGO')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM CAD_REGIOES'
            'WHERE'
            '%WHERE%')
          CountQuery.Strings = (
            'SELECT COUNT(*) FROM CAD_REGIOES'
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
        object EditRegiao1: TEdit
          Left = 59
          Top = 231
          Width = 160
          Height = 21
          Color = clBtnFace
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 20
        end
        object DBEdit13: TDBEdit
          Left = 42
          Top = 193
          Width = 68
          Height = 21
          DataField = 'FONE'
          DataSource = DS_Fornecedor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
        end
        object DBEdit14: TDBEdit
          Left = 6
          Top = 193
          Width = 35
          Height = 21
          DataField = 'DDD_FONE'
          DataSource = DS_Fornecedor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 2
          ParentFont = False
          TabOrder = 15
        end
        object DCodPlano: TIDBEditDialog
          Left = 7
          Top = 269
          Width = 124
          Height = 21
          HelpKeyWord = ''
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 25
          Text = ''
          Visible = True
          EditType = etUppercase
          EmptyText = 'F8 - Pesquisar'
          FocusColor = clBtnFace
          LabelCaption = 'Plano de Contas'
          LabelTransparent = True
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
          DataField = 'PLANO_CONTAS'
          DataSource = DS_Fornecedor
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = EditNomePlanoContas
          SQLdbCampoRetorno = 'NOME'
          SQLdbRetornoVazio = '***'
          SQLdbCampoParametro = 'CODIGO_PLANO'
          SQLdbSQL.Strings = (
            'SELECT * FROM VIEW_PLANOCONTAS'
            'WHERE'
            'CODIGO_PLANO=:CODIGO_PLANO')
          SQLdbMaxLenght = 200
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
              DisplayWidth = 30
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
              DisplayLabel = 'NOME DO PLANO DE CONTA:'
              DisplayWidth = 62
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
          Left = 131
          Top = 269
          Width = 190
          Height = 21
          AutoSize = False
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 26
          Text = '***'
        end
        object DBEdit3: TDBEdit
          Left = 616
          Top = 113
          Width = 80
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUMERO'
          DataSource = DS_Fornecedor
          TabOrder = 10
        end
        object DbEditCFOP: TIDBEditDialog
          Left = 325
          Top = 269
          Width = 75
          Height = 21
          HelpKeyWord = ''
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 27
          Text = ''
          Visible = True
          EditType = etUppercase
          EmptyText = 'F8 - Pesquisar'
          FocusColor = clWindow
          LabelCaption = 'CFOP'
          LabelTransparent = True
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
          DataField = 'CFOP'
          DataSource = DS_Fornecedor
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = Edit1
          SQLdbCampoRetorno = 'DESCRICAO'
          SQLdbRetornoVazio = '***'
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT * FROM CAD_CFOP'
            'WHERE'
            'OPERACAO='#39'E'#39
            'AND'
            'CODIGO=:CODIGO'
            '')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM CAD_CFOP'
            'WHERE'
            'OPERACAO='#39'E'#39
            'AND'
            '%WHERE%')
          CountQuery.Strings = (
            'SELECT COUNT(CODIGO) FROM CAD_CFOP'
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
              DisplayWidth = 70
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
              DisplayWidth = 12
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
        object Edit1: TEdit
          Left = 402
          Top = 269
          Width = 192
          Height = 21
          AutoSize = False
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 28
        end
        object EstSearchDialogZeos1: TIDBEditDialog
          Left = 490
          Top = 231
          Width = 74
          Height = 21
          HelpKeyWord = ''
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 23
          Text = ''
          Visible = True
          EditType = etUppercase
          EmptyText = 'F8 - Pesquisar'
          FocusColor = clWindow
          LabelCaption = 'Centro de Custo:'
          LabelTransparent = True
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
          DataField = 'CENTROCUSTO'
          DataSource = DS_Fornecedor
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = Edit2
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
              DisplayWidth = 90
              DisplayColumnWidth = 0
              FieldType = ftString
              Search = True
              EmptyOperation = eoNull
              DefaultComparison = scBeginsWith
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
        object Edit2: TEdit
          Left = 567
          Top = 231
          Width = 129
          Height = 21
          AutoSize = False
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 24
        end
        object EditTransportadora: TIDBEditDialog
          Left = 225
          Top = 231
          Width = 65
          Height = 21
          HelpKeyWord = ''
          Color = clWindow
          Enabled = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 21
          Text = ''
          Visible = True
          EditType = etAlphaNumeric
          EmptyText = 'Tecle F8'
          FocusColor = clBtnFace
          LabelCaption = 'Transportadora:'
          LabelTransparent = True
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
          ButtonHint = 'Transportadora:'
          Etched = False
          ButtonCaption = '...'
          DataField = 'TRANSPORTADORA'
          DataSource = DS_Fornecedor
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = EditNomeTrasportadora
          SQLdbCampoRetorno = 'NOME'
          SQLdbRetornoVazio = '***'
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT * FROM CAD_CLIENTES'
            'WHERE'
            'TIPO='#39'TRANSPORTADORA'#39
            'AND'
            'CODIGO=:CODIGO'
            ''
            '')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM CAD_CLIENTES'
            'WHERE'
            'TIPO='#39'TRANSPORTADORA'#39
            'AND'
            '%WHERE%')
          CountQuery.Strings = (
            'SELECT count(*) FROM CAD_CLIENTES'
            'WHERE'
            'TIPO='#39'TRANSPORTADORA'#39
            'AND'
            '%WHERE%')
          SearchDialogFieldList = <
            item
              FieldName = 'CODIGO'
              WhereSyntax = 'CODIGO'
              DisplayLabel = 'C'#243'digo'
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
        object EditNomeTrasportadora: TEdit
          Left = 294
          Top = 231
          Width = 187
          Height = 21
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 22
          Text = '***'
        end
        object EditCodCidade1: TDBEdit
          Left = 156
          Top = 153
          Width = 77
          Height = 21
          Hint = 'Codigo da Cidade de acordo com o IBGE'
          CharCase = ecUpperCase
          DataField = 'IDCIDADE'
          DataSource = DS_Fornecedor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          OnKeyDown = EditCodCidade1KeyDown
        end
        object rgTipo: TDBRadioGroup
          Left = 55
          Top = 13
          Width = 140
          Height = 41
          Caption = 'Tipo de Cadastro'
          Columns = 2
          DataField = 'CLASSIFICACAO'
          DataSource = DS_Fornecedor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Items.Strings = (
            'Juridica'
            'F'#237'sica')
          ParentFont = False
          TabOrder = 1
          Values.Strings = (
            'J'
            'F')
          OnChange = rgTipoChange
        end
        object EditCNPJ: TcxDBMaskEdit
          Left = 201
          Top = 30
          DataBinding.DataField = 'CPF_CNPJ'
          DataBinding.DataSource = DS_Fornecedor
          TabOrder = 2
          Width = 132
        end
        object cbxTipo: TDBComboBox
          Left = 470
          Top = 30
          Width = 226
          Height = 21
          Style = csDropDownList
          DataField = 'TIPO'
          DataSource = DS_Fornecedor
          Items.Strings = (
            'FORNECEDOR'
            'TERCEIRIZADO')
          TabOrder = 4
        end
      end
      object GroupBox10: TGroupBox
        Left = 0
        Top = 361
        Width = 863
        Height = 71
        Align = alBottom
        Caption = 'Detalhes'
        TabOrder = 1
        object DBMemo2: TDBMemo
          Left = 2
          Top = 15
          Width = 859
          Height = 54
          Align = alClient
          DataField = 'OBSERVACAO'
          DataSource = DS_Fornecedor
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
    object TabPerfil: TTabSheet
      Caption = 'Perfil'
      ImageIndex = 1
      object GroupBox2: TGroupBox
        Left = 0
        Top = 91
        Width = 863
        Height = 54
        Align = alTop
        Caption = 'Registro de Atrasos'
        TabOrder = 1
        object Label16: TLabel
          Left = 20
          Top = 23
          Width = 127
          Height = 13
          Alignment = taRightJustify
          Caption = 'Atraso M'#233'dio nas Entregas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 321
          Top = 23
          Width = 99
          Height = 13
          Alignment = taRightJustify
          Caption = 'Total de Ocorr'#234'ncias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit4: TDBEdit
          Left = 150
          Top = 20
          Width = 156
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = DS_Fornecedor
          TabOrder = 0
        end
        object DBEdit5: TDBEdit
          Left = 425
          Top = 20
          Width = 144
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = DS_Fornecedor
          TabOrder = 1
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 863
        Height = 91
        Align = alTop
        TabOrder = 0
        object Label29: TLabel
          Left = 65
          Top = 21
          Width = 79
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo de Contrato'
        end
        object Label11: TLabel
          Left = 88
          Top = 43
          Width = 56
          Height = 13
          Alignment = taRightJustify
          Caption = 'Seguimento'
        end
        object Label12: TLabel
          Left = 507
          Top = 18
          Width = 111
          Height = 13
          Alignment = taRightJustify
          Caption = 'Possui Certifica'#231#227'o ISO'
        end
        object Label13: TLabel
          Left = 525
          Top = 44
          Width = 94
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vende pelo BNDES'
        end
        object Label14: TLabel
          Left = 472
          Top = 68
          Width = 147
          Height = 13
          Alignment = taRightJustify
          Caption = 'Participa de Cota'#231#227'o/Licita'#231#227'o'
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 147
          Top = 15
          Width = 319
          Height = 21
          DataField = 'TIPOCONTRATO'
          DataSource = DS_Fornecedor
          DropDownRows = 12
          DropDownWidth = 450
          KeyField = 'CODIGO'
          ListField = 'NOME'
          ListSource = dsTipoContrato
          NullValueKey = 46
          TabOrder = 0
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 147
          Top = 39
          Width = 319
          Height = 21
          DataField = 'SEGUIMENTO'
          DataSource = DS_Fornecedor
          DropDownRows = 12
          DropDownWidth = 450
          KeyField = 'CODIGO'
          ListField = 'NOME'
          ListSource = dsSeguimento
          NullValueKey = 46
          TabOrder = 1
        end
        object AdvDBComboBox1: TDBComboBox
          Left = 623
          Top = 15
          Width = 85
          Height = 22
          Style = csOwnerDrawFixed
          DataField = 'CERTIFICADO_ISO'
          DataSource = DS_Fornecedor
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 4
        end
        object AdvDBComboBox2: TDBComboBox
          Left = 623
          Top = 39
          Width = 85
          Height = 22
          Style = csOwnerDrawFixed
          DataField = 'VENDA_BNDES'
          DataSource = DS_Fornecedor
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 5
        end
        object AdvDBComboBox3: TDBComboBox
          Left = 623
          Top = 63
          Width = 85
          Height = 22
          Style = csOwnerDrawFixed
          DataField = 'LICITACOES'
          DataSource = DS_Fornecedor
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 6
        end
        object IDBEditDialog1: TIDBEditDialog
          Left = 147
          Top = 64
          Width = 52
          Height = 21
          HelpKeyWord = ''
          Color = clWindow
          Enabled = True
          TabOrder = 2
          Text = ''
          Visible = True
          LabelCaption = 'Grupo'
          LabelPosition = lpLeftCenter
          LabelTransparent = True
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
          DataField = 'IDGRUPO'
          DataSource = DS_Fornecedor
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = Edit3
          SQLdbCampoRetorno = 'NOME'
          SQLdbRetornoVazio = '***'
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT * FROM CAD_ENTIDADE_GRUPO'
            'WHERE'
            'CODIGO=:CODIGO')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM CAD_ENTIDADE_GRUPO'
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
        object Edit3: TEdit
          Left = 202
          Top = 64
          Width = 264
          Height = 21
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
      end
      object gbLiberacoes: TGroupBox
        Left = 0
        Top = 145
        Width = 863
        Height = 112
        Align = alTop
        Caption = 'Libera'#231#245'es Gerenciais [Liberar Pagamento]'
        TabOrder = 2
        object rgBloqueio: TPanel
          Left = 129
          Top = 15
          Width = 571
          Height = 95
          Align = alLeft
          Enabled = False
          TabOrder = 1
          object DBCheckBox1: TDBCheckBox
            Left = 4
            Top = 1
            Width = 127
            Height = 17
            Caption = 'Dinheiro'
            DataField = 'PAGTO_DINHEIRO'
            DataSource = DS_Fornecedor
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox2: TDBCheckBox
            Left = 4
            Top = 17
            Width = 127
            Height = 17
            Caption = 'Cart'#227'o'
            DataField = 'PAGTO_CARTAO'
            DataSource = DS_Fornecedor
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox3: TDBCheckBox
            Left = 4
            Top = 32
            Width = 127
            Height = 17
            Caption = 'Cheque'
            DataField = 'PAGTO_CHEQUE'
            DataSource = DS_Fornecedor
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox4: TDBCheckBox
            Left = 4
            Top = 47
            Width = 127
            Height = 17
            Caption = 'Titulo'
            DataField = 'PAGTO_TITULO'
            DataSource = DS_Fornecedor
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object chkDepositoConta: TDBCheckBox
            Left = 4
            Top = 62
            Width = 114
            Height = 17
            Caption = 'Dep'#243'sito em Conta'
            DataField = 'PAGTO_DEPOSITOCONTA'
            DataSource = DS_Fornecedor
            TabOrder = 4
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnClick = chkDepositoContaClick
          end
          object GroupBox4: TGroupBox
            Left = 124
            Top = 52
            Width = 417
            Height = 33
            TabOrder = 5
            object Label19: TLabel
              Left = 6
              Top = 12
              Width = 31
              Height = 13
              Alignment = taRightJustify
              Caption = 'Banco'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label20: TLabel
              Left = 112
              Top = 12
              Width = 39
              Height = 13
              Alignment = taRightJustify
              Caption = 'Ag'#234'ncia'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label21: TLabel
              Left = 248
              Top = 12
              Width = 28
              Height = 13
              Alignment = taRightJustify
              Caption = 'Conta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object editBanco: TDBEdit
              Left = 40
              Top = 9
              Width = 57
              Height = 21
              DataField = 'PAGTO_BANCO'
              DataSource = DS_Fornecedor
              TabOrder = 0
            end
            object editAgencia: TDBEdit
              Left = 154
              Top = 9
              Width = 84
              Height = 21
              DataField = 'PAGTO_AGENCIA'
              DataSource = DS_Fornecedor
              TabOrder = 1
            end
            object editConta: TDBEdit
              Left = 282
              Top = 9
              Width = 127
              Height = 21
              DataField = 'PAGTO_CONTA'
              DataSource = DS_Fornecedor
              TabOrder = 2
            end
          end
        end
        object Panel1: TPanel
          Left = 2
          Top = 15
          Width = 127
          Height = 95
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object btnLiberarPagamento: TButton
            Left = 8
            Top = 3
            Width = 97
            Height = 25
            Hint = 'Liberar Cr'#233'dito'
            Caption = 'Libera'#231#227'o'
            Enabled = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = btnLiberarPagamentoClick
          end
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 257
        Width = 863
        Height = 88
        Align = alTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        object chkMensagens: TDBCheckBox
          Left = 14
          Top = 5
          Width = 97
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Mensagem Ativa'
          DataField = 'MENSAGEMATIVA'
          DataSource = DS_Fornecedor
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = chkMensagensClick
        end
        object pnMensagens: TPanel
          Left = 52
          Top = 24
          Width = 623
          Height = 57
          BevelKind = bkSoft
          BevelOuter = bvNone
          Enabled = False
          TabOrder = 1
          object Label15: TLabel
            Left = 2
            Top = 9
            Width = 35
            Height = 13
            Caption = 'Linha 1'
          end
          object Label25: TLabel
            Left = 2
            Top = 31
            Width = 35
            Height = 13
            Caption = 'Linha 2'
          end
          object DBEdit6: TDBEdit
            Left = 43
            Top = 5
            Width = 568
            Height = 21
            DataField = 'MENSAGEM1'
            DataSource = DS_Fornecedor
            TabOrder = 0
          end
          object DBEdit7: TDBEdit
            Left = 43
            Top = 27
            Width = 568
            Height = 21
            DataField = 'MENSAGEM2'
            DataSource = DS_Fornecedor
            TabOrder = 1
          end
        end
      end
    end
  end
  object DS_Fornecedor: TDataSource
    DataSet = db_Fornecedor
    Left = 662
    Top = 359
  end
  object db_Fornecedor: TFDQuery
    OnDeleteError = db_FornecedorDeleteError
    OnEditError = db_FornecedorEditError
    OnNewRecord = db_FornecedorNewRecord
    OnPostError = db_FornecedorPostError
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM CAD_CLIENTES'
      'WHERE'
      'TIPO IN ('#39'FORNECEDOR'#39','#39'TERCEIRIZADO'#39','#39'FABRICANTE'#39')'
      'AND'
      'CODIGO=:CODIGO')
    Left = 581
    Top = 360
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dbTipoContrato: TFDQuery
    OnDeleteError = db_FornecedorDeleteError
    OnEditError = db_FornecedorEditError
    OnNewRecord = db_FornecedorNewRecord
    OnPostError = db_FornecedorPostError
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_TIPO_CONTRATO'
      'ORDER BY NOME')
    Left = 525
    Top = 176
  end
  object dsTipoContrato: TDataSource
    DataSet = dbTipoContrato
    Left = 606
    Top = 175
  end
  object dbSeguimento: TFDQuery
    OnDeleteError = db_FornecedorDeleteError
    OnEditError = db_FornecedorEditError
    OnNewRecord = db_FornecedorNewRecord
    OnPostError = db_FornecedorPostError
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_ATIVIDADES'
      'ORDER BY NOME')
    Left = 525
    Top = 232
  end
  object dsSeguimento: TDataSource
    DataSet = dbSeguimento
    Left = 606
    Top = 231
  end
  object dbRelacionamento: TFDQuery
    OnDeleteError = db_FornecedorDeleteError
    OnEditError = db_FornecedorEditError
    OnNewRecord = db_FornecedorNewRecord
    OnPostError = db_FornecedorPostError
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_RELACIONAMENTO'
      'ORDER BY NOME')
    Left = 229
    Top = 368
  end
  object dsRelacionamento: TDataSource
    DataSet = dbRelacionamento
    Left = 310
    Top = 367
  end
  object ACBrCEP1: TACBrCEP
    ProxyPort = '8080'
    PesquisarIBGE = True
    Left = 84
    Top = 361
  end
end
