object FrmTransportadoras: TFrmTransportadoras
  Left = 0
  Top = 1
  Width = 876
  Height = 570
  VertScrollBar.Range = 400
  VertScrollBar.Size = 400
  VertScrollBar.Tracking = True
  BorderStyle = bsDialog
  Caption = 'Cadastro de Transportadoras'
  Color = clBtnFace
  Constraints.MinHeight = 570
  Constraints.MinWidth = 800
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesigned
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 860
    Height = 33
    Align = alTop
    Constraints.MinHeight = 33
    Color = 7500402
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    ExplicitWidth = 860
    ExplicitHeight = 33
    inherited Image3: TImage
      Width = 860
      Height = 33
      ExplicitWidth = 845
    end
    inherited pnTitulo: TPanel
      Width = 860
      Height = 33
      Constraints.MinHeight = 33
      ExplicitWidth = 860
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 717
        Height = 25
        Caption = 'Transportadores'
        ExplicitWidth = 165
        ExplicitHeight = 25
      end
      inherited Image1: TImage
        Height = 31
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 801
        Height = 25
        ExplicitLeft = 789
        ExplicitHeight = 31
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 468
    Width = 860
    Height = 63
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 468
    ExplicitWidth = 860
    ExplicitHeight = 63
    inherited PanelBotoesBottom: TPanel
      Width = 850
      Height = 57
      ExplicitWidth = 850
      ExplicitHeight = 57
      inherited SpbAdicionar: TSpeedButton
        Left = -44
        Height = 53
        ExplicitLeft = -44
        ExplicitHeight = 53
      end
      inherited SpbEditar: TSpeedButton
        Left = 156
        Height = 53
        ExplicitLeft = 156
        ExplicitHeight = 53
      end
      inherited SpbCancelar: TSpeedButton
        Left = 256
        Height = 53
        ExplicitLeft = 256
        ExplicitHeight = 53
      end
      inherited SpbSalvar: TSpeedButton
        Left = 56
        Height = 53
        ExplicitLeft = 56
        ExplicitHeight = 53
      end
      inherited SpbExcluir: TSpeedButton
        Left = 356
        Height = 53
        ExplicitLeft = 356
        ExplicitHeight = 53
      end
      inherited SpbImprimir: TSpeedButton
        Left = 556
        Height = 53
        ExplicitLeft = 556
        ExplicitHeight = 53
      end
      inherited SpbSair: TSpeedButton
        Left = 746
        Height = 53
        ExplicitLeft = 746
        ExplicitHeight = 53
      end
      inherited SpbExtra: TSpeedButton
        Left = 656
        Height = 53
        ExplicitLeft = 656
        ExplicitHeight = 53
      end
      inherited SpbProcurar: TSpeedButton
        Left = 456
        Height = 53
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 456
        ExplicitHeight = 53
      end
    end
  end
  object TransportadoraProcurar: TIDBEditDialog
    Left = 463
    Top = 6
    Width = 65
    Height = 21
    HelpKeyWord = ''
    Color = clWindow
    Enabled = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = ''
    Visible = False
    EditType = etAlphaNumeric
    EmptyText = 'Tecle F8'
    FocusColor = clBtnFace
    LabelCaption = 'Cliente:'
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
    ButtonHint = 'C'#243'digo do Cliente'
    Etched = False
    ButtonCaption = '...'
    ButtonKeyClickBtn = 119
    SQLdbFazBusca = True
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = '***'
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      'SELECT * E FROM CAD_CLIENTES'
      'WHERE'
      'CODIGO=:CODIGO'
      '')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM VIEW_CLIENTES'
      'WHERE'
      'TIPO='#39'TRANSPORTADORA'#39
      'AND'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'CODIGO'
        WhereSyntax = 'CODIGO'
        DisplayLabel = 'C'#211'DIGO'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'CPF_CNPJ'
        WhereSyntax = 'CPF_CNPJ'
        DisplayLabel = 'CPF/CNPJ:'
        DisplayWidth = 18
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
        DisplayLabel = 'RAZ'#195'O SOCIAL:'
        DisplayWidth = 40
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
        DisplayWidth = 20
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'VENDEDOR_NOME'
        WhereSyntax = 'VENDEDOR_NOME'
        DisplayLabel = 'VENDEDOR:'
        DisplayWidth = 25
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'CIDADENOME'
        WhereSyntax = 'CIDADENOME'
        DisplayLabel = 'CIDADE NOME:'
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
    DialogWidth = 1000
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
  object pgPrincipal: TPageControl
    Left = 0
    Top = 33
    Width = 860
    Height = 435
    ActivePage = TabPrincipal
    Align = alClient
    TabOrder = 3
    object TabPrincipal: TTabSheet
      Caption = 'Dados Cadastrais'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 852
        Height = 407
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label5: TLabel
          Left = 10
          Top = 48
          Width = 70
          Height = 15
          Caption = 'Raz'#227'o Social'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 10
          Top = 92
          Width = 82
          Height = 15
          Caption = 'Nome Fantasia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label68: TLabel
          Left = 10
          Top = 279
          Width = 88
          Height = 15
          Caption = 'E-mail (contato)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label69: TLabel
          Left = 390
          Top = 279
          Width = 90
          Height = 15
          Caption = 'Site (home page)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 10
          Top = 238
          Width = 110
          Height = 15
          Caption = 'Fone (DDD+N'#250'mero)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 130
          Top = 238
          Width = 111
          Height = 15
          Caption = 'VOIP (DDD+N'#250'mero)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label39: TLabel
          Left = 250
          Top = 238
          Width = 103
          Height = 15
          Caption = 'Fax (DDD+N'#250'mero)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label43: TLabel
          Left = 369
          Top = 238
          Width = 104
          Height = 15
          Caption = 'Cel. (DDD+N'#250'mero)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object lblCNPJ: TLabel
          Left = 269
          Top = 6
          Width = 25
          Height = 15
          Caption = 'CNPJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object lblIE: TLabel
          Left = 428
          Top = 6
          Width = 140
          Height = 15
          Caption = 'Incri'#231#227'o Estadual (ou RG)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 10
          Top = 6
          Width = 41
          Height = 15
          Caption = 'C'#243'digo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label40: TLabel
          Left = 485
          Top = 238
          Width = 43
          Height = 15
          Caption = 'Contato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object EdRazaoSocial: TDBEdit
          Left = 12
          Top = 64
          Width = 736
          Height = 23
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object EdFantasia: TDBEdit
          Left = 12
          Top = 109
          Width = 736
          Height = 23
          CharCase = ecUpperCase
          DataField = 'NOME_FANTASIA'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object GroupBox4: TGroupBox
          Left = 11
          Top = 136
          Width = 738
          Height = 101
          Hint = 'Editar - use o bot'#227'o direito do mouse'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          object GRPEndereco2: TGroupBox
            Left = 98
            Top = 12
            Width = 333
            Height = 43
            TabOrder = 1
            DesignSize = (
              333
              43)
            object Label8: TLabel
              Left = 2
              Top = 2
              Width = 50
              Height = 15
              Caption = 'Endere'#231'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
            end
            object EditEndereco2: TDBEdit
              Left = 2
              Top = 17
              Width = 325
              Height = 23
              Anchors = [akLeft, akTop, akRight]
              CharCase = ecUpperCase
              DataField = 'ENDERECO'
              DataSource = DS_Transportadora
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
          end
          object GRPBairroCidadeUF2: TGroupBox
            Left = 3
            Top = 54
            Width = 726
            Height = 43
            TabOrder = 3
            object Label28: TLabel
              Left = 678
              Top = 2
              Width = 14
              Height = 15
              Caption = 'UF'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
            end
            object Label27: TLabel
              Left = 265
              Top = 2
              Width = 38
              Height = 15
              Caption = 'Cidade'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
            end
            object Label26: TLabel
              Left = 3
              Top = 2
              Width = 35
              Height = 15
              Caption = 'Bairro'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
            end
            object Label35: TLabel
              Left = 176
              Top = 2
              Width = 79
              Height = 15
              Caption = 'C'#243'digo Cidade'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
            end
            object EditBairro2: TDBEdit
              Left = 3
              Top = 17
              Width = 166
              Height = 23
              CharCase = ecUpperCase
              DataField = 'BAIRRO'
              DataSource = DS_Transportadora
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object EditCidade2: TDBEdit
              Left = 265
              Top = 17
              Width = 406
              Height = 23
              Hint = 'Tecle F8 para pesquisar'
              CharCase = ecUpperCase
              DataField = 'NOMECIDADE'
              DataSource = DS_Transportadora
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object EditUF2: TDBEdit
              Left = 678
              Top = 17
              Width = 36
              Height = 23
              CharCase = ecUpperCase
              DataField = 'UF'
              DataSource = DS_Transportadora
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              MaxLength = 2
              ParentFont = False
              TabOrder = 3
            end
            object EditCodCidade2: TDBEdit
              Left = 176
              Top = 17
              Width = 82
              Height = 23
              Hint = 'Codigo da Cidade de acordo com o IBGE'
              CharCase = ecUpperCase
              DataField = 'IDCIDADE'
              DataSource = DS_Transportadora
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnKeyDown = EditCodCidade2KeyDown
            end
          end
          object GroupBox8: TGroupBox
            Left = 435
            Top = 12
            Width = 294
            Height = 43
            TabOrder = 2
            object Label29: TLabel
              Left = 3
              Top = 2
              Width = 46
              Height = 15
              Caption = 'N'#250'mero:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
            end
            object Label31: TLabel
              Left = 53
              Top = 2
              Width = 78
              Height = 15
              Caption = 'Complemento:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
            end
            object EditNumero: TDBEdit
              Left = 3
              Top = 17
              Width = 43
              Height = 23
              Hint = 'N'#250'mero do Endere'#231'o'
              CharCase = ecUpperCase
              DataField = 'NUMERO'
              DataSource = DS_Transportadora
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
            object DBEdit8: TDBEdit
              Left = 53
              Top = 17
              Width = 236
              Height = 23
              CharCase = ecUpperCase
              DataField = 'COMPLEMENTO'
              DataSource = DS_Transportadora
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              TabOrder = 1
            end
          end
          object EditCEP: TIDBEditDialog
            Left = 6
            Top = 25
            Width = 89
            Height = 23
            HelpKeyWord = ''
            Color = clWindow
            Enabled = True
            TabOrder = 0
            Text = ''
            Visible = True
            LabelCaption = 'CEP'
            LabelAlwaysEnabled = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -12
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Separator = ';'
            Version = '5.0.0.0'
            ButtonStyle = bsButton
            ButtonWidth = 16
            ButtonHint = 'Procurar...'
            Etched = False
            ButtonCaption = '...'
            DataField = 'CEP'
            DataSource = DS_Transportadora
            SQLdbRetornoVazio = ' *** '
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_IBGEMUNICIPIO'
              'WHERE'
              '%WHERE%')
            CountQuery.Strings = (
              'SELECT COUNT(*) FROM CAD_IBGEMUNICIPIO'
              'WHERE'
              '%WHERE%')
            SearchDialogFieldList = <
              item
                FieldName = 'CEP'
                WhereSyntax = 'CEP'
                DisplayLabel = 'CEP:'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'CIDADE'
                WhereSyntax = 'CIDADE'
                DisplayLabel = 'CIDADE:'
                DisplayWidth = 30
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'UF'
                WhereSyntax = 'UF'
                DisplayLabel = 'UF:'
                DisplayWidth = 5
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
                DisplayLabel = 'TIPO:'
                DisplayWidth = 15
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'ENDERECO'
                WhereSyntax = 'ENDERECO'
                DisplayLabel = 'ENDERE'#199'O:'
                DisplayWidth = 25
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'BAIRRO'
                WhereSyntax = 'BAIRRO'
                DisplayLabel = 'BAIRRO:'
                DisplayWidth = 15
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
        object DBEdit47: TDBEdit
          Left = 50
          Top = 253
          Width = 73
          Height = 23
          DataField = 'FONE'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object DBEdit50: TDBEdit
          Left = 10
          Top = 294
          Width = 354
          Height = 23
          CharCase = ecLowerCase
          DataField = 'EMAIL'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
        end
        object DBEdit51: TDBEdit
          Left = 390
          Top = 294
          Width = 359
          Height = 23
          CharCase = ecLowerCase
          DataField = 'SITE'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 18
        end
        object DBEdit24: TDBEdit
          Left = 10
          Top = 253
          Width = 38
          Height = 23
          DataField = 'DDD_FONE'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit25: TDBEdit
          Left = 169
          Top = 253
          Width = 73
          Height = 23
          DataField = 'VOIP'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object DBEdit45: TDBEdit
          Left = 130
          Top = 253
          Width = 38
          Height = 23
          DataField = 'DDD_VOIP'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object DBEdit48: TDBEdit
          Left = 289
          Top = 253
          Width = 73
          Height = 23
          DataField = 'FAX'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
        end
        object DBEdit54: TDBEdit
          Left = 250
          Top = 253
          Width = 38
          Height = 23
          DataField = 'DDD_FAX'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object DBEdit57: TDBEdit
          Left = 408
          Top = 253
          Width = 73
          Height = 23
          DataField = 'CELULAR'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
        end
        object DBEdit60: TDBEdit
          Left = 369
          Top = 253
          Width = 38
          Height = 23
          DataField = 'DDD_CELULAR'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
        end
        object EdRGInscrEst: TDBEdit
          Left = 428
          Top = 24
          Width = 147
          Height = 23
          CharCase = ecUpperCase
          DataField = 'RG_IE'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit9: TDBEdit
          Left = 10
          Top = 24
          Width = 83
          Height = 23
          CharCase = ecUpperCase
          Color = clBtnFace
          DataField = 'CODIGO'
          DataSource = DS_Transportadora
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit59: TDBEdit
          Left = 485
          Top = 253
          Width = 263
          Height = 23
          DataField = 'CONTATO'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
        end
        object rgpAtivo: TDBRadioGroup
          Left = 611
          Top = 6
          Width = 137
          Height = 41
          Caption = 'Cadastro Ativo'
          Columns = 2
          DataField = 'ATIVO'
          DataSource = DS_Transportadora
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentFont = False
          TabOrder = 4
          Values.Strings = (
            'S'
            'N')
        end
        object rgTipo: TDBRadioGroup
          Left = 99
          Top = 6
          Width = 164
          Height = 41
          Caption = 'Tipo de Cadastro'
          Columns = 2
          DataField = 'CLASSIFICACAO'
          DataSource = DS_Transportadora
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
          Left = 269
          Top = 24
          DataBinding.DataField = 'CPF_CNPJ'
          DataBinding.DataSource = DS_Transportadora
          TabOrder = 2
          Width = 132
        end
      end
    end
    object TabAnexos: TTabSheet
      Caption = 'Anexos'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Splitter2: TSplitter
        Left = 0
        Top = 241
        Width = 852
        Height = 5
        Cursor = crVSplit
        Align = alBottom
        ExplicitTop = 0
        ExplicitWidth = 776
      end
      object Panel6: TPanel
        Left = 0
        Top = 366
        Width = 852
        Height = 41
        Align = alBottom
        TabOrder = 1
        DesignSize = (
          852
          41)
        object BitBtn4: TBitBtn
          Left = 2
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Adicionar'
          TabOrder = 0
          OnClick = BitBtn4Click
        end
        object BitBtn3: TBitBtn
          Left = 152
          Top = 8
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Remover...'
          TabOrder = 1
        end
        object BitBtn5: TBitBtn
          Left = 226
          Top = 8
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Abrir'
          TabOrder = 2
        end
      end
      object gbAnexosObservacao: TGroupBox
        Left = 0
        Top = 246
        Width = 852
        Height = 120
        Align = alBottom
        Caption = 'Observa'#231#227'o:'
        Constraints.MaxHeight = 120
        TabOrder = 0
        object DBRichEdit2: TDBRichEdit
          Left = 2
          Top = 15
          Width = 848
          Height = 103
          Align = alClient
          DataField = 'OBSERVACAO'
          DataSource = dsClienteAnexos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          PlainText = True
          ScrollBars = ssVertical
          TabOrder = 0
          Zoom = 100
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 852
        Height = 241
        Align = alClient
        TabOrder = 2
        object cxGridAnexo: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsClienteAnexos
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          object cxGridAnexoArquivo: TcxGridDBColumn
            Caption = 'Nome do arquivo'
            DataBinding.FieldName = 'NOMEARQUIVO'
            Options.GroupFooters = False
            Width = 128
          end
          object cxGridAnexoUsuario: TcxGridDBColumn
            Caption = 'Anexado Por'
            DataBinding.FieldName = 'IDUSUARIO'
            PropertiesClassName = 'TcxDateEditProperties'
            Options.AutoWidthSizable = False
            Options.GroupFooters = False
            Width = 150
          end
          object cxGridAnexoDataAnexo: TcxGridDBColumn
            Caption = 'Data Anexo'
            DataBinding.FieldName = 'DATAANEXO'
            DateTimeGrouping = dtgByDate
            Options.AutoWidthSizable = False
            Options.GroupFooters = False
            Width = 140
          end
          object cxGridAnexoDataAlteracao: TcxGridDBColumn
            Caption = 'Ultima Modifica'#231#227'o'
            DataBinding.FieldName = 'DATAALTERACAO'
            DateTimeGrouping = dtgByDate
            Options.AutoWidthSizable = False
            Options.GroupFooters = False
            Width = 140
          end
          object cxGridAnexoTipoArquivo: TcxGridDBColumn
            Caption = 'Extens'#227'o'
            DataBinding.FieldName = 'TIPOARQUIVO'
            Options.AutoWidthSizable = False
            Options.GroupFooters = False
            Width = 68
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGridAnexo
        end
      end
    end
    object TabObservacoes: TTabSheet
      Caption = 'Observa'#231#245'es'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox20: TGroupBox
        Left = 0
        Top = 0
        Width = 852
        Height = 407
        Align = alClient
        Caption = 'Observa'#231#245'es'
        TabOrder = 0
        object DBRichEdit1: TDBRichEdit
          Left = 2
          Top = 15
          Width = 848
          Height = 390
          Align = alClient
          DataField = 'OBSERVACAO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          TabOrder = 0
          Zoom = 100
        end
      end
    end
  end
  object DS_Transportadora: TDataSource
    DataSet = db_Transportadora
    Left = 293
    Top = 144
  end
  object db_Transportadora: TFDQuery
    AfterPost = db_TransportadoraAfterPost
    OnNewRecord = db_TransportadoraNewRecord
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM CAD_CLIENTES'
      'WHERE'
      'CODIGO=:CODIGO'
      'AND'
      'TIPO='#39'TRANSPORTADORA'#39)
    Left = 237
    Top = 144
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_TransportadoraCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_TransportadoraFOTO: TBlobField
      FieldName = 'FOTO'
    end
    object db_TransportadoraTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      Size = 30
    end
    object db_TransportadoraCLASSIFICACAO: TStringField
      FieldName = 'CLASSIFICACAO'
      Size = 30
    end
    object db_TransportadoraDATA: TSQLTimeStampField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_TransportadoraDATA_NASCIMENTO: TSQLTimeStampField
      FieldName = 'DATA_NASCIMENTO'
    end
    object db_TransportadoraCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 30
    end
    object db_TransportadoraNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 200
    end
    object db_TransportadoraNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 200
    end
    object db_TransportadoraCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 200
    end
    object db_TransportadoraRG_IE: TStringField
      FieldName = 'RG_IE'
      Size = 30
    end
    object db_TransportadoraORG_EMISSOR: TStringField
      FieldName = 'ORG_EMISSOR'
      Size = 30
    end
    object db_TransportadoraSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object db_TransportadoraFILIACAO_NOMEPAI: TStringField
      FieldName = 'FILIACAO_NOMEPAI'
      Size = 200
    end
    object db_TransportadoraFILIACAO_NOMEMAE: TStringField
      FieldName = 'FILIACAO_NOMEMAE'
      Size = 200
    end
    object db_TransportadoraESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      Size = 200
    end
    object db_TransportadoraCONJUGE_CPF: TStringField
      FieldName = 'CONJUGE_CPF'
      Size = 30
    end
    object db_TransportadoraCONJUGE_NOME: TStringField
      FieldName = 'CONJUGE_NOME'
      Size = 200
    end
    object db_TransportadoraCXP: TStringField
      FieldName = 'CXP'
      Size = 30
    end
    object db_TransportadoraCEP: TStringField
      FieldName = 'CEP'
      Size = 30
    end
    object db_TransportadoraENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object db_TransportadoraNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 30
    end
    object db_TransportadoraCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object db_TransportadoraBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 200
    end
    object db_TransportadoraIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
    end
    object db_TransportadoraNOMECIDADE: TStringField
      FieldName = 'NOMECIDADE'
      Size = 200
    end
    object db_TransportadoraCODIGOUF: TIntegerField
      FieldName = 'CODIGOUF'
    end
    object db_TransportadoraUF: TStringField
      FieldName = 'UF'
      Size = 30
    end
    object db_TransportadoraDDD_FONE: TIntegerField
      FieldName = 'DDD_FONE'
    end
    object db_TransportadoraFONE: TStringField
      FieldName = 'FONE'
      EditMask = '9999-9999'
      Size = 30
    end
    object db_TransportadoraDDD_FAX: TIntegerField
      FieldName = 'DDD_FAX'
    end
    object db_TransportadoraFAX: TStringField
      FieldName = 'FAX'
      EditMask = '9999-9999'
      Size = 30
    end
    object db_TransportadoraDDD_CELULAR: TIntegerField
      FieldName = 'DDD_CELULAR'
    end
    object db_TransportadoraCELULAR: TStringField
      FieldName = 'CELULAR'
      EditMask = '9999-9999'
      Size = 30
    end
    object db_TransportadoraDDD_VOIP: TIntegerField
      FieldName = 'DDD_VOIP'
    end
    object db_TransportadoraVOIP: TStringField
      FieldName = 'VOIP'
      Size = 30
    end
    object db_TransportadoraEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 200
    end
    object db_TransportadoraSITE: TStringField
      FieldName = 'SITE'
      Size = 200
    end
    object db_TransportadoraREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 200
    end
    object db_TransportadoraVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object db_TransportadoraREGIAO: TIntegerField
      FieldName = 'REGIAO'
    end
    object db_TransportadoraTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
    end
    object db_TransportadoraESTRANGEIRO: TStringField
      FieldName = 'ESTRANGEIRO'
      Size = 10
    end
    object db_TransportadoraNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 200
    end
    object db_TransportadoraCREDITO_LIMITE: TFloatField
      FieldName = 'CREDITO_LIMITE'
    end
    object db_TransportadoraCREDITO_UTILIZADO: TFloatField
      FieldName = 'CREDITO_UTILIZADO'
    end
    object db_TransportadoraCREDITO_DISPONIVEL: TFloatField
      FieldName = 'CREDITO_DISPONIVEL'
    end
    object db_TransportadoraBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      Size = 10
    end
    object db_TransportadoraPLANO_CONTAS: TStringField
      FieldName = 'PLANO_CONTAS'
      Size = 30
    end
    object db_TransportadoraCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object db_TransportadoraCENTROCUSTO: TIntegerField
      FieldName = 'CENTROCUSTO'
    end
    object db_TransportadoraENDCOB_ENDERECO: TStringField
      FieldName = 'ENDCOB_ENDERECO'
      Size = 200
    end
    object db_TransportadoraENDCOB_BAIRRO: TStringField
      FieldName = 'ENDCOB_BAIRRO'
      Size = 200
    end
    object db_TransportadoraENDCOB_DDD: TIntegerField
      FieldName = 'ENDCOB_DDD'
    end
    object db_TransportadoraENDCOB_FONE: TStringField
      FieldName = 'ENDCOB_FONE'
      Size = 30
    end
    object db_TransportadoraENDCOB_CEP: TStringField
      FieldName = 'ENDCOB_CEP'
      Size = 30
    end
    object db_TransportadoraENDCOB_CXP: TStringField
      FieldName = 'ENDCOB_CXP'
      Size = 30
    end
    object db_TransportadoraENDCOB_IDCIDADE: TIntegerField
      FieldName = 'ENDCOB_IDCIDADE'
    end
    object db_TransportadoraENDCOB_NOMECIDADE: TStringField
      FieldName = 'ENDCOB_NOMECIDADE'
      Size = 200
    end
    object db_TransportadoraENDCOB_UF: TStringField
      FieldName = 'ENDCOB_UF'
      Size = 30
    end
    object db_TransportadoraPROTESTO: TStringField
      FieldName = 'PROTESTO'
      Size = 30
    end
    object db_TransportadoraPROTESTO_DATA: TSQLTimeStampField
      FieldName = 'PROTESTO_DATA'
    end
    object db_TransportadoraETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      Size = 10
    end
    object db_TransportadoraNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 200
    end
    object db_TransportadoraATIVO: TStringField
      FieldName = 'ATIVO'
      OnChange = db_TransportadoraATIVOChange
      Size = 10
    end
    object db_TransportadoraCONVENIO: TIntegerField
      FieldName = 'CONVENIO'
    end
    object db_TransportadoraATIVIDADE: TIntegerField
      FieldName = 'ATIVIDADE'
    end
    object db_TransportadoraOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_TransportadoraOBS_SERASA: TStringField
      FieldName = 'OBS_SERASA'
      Size = 5000
    end
    object db_TransportadoraOBS_SINTEGRA: TStringField
      FieldName = 'OBS_SINTEGRA'
      Size = 5000
    end
    object db_TransportadoraCONJUGE_DNASCIMENTO: TStringField
      FieldName = 'CONJUGE_DNASCIMENTO'
      Size = 200
    end
    object db_TransportadoraCONJUGE_EMPRESA: TStringField
      FieldName = 'CONJUGE_EMPRESA'
      Size = 200
    end
    object db_TransportadoraCONJUGE_FONE: TStringField
      FieldName = 'CONJUGE_FONE'
      Size = 30
    end
    object db_TransportadoraCONJUGE_ENDERECO: TStringField
      FieldName = 'CONJUGE_ENDERECO'
      Size = 200
    end
    object db_TransportadoraCONJUGE_CIDADE: TStringField
      FieldName = 'CONJUGE_CIDADE'
      Size = 200
    end
    object db_TransportadoraCONJUGE_UF: TStringField
      FieldName = 'CONJUGE_UF'
      Size = 200
    end
    object db_TransportadoraCONJUGE_CARGO: TStringField
      FieldName = 'CONJUGE_CARGO'
      Size = 200
    end
    object db_TransportadoraCONJUGE_TEMPO: TStringField
      FieldName = 'CONJUGE_TEMPO'
      Size = 200
    end
    object db_TransportadoraCONJUGE_SALARIO: TFloatField
      FieldName = 'CONJUGE_SALARIO'
    end
    object db_TransportadoraEMPREGO_EMPRESA: TStringField
      FieldName = 'EMPREGO_EMPRESA'
      Size = 200
    end
    object db_TransportadoraEMPREGO_FONE: TStringField
      FieldName = 'EMPREGO_FONE'
      Size = 30
    end
    object db_TransportadoraEMPREGO_ENDERECO: TStringField
      FieldName = 'EMPREGO_ENDERECO'
      Size = 200
    end
    object db_TransportadoraEMPREGO_CIDADE: TStringField
      FieldName = 'EMPREGO_CIDADE'
      Size = 200
    end
    object db_TransportadoraEMPREGO_UF: TStringField
      FieldName = 'EMPREGO_UF'
      Size = 200
    end
    object db_TransportadoraEMPREGO_CARGO: TStringField
      FieldName = 'EMPREGO_CARGO'
      Size = 200
    end
    object db_TransportadoraEMPREGO_TEMPO: TStringField
      FieldName = 'EMPREGO_TEMPO'
      Size = 200
    end
    object db_TransportadoraEMPREGO_SALARIO: TFloatField
      FieldName = 'EMPREGO_SALARIO'
    end
    object db_TransportadoraCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object db_TransportadoraCOMISSIONAR: TStringField
      FieldName = 'COMISSIONAR'
      Size = 10
    end
    object db_TransportadoraSALARIO: TFloatField
      FieldName = 'SALARIO'
    end
    object db_TransportadoraTRANSPORTADORA_PLACA: TStringField
      FieldName = 'TRANSPORTADORA_PLACA'
      Size = 30
    end
    object db_TransportadoraTRANSPORTADORA_CIDADE: TStringField
      FieldName = 'TRANSPORTADORA_CIDADE'
      Size = 200
    end
    object db_TransportadoraTRANSPORTADORA_UF: TStringField
      FieldName = 'TRANSPORTADORA_UF'
      Size = 200
    end
    object db_TransportadoraATIVODATA: TSQLTimeStampField
      FieldName = 'ATIVODATA'
      Origin = 'ATIVODATA'
    end
  end
  object dbClienteAlertas: TFDQuery
    MasterSource = DS_Transportadora
    MasterFields = 'CODIGO'
    DetailFields = 'IDCLIENTE'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'select * from CAD_CLIENTES_ALERTAS'
      'WHERE'
      'IDCLIENTE=:CODIGO')
    Left = 288
    Top = 224
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object dsClienteAlertas: TDataSource
    DataSet = dbClienteAlertas
    Left = 288
    Top = 264
  end
  object dbClienteAnexos: TFDQuery
    MasterSource = DS_Transportadora
    MasterFields = 'CODIGO'
    DetailFields = 'IDCLIENTE'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'select * from CAD_CLIENTES_ANEXOS'
      'WHERE'
      'IDCLIENTE=:CODIGO')
    Left = 376
    Top = 224
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object dsClienteAnexos: TDataSource
    DataSet = dbClienteAnexos
    Left = 376
    Top = 264
  end
  object OpenDialogArquivos: TOpenDialog
    Left = 304
    Top = 163
  end
end
