object FrmPedidoVenda: TFrmPedidoVenda
  Left = 0
  Top = 1
  VertScrollBar.Tracking = True
  Caption = 'Pedido de Venda'
  ClientHeight = 587
  ClientWidth = 1284
  Color = clWhite
  Constraints.MinWidth = 1020
  Font.Charset = ANSI_CHARSET
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
  OnKeyDown = EditKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grpPedidos: TGroupBox
    Left = 0
    Top = 55
    Width = 1284
    Height = 472
    Align = alClient
    Caption = 'Dados Principais do Pedido'
    Enabled = False
    TabOrder = 0
    object grbTotais: TGroupBox
      Left = 2
      Top = 430
      Width = 1280
      Height = 40
      Align = alBottom
      Caption = 'TOTAIS'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label6: TLabel
        Left = 258
        Top = 12
        Width = 84
        Height = 15
        Caption = 'Desconto Total:'
      end
      object Label7: TLabel
        Left = 493
        Top = 12
        Width = 62
        Height = 15
        Caption = 'Qtde itens:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 896
        Top = 12
        Width = 75
        Height = 15
        Caption = 'Valor Liquido:'
      end
      object Label9: TLabel
        Left = 42
        Top = 12
        Width = 66
        Height = 15
        Caption = 'Valor Bruto:'
      end
      object DBEdit5: TDBEdit
        Left = 974
        Top = 12
        Width = 130
        Height = 23
        Color = clBtnFace
        DataField = 'VLR_TOTAL'
        DataSource = ds_Pedido
        TabOrder = 2
      end
      object DBEdit1: TDBEdit
        Left = 561
        Top = 12
        Width = 130
        Height = 23
        Color = clBtnFace
        DataField = 'QTDE_TOTAL'
        DataSource = ds_Pedido
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit6: TDBEdit
        Left = 345
        Top = 12
        Width = 130
        Height = 23
        Color = clBtnFace
        DataField = 'VLR_DESCONTO'
        DataSource = ds_Pedido
        TabOrder = 1
      end
      object DBEdit7: TDBEdit
        Left = 114
        Top = 12
        Width = 130
        Height = 23
        Color = clBtnFace
        DataField = 'VLR_PRODUTOS'
        DataSource = ds_Pedido
        TabOrder = 0
      end
    end
    object AdvGroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 5
      Top = 255
      Width = 1274
      Height = 172
      Align = alClient
      Caption = '[ ITENS DO PEDIDO DE VENDA ]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object dbGrid_Produtos: TDBGrid
        Left = 2
        Top = 31
        Width = 1270
        Height = 139
        HelpType = htKeyword
        TabStop = False
        Align = alClient
        Ctl3D = True
        DataSource = ds_PedidoItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -13
        TitleFont.Name = 'Calibri'
        TitleFont.Style = []
        OnColEnter = dbGrid_ProdutosColEnter
        OnColExit = dbGrid_ProdutosColExit
        OnEditButtonClick = dbGrid_ProdutosEditButtonClick
        OnEnter = dbGrid_ProdutosEnter
        OnExit = dbGrid_ProdutosExit
        OnKeyDown = dbGrid_ProdutosKeyDown
        OnKeyPress = dbGrid_ProdutosKeyPress
        Columns = <
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'REFERENCIA'
            Title.Caption = 'Refer'#234'ncia:'
            Width = 153
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'DESCRICAO'
            ReadOnly = True
            Title.Caption = 'Descri'#231#227'o:'
            Width = 400
            Visible = True
          end
          item
            Color = clBtnFace
            DropDownRows = 3
            Expanded = False
            FieldName = 'TIPO_PRODUTO'
            ReadOnly = True
            Title.Caption = 'Tipo:'
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'QTDE'
            Title.Caption = 'Qtde:'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_UNIT'
            Title.Caption = 'Valor Unit:'
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCONTO'
            Title.Caption = 'Desconto%:'
            Width = 98
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'VLR_TOTAL'
            ReadOnly = True
            Title.Caption = 'Valor Total:'
            Width = 102
            Visible = True
          end>
      end
      object ProgressBar1: TProgressBar
        Left = 2
        Top = 15
        Width = 1270
        Height = 16
        Align = alTop
        TabOrder = 1
      end
    end
    object AdvGroupBox4: TGroupBox
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 1274
      Height = 231
      Align = alTop
      Caption = '[ CLIENTE ]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = AdvGroupBox4Exit
      object Label1: TLabel
        Left = 484
        Top = 12
        Width = 59
        Height = 13
        Caption = 'Data Pedido'
      end
      object Label2: TLabel
        Left = 567
        Top = 12
        Width = 63
        Height = 13
        Caption = 'Data Entrega'
      end
      object Label3: TLabel
        Left = 659
        Top = 12
        Width = 90
        Height = 13
        Caption = 'Codigo de Controle'
      end
      object Label10: TLabel
        Left = 384
        Top = 12
        Width = 53
        Height = 13
        Caption = 'ID (C'#243'digo)'
      end
      object Label4: TLabel
        Left = 6
        Top = 185
        Width = 61
        Height = 13
        Caption = 'Observa'#231#227'o:'
      end
      object Label5: TLabel
        Left = 6
        Top = 52
        Width = 89
        Height = 13
        Caption = 'Dados da Entrega:'
      end
      object Label11: TLabel
        Left = 6
        Top = 64
        Width = 49
        Height = 13
        Caption = 'Endere'#231'o:'
      end
      object Label12: TLabel
        Left = 247
        Top = 64
        Width = 40
        Height = 13
        Caption = 'N'#250'mero:'
      end
      object Label13: TLabel
        Left = 303
        Top = 64
        Width = 30
        Height = 13
        Caption = 'Bairro:'
      end
      object Label14: TLabel
        Left = 432
        Top = 64
        Width = 45
        Height = 13
        Caption = 'Contatos:'
      end
      object Label15: TLabel
        Left = 615
        Top = 64
        Width = 31
        Height = 13
        Caption = 'E-mail:'
      end
      object EditCliente: TIDBEditDialog
        Left = 6
        Top = 28
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
        ShowHint = True
        TabOrder = 0
        Text = ''
        Visible = True
        OnKeyDown = ClienteKeyDown
        AutoFocus = True
        EditType = etAlphaNumeric
        EmptyText = 'Tecle F8'
        FocusColor = clBtnFace
        ReturnIsTab = True
        LabelCaption = 'Cliente:'
        LabelAlwaysEnabled = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Separator = ';'
        Signed = True
        Version = '5.0.0.0'
        ButtonStyle = bsButton
        ButtonWidth = 16
        ButtonHint = 'C'#243'digo do Cliente'
        Etched = False
        ButtonCaption = '...'
        DataField = 'CLIENTE'
        DataSource = ds_Pedido
        ButtonKeyActive = False
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditNomeCliente
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT CODIGO, NOME FROM CAD_CLIENTES'
          'WHERE'
          'CODIGO=:CODIGO'
          '')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM VIEW_CLIENTES'
          'WHERE'
          'COALESCE(ATIVO,'#39'S'#39')<>'#39'N'#39
          'AND'
          'TIPO='#39'CLIENTE'#39
          'AND'
          '%WHERE%')
        SearchDialogFieldList = <
          item
            FieldName = 'NOME'
            WhereSyntax = 'NOME'
            DisplayLabel = 'Nome/Raz'#227'o Social'
            DisplayWidth = 38
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'CONTATO'
            WhereSyntax = 'CONTATO'
            DisplayLabel = 'CONTATO'
            DisplayWidth = 34
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'ENDERECONUMEROBAIRRO'
            WhereSyntax = 'ENDERECO'
            DisplayLabel = 'ENDERECO'
            DisplayWidth = 45
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'VENDEDOR_NOME'
            WhereSyntax = 'VENDEDOR'
            DisplayLabel = 'VENDEDOR:'
            DisplayWidth = 16
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'CODIGO'
            WhereSyntax = 'CODIGO'
            DisplayLabel = 'COD'
            DisplayWidth = 5
            DisplayColumnWidth = 0
            FieldType = ftInteger
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scEqual
            SearchCase = scMixed
          end>
        SearchPresetList = <>
        DialogCaption = 'Pesquisa de Clientes'
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
      object EditNomeCliente: TEdit
        Left = 73
        Top = 28
        Width = 305
        Height = 22
        AutoSize = False
        CharCase = ecUpperCase
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
        Text = '***'
        OnChange = EditNomeClienteChange
      end
      object EditData: TDBEdit
        Left = 484
        Top = 28
        Width = 68
        Height = 22
        DataField = 'DATA'
        DataSource = ds_Pedido
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyDown = ClienteKeyDown
      end
      object EditNomeVendedor: TEdit
        Left = 73
        Top = 121
        Width = 305
        Height = 22
        AutoSize = False
        CharCase = ecUpperCase
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 16
        Text = '***'
      end
      object EditDataEntrega: TDBEdit
        Left = 567
        Top = 28
        Width = 83
        Height = 22
        DataField = 'DATA_ENTREGA'
        DataSource = ds_Pedido
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnKeyDown = ClienteKeyDown
      end
      object EditPagamento: TIDBEditDialog
        Left = 384
        Top = 120
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
        ShowHint = True
        TabOrder = 9
        Text = ''
        Visible = True
        OnKeyDown = ClienteKeyDown
        EditType = etAlphaNumeric
        EmptyText = 'Tecle F8'
        FocusColor = clBtnFace
        LabelCaption = 'Forma de Pagamento'
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
        ButtonHint = 'Forma de Pagamento'
        Etched = False
        ButtonCaption = '...'
        DataField = 'FORMAPAGTO'
        DataSource = ds_Pedido
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditNomeFormaPagto
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT CODIGO, NOME FROM CAD_FORMAPAGTO'
          'WHERE'
          'CODIGO=:CODIGO')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT CODIGO, NOME FROM CAD_FORMAPAGTO'
          'WHERE'
          '%WHERE%')
        CountQuery.Strings = (
          'SELECT COUNT(NOME) FROM CAD_FORMAPAGTO'
          'WHERE'
          '%WHERE%')
        SearchDialogFieldList = <
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
          end
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
          end>
        SearchPresetList = <>
        DialogCaption = 'Pesquisa de Forma de Pgto'
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
      object EditNomeFormaPagto: TEdit
        Left = 453
        Top = 121
        Width = 314
        Height = 22
        AutoSize = False
        CharCase = ecUpperCase
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 17
        Text = '***'
      end
      object EditNomeTrasportadora: TEdit
        Left = 73
        Top = 159
        Width = 305
        Height = 22
        AutoSize = False
        CharCase = ecUpperCase
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 18
        Text = '***'
      end
      object EditTransportadora: TIDBEditDialog
        Left = 6
        Top = 159
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
        ShowHint = True
        TabOrder = 10
        Text = ''
        Visible = True
        OnKeyDown = ClienteKeyDown
        EditType = etAlphaNumeric
        EmptyText = 'Tecle F8'
        FocusColor = clBtnFace
        LabelCaption = 'Entregador:'
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
        ButtonHint = 'Entregador:'
        Etched = False
        ButtonCaption = '...'
        DataField = 'TRANSPORTADORA'
        DataSource = ds_Pedido
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditNomeTrasportadora
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT * FROM CAD_CLIENTES'
          'WHERE'
          'CODIGO=:CODIGO')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_CLIENTES'
          'WHERE'
          'TIPO='#39'TRANSPORTADORA'#39
          'AND'
          '%WHERE%')
        CountQuery.Strings = (
          'SELECT COUNT(*) FROM CAD_CLIENTES'
          'WHERE'
          'TIPO='#39'TRANSPORTADORA'#39
          'AND'
          '%WHERE%')
        SearchDialogFieldList = <
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
          end
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
          end>
        SearchPresetList = <>
        DialogCaption = 'Pesquisa de Transporte'
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
      object GroupBox1: TGroupBox
        Left = 773
        Top = 12
        Width = 176
        Height = 216
        Caption = 'Status do Pedido'
        TabOrder = 20
        object Panel1: TPanel
          Left = 2
          Top = 15
          Width = 172
          Height = 199
          Align = alClient
          BevelOuter = bvNone
          Enabled = False
          ParentBackground = False
          TabOrder = 0
          object DBRadioGroup2: TDBRadioGroup
            Left = 84
            Top = 0
            Width = 88
            Height = 199
            Align = alRight
            Caption = 'Aprovado'
            Color = clBtnFace
            DataField = 'APROVADO'
            DataSource = ds_Pedido
            Items.Strings = (
              'Sim'
              'N'#227'o'
              'Cancelado')
            ParentBackground = False
            ParentColor = False
            TabOrder = 1
            Values.Strings = (
              'S'
              'N'
              'C')
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 0
            Top = 0
            Width = 73
            Height = 199
            Align = alLeft
            Caption = 'Faturado'
            Color = clBtnFace
            DataField = 'STATUS'
            DataSource = ds_Pedido
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentBackground = False
            ParentColor = False
            TabOrder = 0
            Values.Strings = (
              'S'
              'N')
          end
        end
      end
      object DBEdit2: TDBEdit
        Left = 659
        Top = 28
        Width = 108
        Height = 22
        Hint = 'Opcional - N'#227'o '#233' obrigat'#243'rio'
        DataField = 'DOCUMENTO'
        DataSource = ds_Pedido
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
      end
      object EditTabela: TIDBEditDialog
        Left = 384
        Top = 159
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
        ShowHint = True
        TabOrder = 11
        Text = ''
        Visible = False
        OnKeyDown = ClienteKeyDown
        EditType = etAlphaNumeric
        EmptyText = 'Tecle F8'
        FocusColor = clBtnFace
        LabelCaption = 'Tabela de pre'#231'os:'
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
        ButtonHint = 'Tabela de pre'#231'os'
        Etched = False
        ButtonCaption = '...'
        DataField = 'TABELA'
        DataSource = ds_Pedido
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditTabelaNome
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT * FROM TPRECO'
          'where'
          'codigo=:codigo')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM TPRECO'
          'where'
          '%where%')
        CountQuery.Strings = (
          'SELECT count(*) FROM TPRECO'
          'where'
          '%where%')
        SearchDialogFieldList = <
          item
            FieldName = 'CODIGO'
            WhereSyntax = 'CODIGO'
            DisplayLabel = 'CODIGO'
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
            DisplayLabel = 'NOME'
            DisplayWidth = 60
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'MOEDA'
            WhereSyntax = 'MOEDA'
            DisplayLabel = 'MOEDA'
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
      object EditTabelaNome: TEdit
        Left = 453
        Top = 159
        Width = 314
        Height = 22
        AutoSize = False
        CharCase = ecUpperCase
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 19
        Text = '***'
        Visible = False
      end
      object EditVendedor: TIDBEditDialog
        Left = 6
        Top = 120
        Width = 65
        Height = 21
        HelpKeyWord = ''
        CharCase = ecUpperCase
        Color = clWindow
        Enabled = True
        ShowHint = True
        TabOrder = 8
        Text = ''
        Visible = True
        OnKeyDown = ClienteKeyDown
        EmptyText = 'Tecle F8'
        LabelCaption = 'Vendedor(a):'
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
        DataField = 'VENDEDOR'
        DataSource = ds_Pedido
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditNomeVendedor
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = ' *** '
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT * FROM CAD_CLIENTES'
          'WHERE'
          'CODIGO=:CODIGO'
          'AND'
          '  TIPO in ('#39'VENDEDOR'#39', '#39'REPRESENTANTE'#39')')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_CLIENTES'
          'WHERE'
          
            'TIPO IN ('#39'VENDEDOR'#39','#39'REPRESENTANTE'#39','#39'BALCONISTA'#39','#39'FUNCIONARIO'#39','#39 +
            'PREPOSTO'#39','#39'TELEVENDAS'#39','#39'WEBVENDAS'#39')'
          'AND'
          '%WHERE%')
        CountQuery.Strings = (
          '')
        SearchDialogFieldList = <
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
          end
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
          end>
        SearchPresetList = <>
        DialogCaption = 'Pesquisa de Vendedor'
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
      object EditPedido: TDBEdit
        Left = 384
        Top = 28
        Width = 94
        Height = 22
        DataField = 'CODIGO'
        DataSource = ds_Pedido
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
      end
      object BtnRecalcular: TBitBtn
        Left = 734
        Top = 108
        Width = 33
        Height = 25
        Hint = '(se necess'#225'rio)... recalcular  com base na Tabela de Pre'#231'os'
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
          33333333333F8888883F33330000324334222222443333388F3833333388F333
          000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
          F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
          223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
          3338888300003AAAAAAA33333333333888888833333333330000333333333333
          333333333333333333FFFFFF000033333333333344444433FFFF333333888888
          00003A444333333A22222438888F333338F3333800003A2243333333A2222438
          F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
          22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
          33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
          3333333333338888883333330000333333333333333333333333333333333333
          0000}
        ModalResult = 4
        NumGlyphs = 2
        TabOrder = 21
        Visible = False
        OnClick = BtnRecalcularClick
      end
      object EditObservacao: TDBEdit
        Left = 6
        Top = 202
        Width = 761
        Height = 22
        DataField = 'OBSERVACAO'
        DataSource = ds_Pedido
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnKeyDown = EditObservacaoKeyDown
      end
      object EditEnderecoEntrega: TDBEdit
        Left = 6
        Top = 77
        Width = 235
        Height = 22
        TabStop = False
        DataField = 'ENTREGA_ENDERECO'
        DataSource = ds_Pedido
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnKeyDown = ClienteKeyDown
      end
      object EditNumeroEntrega: TDBEdit
        Left = 247
        Top = 77
        Width = 50
        Height = 22
        TabStop = False
        DataField = 'ENTREGA_NUMERO'
        DataSource = ds_Pedido
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnKeyDown = ClienteKeyDown
      end
      object EditBairroEntrega: TDBEdit
        Left = 303
        Top = 77
        Width = 123
        Height = 22
        TabStop = False
        DataField = 'ENTREGA_BAIRRO'
        DataSource = ds_Pedido
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnKeyDown = ClienteKeyDown
      end
      object EditContatosEntrega: TDBEdit
        Left = 432
        Top = 77
        Width = 177
        Height = 22
        TabStop = False
        DataField = 'ENTREGA_CONTATOS'
        DataSource = ds_Pedido
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnKeyDown = ClienteKeyDown
      end
      object EditEmailEntrega: TDBEdit
        Left = 615
        Top = 77
        Width = 152
        Height = 22
        TabStop = False
        DataField = 'ENTREGA_EMAIL'
        DataSource = ds_Pedido
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnKeyDown = ClienteKeyDown
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 1284
    Height = 55
    Align = alTop
    Constraints.MinHeight = 33
    Color = 7368816
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    ExplicitWidth = 1284
    inherited Image3: TImage
      Width = 1284
      ExplicitTop = 33
      ExplicitWidth = 1004
      ExplicitHeight = 1
    end
    inherited pnTitulo: TPanel
      Width = 1284
      Constraints.MinHeight = 33
      ExplicitWidth = 1284
      inherited LblBarraTitulo: TLabel
        Width = 1141
        Caption = 'Pedido de Venda'
        ExplicitLeft = 68
        ExplicitTop = 3
        ExplicitWidth = 867
        ExplicitHeight = 25
      end
      inherited Image1: TImage
        ExplicitLeft = 948
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 1225
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D49484452000000B8
          000000B308060000003AF4D604000000097048597300000B1300000B1301009A
          9C1800000A4F6943435050686F746F73686F70204943432070726F66696C6500
          0078DA9D53675453E9163DF7DEF4424B8880944B6F5215082052428B80149126
          2A2109104A8821A1D91551C1114545041BC8A088038E8E808C15512C0C8A0AD8
          07E421A28E83A3888ACAFBE17BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0
          080C9648335135800CA9421E11E083C7C4C6E1E42E40810A2470001008B36421
          73FD230100F87E3C3C2B22C007BE000178D30B0800C04D9BC0301C87FF0FEA42
          995C01808401C07491384B08801400407A8E42A600404601809D98265300A004
          0060CB6362E300502D0060277FE6D300809DF8997B01005B94211501A0910020
          1365884400683B00ACCF568A450058300014664BC43900D82D00304957664800
          B0B700C0CE100BB200080C00305188852900047B0060C8232378008499001446
          F2573CF12BAE10E72A00007899B23CB9243945815B082D710757572E1E28CE49
          172B14366102619A402EC27999193281340FE0F3CC0000A0911511E083F3FD78
          CE0EAECECE368EB60E5F2DEABF06FF226262E3FEE5CFAB70400000E1747ED1FE
          2C2FB31A803B06806DFEA225EE04685E0BA075F78B66B20F40B500A0E9DA57F3
          70F87E3C3C45A190B9D9D9E5E4E4D84AC4425B61CA577DFE67C25FC057FD6CF9
          7E3CFCF7F5E0BEE22481325D814704F8E0C2CCF44CA51CCF92098462DCE68F47
          FCB70BFFFC1DD322C44962B9582A14E35112718E449A8CF332A52289429229C5
          25D2FF64E2DF2CFB033EDF3500B06A3E017B912DA85D6303F64B27105874C0E2
          F70000F2BB6FC1D4280803806883E1CF77FFEF3FFD47A0250080664992710000
          5E44242E54CAB33FC708000044A0812AB0411BF4C1182CC0061CC105DCC10BFC
          6036844224C4C24210420A64801C726029AC82422886CDB01D2A602FD4401D34
          C051688693700E2EC255B80E3D700FFA61089EC128BC81090441C808136121DA
          8801628A58238E08179985F821C14804128B2420C9881451224B91354831528A
          542055481DF23D720239875C46BA913BC8003282FC86BC47319481B2513DD40C
          B543B9A8371A8446A20BD06474319A8F16A09BD072B41A3D8C36A1E7D0AB680F
          DA8F3E43C730C0E8180733C46C302EC6C342B1382C099363CBB122AC0CABC61A
          B056AC03BB89F563CFB17704128145C0093604774220611E4148584C584ED848
          A8201C243411DA093709038451C2272293A84BB426BA11F9C418623231875848
          2C23D6128F132F107B8843C437241289433227B9900249B1A454D212D246D26E
          5223E92CA99B34481A2393C9DA646BB20739942C202BC885E49DE4C3E433E41B
          E421F25B0A9D624071A4F853E22852CA6A4A19E510E534E5066598324155A39A
          52DDA8A15411358F5A42ADA1B652AF5187A81334759A39CD8316494BA5ADA295
          D31A681768F769AFE874BA11DD951E4E97D057D2CBE947E897E803F4770C0D86
          1583C7886728199B18071867197718AF984CA619D38B19C754303731EB98E799
          0F996F55582AB62A7C1591CA0A954A9526951B2A2F54A9AAA6AADEAA0B55F355
          CB548FA95E537DAE46553353E3A909D496AB55AA9D50EB531B5367A93BA887AA
          67A86F543FA47E59FD890659C34CC34F43A451A0B15FE3BCC6200B6319B3782C
          216B0DAB86758135C426B1CDD97C762ABB98FD1DBB8B3DAAA9A13943334A3357
          B352F394663F07E39871F89C744E09E728A797F37E8ADE14EF29E2291BA6344C
          B931655C6BAA96979658AB48AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41
          C74A275C2747678FCE059DE753D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB
          4477BF6EA7EE989EBE5E809E4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C
          5806B30C2406DB0CCE183CC535716F3C1D2FC7DBF151435DC34043A561956197
          E18491B9D13CA3D5468D460F8C69C65CE324E36DC66DC6A326062621264B4DEA
          4DEE9A524DB9A629A63B4C3B4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD7
          9BDFB7605A785A2CB6A8B6B86549B2E45AA659EEB6BC6E855A3959A558555A5D
          B346AD9DAD25D6BBADBBA711A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5
          D806DBAEB66DB67D6167621767B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90E
          AB1D5A1D7E73B472143A563ADE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3
          B613CB29C4699D539BD347671767B97383F3888B894B82CB2E973E2E9B1BC6DD
          C8BDE44A74F5715DE17AD2F59D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F
          299E593373D0C3C843E051E5D13F0B9F95306BDFAC7E4F434F8167B5E7232F63
          2F9157ADD7B0B7A577AAF761EF173EF63E729FE33EE33C37DE32DE595FCC37C0
          B7C8B7CB4FC36F9E5F85DF437F23FF64FF7AFFD100A78025016703898141815B
          02FBF87A7C21BF8E3F3ADB65F6B2D9ED418CA0B94115418F82AD82E5C1AD2168
          C8EC90AD21F7E798CE91CE690E85507EE8D6D00761E6618BC37E0C2785878557
          863F8E7088581AD131973577D1DC4373DF44FA449644DE9B67314F39AF2D4A35
          2A3EAA2E6A3CDA37BA34BA3FC62E6659CCD5589D58496C4B1C392E2AAE366E6C
          BEDFFCEDF387E29DE20BE37B17982FC85D7079A1CEC2F485A716A92E122C3A96
          404C884E3894F041102AA8168C25F21377258E0A79C21DC267222FD136D188D8
          435C2A1E4EF2482A4D7A92EC91BC357924C533A52CE5B98427A990BC4C0D4CDD
          9B3A9E169A76206D323D3ABD31839291907142AA214D93B667EA67E66676CBAC
          6585B2FEC56E8BB72F1E9507C96BB390AC05592D0AB642A6E8545A28D72A07B2
          67655766BFCD89CA3996AB9E2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6
          A5864B572D1D58E6BDAC6A39B23C7179DB0AE315052B865606AC3CB88AB62A6D
          D54FABED5797AE7EBD267A4D6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7
          ED5D4F582F59DFB561FA869D1B3E15898AAE14DB1797157FD828DC78E51B876F
          CABF99DC94B4A9ABC4B964CF66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DA
          B40DDF56B4EDF5F645DB2F97CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F
          54A454F454FA5436EED2DDB561D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9
          BEDB5501554DD566D565FB49FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703
          D203FD07230EB6D7B9D4D51DD23D54528FD62BEB470EC71FBEFE9DEF772D0D36
          0D558D9CC6E223704479E4E9F709DFF71E0D3ADA768C7BACE107D31F761D671D
          2F6A429AF29A469B539AFB5B625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59
          794AF354C969DAE982D39367F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF
          6A0F6FEFBA1074E1D245FF8BE73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A
          5F6DEA74EA3CFE93D34FC7BB9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CE
          DDF4BD79F116FFD6D59E393DDDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD9
          7727EEADBC4FBC5FF440ED41D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC
          47F7068583CFFE91F58F0F43058F998FCB860D86EB9E383E3939E23F72FDE9FC
          A743CF64CF269E17FEA2FECBAE17162F7EF8D5EBD7CED198D1A197F29793BF6D
          7CA5FDEAC0EB19AFDBC6C2C61EBEC97833315EF456FBEDC177DC771DEFA3DF0F
          4FE47C207F28FF68F9B1F553D0A7FB93199393FF040398F3FC63332DDB000000
          206348524D00007A25000080830000F9FF000080E9000075300000EA6000003A
          980000176F925FC546000057BF4944415478DAEC9D777C5CD599F7BFE79C5BA6
          4823C9DDC60603360E1D4C35BD074C0FA127A46FB24976378DDDE4259BCDA66D
          7A369BB29B4D59D21392D03B81D08CE9107A371803C645B6A4D1CCDC72CE79FF
          387746235972956CD9D1C3E77E6463CDCC9D737FE739CFF37B9AB0D632C2D206
          CC03F60776077604B603DA8116C6645B9732B01A781D7809781278105808748D
          F4878B1102F874E05CE06DC041801A7BCE63324034701F7039F00760F1D600F0
          23808B8193C6403D261B08F61B806F02778C46801F057C01387CEC598DC926CA
          5DC0E780DB4703C0A702DF002E1C7B2E6332CCF2EBCC1A78634B01FC6CE0C799
          133926633212D2057C20B3D1374AE446BC2600BE075C3606EE31196169CB70F6
          3D20DC1C1ABC15B80238766CEDC76433CB9DC09940E748017C62E6E9EE37B6D6
          63B285E4AFC0F1C0F2E106781B701B30776C8DC7640BCB23C0D1AC6790687D6C
          F00047C68F817B4C4683EC9BE131182E807F0738666C5DC76414C931192E37D9
          44393BF362C7644C46A39CBB2E7CAE0DE0DB014FE092A246B95840643FC9FE3C
          029F6153103E00C65A2EF9CA4FF8F1CF7E458C66E6EC191CB4DF3E1C7AF0FE1C
          79E0BE4C1D57C2570A21C57A1C93166B3546472865D1BA86F2C6B1712CEEDF94
          AC06F604966C0CC02FC7D1325B91D81102771DE01A8B020457DFB890F7BCFF63
          ACEAEA81420ED22AA415B029B9522B6FD97916BBCF9AC31E7BCEE1A4938E66FB
          6953C9E54202DF478935DF5BEB04A5144647082910223782DF659B922B70497D
          1B04F0A333D6644CD6C0A20521F8C395B772C1F91F4596DA89D3182125F81665
          53D238825A0DE2D4013F904C9832955D76DE895D76790B871F368FA38ED89742
          3ECFB8F60E027F2C2F6D13E538E0D60D01F85DC0615B11DE368B0E779F671142
          F0F35F5FCBFBDE7731AAD441AC35C257581D3B33068187C443219426B1116935
          81388624812020C8E5983A6D2A7366CEE0C083F7E5B4534F64F7DD665308E588
          7F876D50EE668844BFC1007E04C39CB2B839E48D65AB692D1568C905980CF423
          02920C7DDFFFEFDFF10F1FFB22B2504278129D24E04B642051D6436A8B4E2C86
          08235294F09142628C4627B17B9FA406D202865290F2CEF77F806FFEC7A7097D
          3506F00D972371D1CE7E32981773F1D6F4ADEE58F818675DF871E61D7506FB1D
          3A9F8F7DE63F58B9BA1BD3E4720E2FBA9D74F7ACC6CF0560538CD6C85C084A61
          624D5AAB90C4295A80F5F3E0E5D056920889161EF83954AE85B6C9D3C9794594
          5FA426DBF8C1B77EC867BEF413123386D68D9041713B10E0938013B7866F1325
          31DFFADEFFF1D653DFC9E5575EC32B8B97F0DC732FF1DD6FFF80DDF7399C3F5C
          7D2BB561474ADFB1B06CF932925A85B090437A0A93C46E032885F51446824538
          1BAA6E730809D22DB935969ED55DE8308797CBA3F22D1016F8D10F7EC44B8BDF
          1883EB86CB89197ED70AF00B006FB47F93C5AFBDC171279DCEA7FEF9DF88F151
          853654BE0D95EB409526D159B69C7FC107F8D8C55FA216C7C3AEC1AD85575F7F
          1361238C8D3154C14B81C85DC280B220359604A406CF8088010D4ABA0D10FAA4
          02E238C20AA050A4DAB59AEFFFE23A8C1D43EC068A97E177AD003F6BB43A9200
          89B65C79FD5F98BBDF912C5CF810B9B671202416915DD25DC2C32B94F8DFEF7E
          9FE3E6BF93454B96AE0774ED7AC21BBA2A094B5E7F135128628DC12649A6D99D
          3DDD77D9017FB6FDFE9FB516DFF7400AA238467A1EF83E7FBEF126B4D66390DD
          70396B6D00AF57BF6F29180F69350B018BDF5CC9D917FC3D679E7E1E3D554DAE
          34892475E036C8EC52EE923E690285ED7664C11D7733EFE013F8D5E537ADC3F8
          104358DB6BFE4EA26356759731B508632D61A9158C066BC06A20715ABC7E910C
          00BE06A1C1A60861414AACD6A8C047B41479F6810779ECB1A7C7E0BAE1328F01
          350ACD003F842D5A282C0081693A9B2D9018B8E6967B38E6E8B3B8EAB2ABF03B
          A6E1B54C268E7C67E30A9B5D22BB14E0A1FC02694F4C307E1A2BBAABBCFFBDFF
          C8255FF82E2B7B92B56E2F63FB538D16E8AA5A96AC28F3ECE23778FCF9C55C7F
          CB0374F76A64D88AEE8D49AB3A5B3AE196D44AB0A24969CBCC1677DF11ABB2FF
          27D189C15A854061B5C10BF2203CBEF75FFF83ADDBEF63B2BEA2321C0F4A135E
          027C694BDD99B106814008D1E09A97ADEAE5735FF806975EFA1BA24A8428B493
          6F6925AEA6CE24511693F1CE7D00737B542A85D21AA3ABE4723EBD2B97812F39
          F8E003F9D1773ECF5E7BECE2B0672D520852034A4235B63CF6E40B3CFEF813BC
          F8D28B3CF3FC229E7FFE257ACA3DA46995B8A74A628B94CB3582520771A21112
          B48941A64DEADF7320AE6BEB869928B2FF0F524867E2588B5412934678BE8F36
          B07D6BC4638FDC4DA96DAC75CC06CAE7802F0E06F0DFE19257B6A0ADED806DAC
          E59A1BEFE073FFF6251E7BE8AF78A58984C571542A31188508F3985A0AAA0A81
          012333602BB0CE47969EC2767561730161CEC326BD24498C4D23A6B4077CF94B
          5FE082F34F23F0158B162FE377975DC7FDF73DC0030F3F46775799A81691DA8C
          F5101284C5CB01C603F2089927D5068C7178550988345B54FA347503E016F090
          5664F7E836B34E538494784A91C4114281F27D64CF73FCECC7DFE3820BCF1D83
          EC86C9EF81F30603F87DC0815BFAEEE224E5735FFC0E3FF8E14F2957AA143AC6
          93A6102706297D0C1E1885F4725851C152CB80A432F320B3B28C41860126AA81
          8EF17C81540281C55656536A6DE188238E64F98AE5DC75C75DC8C0C7A208833C
          2805C2035C60C658894563458CEFE78923902A8FD116E9F918AB81144482351A
          2184DB141A2CC6594DD9092A8C05AB104262B0D854BBD34649AC35608DB3647A
          1671DE59A7F0CB5FFF642CE8B361723FAED9D41A007F15D7916A8BC9B2CED59C
          79DEC7B9E796BBF1C64F073F204D2BA0229031680348A40E11566184C10A3304
          D7D16CDB0FE09354099DA6D86AD939857985F47C9412244994F1DD22B399EBAE
          8A011981F2414B4835C2CB21F1D0498A1012844158830C245A6B041A84C258E1
          4E026B20D5EE963C1F21A5CB81B475635D347C897C54A1184A6EBFFD7A769B3D
          A1411B4A3114B723602CC80FF05A338E9B9DCCF62D7957C65ABEF59DFFE19E3F
          5F4761F2148CD1284CC64E08309956443AFF4D883EFC0DE2ACF65D6B8A4E23B0
          1A910F1185102105D624A4499CBDCA221A1B5F36398F9E3387AC05E921006352
          843048A95D2E8AB22869B149151B57F0444A5EA6E44542CE26F8C410F542F70A
          ECEAE598AEE5D89E95D8EE4E6CF70AECEA65D8154B897A57D1D3D3C9EF7EFFBB
          06B0C5A0E01663E0EE2FA581E4785DB6A837538D12EE7BE021100A21DCD11D0B
          81909E3BBA1B4F570C49E3ADB7AD6F3408910517330EDD38F3404839C486C131
          34D9AE925266ECB941D814A4422A30D52ADA7AE4F221527A24E532D5EE1E900A
          94448621EDA5565A5B5B29E4F3B4955A4933F5AC534DAD522189225675AD60D5
          F237F9D217BFC25FFFFA30EF7BEF059C70ECD1E40235C4E93406EE4C5A8702F8
          16955CE0D35A6C012149E30A481FAC422A8136168C6A68298BDCA4C729A46EE0
          C118D36018EB274483F5B6A29FE960C97844044218A7C831589B4012932FE4D0
          5253ABF6907647485FB2D3CCE9CCDDED5066EDB20B6FD97557F6DD670F664C9F
          4C98F35152B2A273351DED25945260411B431CA554E384AE9E32F7DDFF280BEE
          B9931FFFF8A7FCF10F9771DA69A770CC918733AEA3630CCAEBF3AC9B6CF02DCE
          B82E7CE071E69F7836BDA947AE7522E5D565F0253690590025BB45EB21ACC40A
          ED6CE30D149951918E6776A7831036A3289B4E8A3A6F4DA6AD650A16676F5B8B
          351A4F411804C45195B4AB93968E56E61D7220FBEFB71FF3E71FCFBEBBED483E
          F431C638100FC11CADF5C471BF88B596471F7F12256197D9B3C9E77263081E02
          D7A312E0009FFEDC77F8DA7F7C9B7CFB24ACF4497416E816CDB759A705D38D02
          78C6E3B9D75AEB14B455FD4127A5B3FBA9979C5934C6FD5D0AAC4DB15115AC26
          90961DA64FE3ECF3CFE08CD34E64EE9E6FE957B563B4268A227C3FC05A431227
          44518DEEAE2EAA950AB55A84D61ACFF328B5B5D1D252C42F142916F259BEBBC0
          F3C65268B76A80D70B17AA91E6ADA7BE93BBEEBC97A0A59D440B507EE3E6A4E7
          81319834054F659A7D43BFBE697C65D1303DDC0A08C00B42924A1521154229C7
          A1188DB529D2F3105292AE5C0656B3E7C1FBF3EF9FFE30071F722853C7E5FB39
          CD711C53AD5478E9859758F6E65256AC5C49AD5AA55AAB51AB561B5CB8753159
          84707F1708643E8745506A6D2597CB316BF62CE6CC9A454F77172D2DAD7474B4
          8FC1786BD4E000AFBEBE94030F3D85652BBAF1F36D18AB107E8EB8DC8B5F2C60
          6B15B467B1D2817DC36D14DD7F2DB2E34100CA64F1462F244D63A7C48D45A731
          7E20B17144DADDC9F459B3F9E74F7D84F3CF3B85094DD1C6959DABA9D5AA3CFC
          D0C32C7BF375BABACB445182E729A49448291B40AEFF79A0C90260458A319A38
          D618639012A4F029165BE8686F67F2E4C9ECBCF34EE47239264D9A3806E9AD05
          E0C638CAF88E7B1EE2A8634EA1D036058C4F6C3D845224710D24A8BC4247291B
          55792E4DD337AEE787B81F0A81AEF4521C378E5A6F199D2604F9104F0892EA6A
          4853CE3AF34CBEF6F54BD87EEA78EA7EE7AA55AB78E5955778E8A187E8E9EE42
          005A27482FC0CF1507DD88D6DA21B21805D808297076BB105823481343AA35D6
          1847A32A45A954628F3DF660871DB6A7BDBD8D42A13806EFD1AEC16D66AFBCF7
          C39FE6D21FFD9CC2841DA89623F2E3C651ABF4E0B714887B57618D04156CF8AD
          4B3BE01BD713A32C4A08FC30A0B67AA58B308621A049BB57D1DE9EE75FFFEDF3
          7CF80367137AAA416F3EF0D0833CF1D8E324D50A499A10863EBEEF83B524088C
          F586F89E439F3E4AC4CE016EFCB2EF18A4EC7905810F58AAD52A711C93CB0514
          8B45B6DF7E26871D7618854261839DD931806F16709BEC4108CAD51A27CDBF90
          87FEFA12222851ED2DA38A39B4A941A0B1713DF76443015EFF303980AA006953
          485372791F3F54F4AC5C891196DDE7ECC26F7EFA1DF6DA6B4EC3C67EFCF127B9
          F7DE05AC5EDD492E17E2290F29155683D10661C0488151A2CFAF5D6FA627016B
          30C660AD44480FA57C9452E8CC69D53A21087C82D043EB84384E08FC02711CB3
          DB6EBB71D45147E1FBFEA0ECCD18C0B790E676E0B699C52078F6E5D79977D019
          74550CC2531805D6D6904501698089D9F018C79000B708931284012AAA909898
          248D79CB5E7B72E31F7FCE0E53DB30C6902429D75C7B2DAF2E7E8552A9406F6F
          2F6090C2255159239042E2AB00232C8949D6C8376FB6B78732511C3FEFB87983
          C41A81B52EFB30087CA41424498D248D514AE2791E490C6118124511D65A76DE
          79678E3EFA688220200CC331806F610B1C8B714948063CE9BA487DE53FFFC025
          9FF932AA58C0926255841535B045D03E1BAC1EC9B2044D7D2944838D919E20D4
          292435AA498D830E9FC79597FD8429AD01D6181E7FFC31EEBBEF5ECAE52E7C5F
          51A9F6522CB62051246982101E4A7908EB936A8B20C59366F0C5B543F3DEA691
          622B105904D5257D597CDF47EB14AD63A404E54BAC4D5CD0CA3A0DEE79CE2C8A
          A28896961666CD9AC561871D4618865914760CE05BC6F676911444D37DA6063E
          F8E1CFF3B39FFF0ED5527429A6791F1B9315386CD8AD7B41802EF7208AAD586D
          B051845012E549844E105613AF5AC651C71FC3EF2FFB29134B392C96850B16F0
          C4934F50EEE9215FC89326312AB3C58DCEEE41880633638C400AEB82488D45B6
          6BD8C4B6A9305908E9DE42929927F5B34C3AA08BBE75B2D6B12BCE85305863C1
          7A0DB6C65A9B9D380EFC13264C60E6CC99CC9B376F5BD7E6A3DBC91C4C962CEB
          E290234F66F9AA0A49ECA17245E2B8B211DA1BBC4091F6961185168812173692
          0A4B826735D5AE95ECBDE7AE5C71F96FD871A6A3E06EBFED769E79EE197A7B7B
          F17D1FCFF34853576CE1FB7E0646833136A300854B48B40EA87D4B2F906240E6
          5416A5AC03DA1843108480CD2A9C6CE311696D86B0A9C53A1F6392244829993D
          7B36BBEFBE3B3367CEDCE601EE6D2D77DCD5D5439CB8076C30D8B8E6320D3DB9
          C15B33AD2678A50ED27219690C360831468349499288295326F3EBDFFE6F03DC
          4F3CFE044F3DF534B5A4DA0077B341912471C655D7396E076A97E7221A8E615D
          99185CB256FDFF29A5D6E0C56BB52A4288C6E70921D05AF72BE95B2F7BA7B1AF
          DC7BC571CCD34F3FCDE2C58BD97DF7DD39F8E0830982609B55E55B05C06B89E1
          1F3FFE6996BDBA04D5DA81F403A40AB0A9C9A8B60DF432857026851010E6B049
          5C3FCE509EE2273FFD4F769FB323002FBFF22A375E7F232DA5564211A294224D
          53D234ED07C8BA16AF6B61299DD3678C218EE3C6EFD64D87344DFB01B75E45AF
          944229455B5B1B5A6B922421CE5A5FD45FBFB1E69FB516CFF31A9BEBC1071FA4
          A7A787BDF7DE9BEDB6DB6E9BA4114735C0EBE1FBEB6FBA95BBEEBE17BFB59DC4
          48A4B4AE559A106C549AA8F030D518A93C94F4103E081B1375F570D107DEC1C9
          27B836774B97AEE0C69B6E44FA508B2A28E500ABB5464AE9B86EFA9B20F57FAF
          6B45CFF3686B6BA3B5B59520082897CB140A05F2F93C711C93A629711CD3D5D5
          451445C4714C1CC7F4F6F622A524088206D597A6A92BA4D84420FABE4FB55A45
          29C50B2FBCC0A2458B38F5D453993E7D3A4AA96D8A331FF536F89B2B5773EC49
          E7F2E4634F210B6D5819BA24A8142804589D6EF07B4A9573CEA5750D31C39C4F
          5C5EC50E3B6CC79D7FB98A1953DA30C672C59557B378F14BE47201B56A15CF0B
          1B5981752DA8B5264D539224A1582CD2DEDECE4E3BED84108271E3C6316DDA34
          5A5B5BD7AA79AD75019BEEEE6ECAE532B55A8DA54B97B274E95256AD5A45B95C
          464A491886846198D9FE1BAEC1EBF75D2E9709C310DFF71B0E681004CC9D3B97
          3DF6D8839696ADBED07974DBE0750DA20DFCE23757F2DC537FC50F3B104188D6
          20A444B614D13A420F6C2FBB3EA241081F6B52C25C80D131B65AE65FFEF9630E
          DC169E7AE6795E5CF43CBE02210D612EC01AD9D0DE00D56A152925E3C68D638F
          3DF660FBEDB7A7BDBD9DDC06A6B10A2128140AFDA28F7BECB1079D9D9DA469CA
          9B6FBEC9934F3EC98A152BE8EEEE260882017EC0BAD7B36E2E552A1572B99C2B
          EE36A6DFFFBFF3CE3B2997CBECB7DF7E746C23F9E6A35A83AFEC2A3377DE892C
          7EE94582B6290819BA0E5078083F40A7F1C615B2E8008CC60F254AA4C43D9D1C
          74F05CFE72E3EF087D414FB9CCCF7FF90BB44EC06AA412247142E81750CAA3B7
          B797288AD861871DD87FFFFD993E7D3A854261448FF56AB54AAD5663F1E2C53C
          F2C823747575618C6962706C03F4757BBE9ED465AD6D38B4611836989ABAB953
          3F959452542A1576DD75578E3FFEF8AD994A1CED1ADCFDBCFCCA9B58FCEC0B78
          E327A38D2B63C3F3314680AEDBE01BBE2F851084F93C3AAD9024357C5FF1BEF7
          BC8BD07760B8E79E7BA9F47693CFBBD6109EEF93CBE7B1A9A4ABAB8B52A9C471
          C71DC78C193318376EDC66B159F3F93CF97C9EF6F676E6CC99C3E38F3FCEA38F
          3E4A6F6F6F03C8CDE0AEFB07711C3718943AA8EB52A71BEB2C0EB828E8B3CF3E
          4BB55AE5A8A38E62E2C489631A7C24001EA729FB1C7432CF3CF51C5EA91D6D5D
          DE49FF4263BB71004FA0B5D4464FD70A6C6515871C7E20B75CFF4B0AB99065CB
          97F3CB5F5C8A1F66FD55A424D6295248A2DE84B7BC650EC71E7BEC16B753EBDA
          F7F5D75FE7AEBBEE62E9D2A559083F404A4914450DD3476B4DB55A25088241D3
          03EA8E659224E472B9C6093573E64CE6CF9F4F7B7B7B3FD3716BD2E0A332662B
          04FCF1AADB78F69967F00AAD59CEC8F0DDAA15964A6FD995609A948BDE713E85
          9C3B8EEF5D7837C6A4F81985A794228E13AC85638E399AC30F3F7C5438617587
          71FAF4E99C77DE799C72CA294C9F3EBD412BD6F9F36AB58AD69A42A13064EE4B
          33ED9924098542818E8E0E5E7DF555AEBAEA2ACAE572E3E4DBDA645402DC58F8
          D56F2E735979D247E3655D6359574788F50347E0863D99A88759BBEDC2B96F3F
          1E80AEAED5BCFCF24B945A5BD0718CD6095DDDDD8C1F3789534F3E9D030E3880
          71E3C60DEAC46D598520983D7B36679D7516471F7D34BEEFD3D3D383EFFB0DA6
          646DCC4B332B54FF59A954686D6D65F9F2E5FCF18F7FA45AAD6E9526CAA804F8
          A2C56F72FFFD0F926B6B4749D9BF3061982A132D16AA154E3DED644AAD4E233F
          F6D8A3C4B52A584B9CBA3123AD2D258E39E61866EDB4D35A01361A4429C53EFB
          ECC379E79DC7DCB97359B972253D3D3D0D4E7EA88D58E7F195528D3FD79DD15C
          2EC7B265CBB8F2CA2BB74A908F4A805F7BFD4DACEAECA4514E26641FB8B3AEAC
          9B7642B8869941C778CE3CED386496C0F4F2A21709438F34ADE179AE92E6D453
          4F67E71D666E554D5EC78F1FCFF1C79FC0FC93E7532C14E9EDED7551D326BFA5
          F1676B1B29B8034BE8B4765543ADADADBCFCF2CB5C7FFDF524493206F08D654D
          00120D37DEB400E515A955135253CFC0AB671A26EE22DD68BF58A521A62AD871
          C638DE326707005E7BED75562CEB2554E3313A244D23DE7AFCB1CCD86EDA9A37
          39FA78A7351C6E2905FBECBD0F175EF40EA66D3F9D159D9DE07958E923BD0235
          2D3032870C5AD1D6CF12C36C43A3D7CD957AFA416B6B2B8B162DE2E69B6FDEAA
          34B91C99C51E7CF99B016DACCB9473D9777DFFF6CA92953CF8D0A3E8D410165B
          F0C22003D750D7C67C691F293CF6DA7B3726640CC16B4B5E435A0FA325B56ACC
          ACD9B3D879D6ACC6831FDD0ED6D0F7D6D1D6CE19A79DCEBEFBCDA5164548E5D1
          5BA9E20779B481DE6A4C10E41A1BB8FE5DEB3933CD1CBAE7792C5AB488FBEEBB
          6FABD1E4DE482CB605CAD508013CB7E8359224CD0224359238A51A45547B6B54
          6B35D234C5EA946AA5821582471F7F96EECED5F82D252C92A41A811F64F589B6
          89DFDC785ED38A142135A79CF2560490EA98452FBF8C9082388E9832750AC71E
          731281DF4A5F7551F3E6151BA05587CF6FD85890B7148ACC3FE104C6B7955870
          F70242151090A2D178CA12D76AF8BE1CF490AA87F8A328220C43B4D6DC77DF7D
          ECB6DB6E4C9A34E96F0FE006B8EDEE07F9FB0FFF13AFBFB1946298A3AB5A7555
          2A89C9F2A31B6A3C6B6429C124A02DE45B517E48E807C4513232E0309ABCEFB3
          E38E330158DDDDC9AA559D0D581E79E4D1148BED0D70CB017D11B746114272D0
          41F3682DB670C71D779244B5860912063EDAE8211D50CFF3B22A228DEFFBD46A
          35AEBDF65A4E3EF964264F9EFCB705F05BEF7F8213E6BF039208AFD842D49560
          F3AD6E9664E07A780B44D69DD525FE7B0A37E75D28A4F4D15652E9AE223C0FE1
          FBAE5265188D2963223A268C67C60CD765B75AE9459B983481993BEECC8C1DB6
          6B00BAB98C60FDE16D4729C805BBEFB91713274EE4CA3F5E4677F76A4AA512DA
          BA8919620866A61E0DADB32CA55289E5CB97B360C1024E3BEDB40DCA8BD9EA6D
          F0F32EFA3820901D13116101AFA584D1122F6C41CA00213D84F411484C56D615
          C7AEE124D227493449AA91F902787E563729D730B9ED2628531D47ECBAEB8ECC
          983C0180959D2BA8542AE4F3798E3CE630845C7320D5867DDCF0529AC32D93A6
          4CE5FC8BDEC3D469D3A954AA6BF59F071666B86A7E4DA954E2D9679FE591471E
          E95FB1B4AD03BCB7DC0B6101AB5DAFF7A89610E44B986A4A6A04DA488C7555E2
          08E534B91722FC3CDA088C1702321B3025114A6D1A9A07A55104B367EF80CA6A
          193B572DC71AC38C19D3193FA1ADDF03B758A2D8594FA6E9D24D57DDD25AB3D8
          66F381BC3E404B9BBE3FA7A6E97EB33FA7A903636BA9C451C71CCB84F113896A
          D1904E749AA68DECC5288A1A5ADC18433E9FE781071E60F1E2C57F434EA610D9
          583CDB98649026114658D7C5BD0ED67A539BFAC80EE5A11B7DB825D6EAAC1FB7
          69EA25B8E11AB29E4D57B7F5A510186D1AEDCE8CD5947BBA499284030F3AA079
          983116F8E74F7F963BEEF82BC2CF51682B60339D909A7A537CA7DF73A1A256ED
          66E71D67F0FD6F7F85D6BCBFD91EE2D32F2CE1E27FFE3CB538A19ABA7C94244D
          D0C6108601C6A49854930B14B56A2FAD799F4BFEDFC51C76D05C4E3FE73C7EF2
          E39F807575A07510D779703B805DA96F847A26631445DC7EFBED9C7BEEB9E4F3
          F9BF018037C803D1CF5141A921B864DB1FB4CDAF1DB2B5D9A6F33C6D6DAE4F7A
          AA133A57753271E244C64F1EB7C6369A366D3B1EB8FF7FF10A25D2C628EE6C5C
          61A323AD756D274CC482BBEEE6ACB79DC9A9C71FB2D9DCD2FB1F7C98EBAEB802
          59ECC028BFEF534593EB6F0C9042CF0A76983D9B7DF7DADD69F2D622E79F7F1E
          97FDE1F78D2A9F3AB8EB8E651DE48369792104954A85279F7C92FDF7DF7FDB37
          519435286BD7721994D5FD2ED9D0E659BF6EB2690B3645588DB0D9F0544C367F
          526CE2979674B4BB847E9D24F47475B1C7EEBBA3BC3597E38C334F67DCB83654
          90835C3BF825F05B41B5B99F412B846D109408DB2643EA71F3AD778FB8AB597F
          EF441BFEEFE75722641EAFD0EEEEC96F5BE312F936FCB68940C05B4F3E835C2E
          68985493A74CE2E493E737F2CAEB514DD7D0686849D3B4B109162C58C0D2A54B
          B77D80F78DD5EEC3E23AAF7EAABFEF12FDDE6D1835B814B4B6D635B8D350FBEC
          B3DFA0BF3B73C6761C72F8E118EDE8322155E63BD4C70BAA8C6D715DA7644B0B
          B7DC7C33BD518A184190D7B7F8A257DEE089BF3E8ED73601848794D93DAAFE97
          459074F710B4B673CE39A72285680CB41242B0F3CEB338E0800388E3B8616707
          4130A403592F96F67D1F9BB58A7EEAA9A7469DC339EC007723B50546084C363B
          6A5D97154D9A1B37A94C30F0EA6B429535D3DEE8F35F6415EFCE7CB274747410
          E6C2218174C2F1C79154228CA6CFABACFF5903466053838E62A450BCF0F433FC
          F9D67BFAC6D78FA0DC74EB3DAC5CD98DC627AE198C96AE4957BFCB2285846A95
          BDF6DE877973771F74E9E6CE9DCB8C1933E8EDED6DA4D80EA9C8AC6D642AD6EB
          451F7DF451962D5BB66D03BCA1D544D3ECCAC12E219AAE4CF75B8B6CBA44FDA2
          1E1FB5C342C3092191D9F04A630C53A76D37040BECE4ACB34E61EAF6DB411221
          30A8C6AD0BB721A54028089442D818A5047FBEF98686CF3D52528D62AEBCFA26
          F03D30C28D42C44DA793365314D68D33B4690C36E1E8638F20170EEE00178B45
          CE38E30C4AA5124110D0D5D5B5D66269A5144992346CF32449B8F7DE7BFB550D
          6D7B005F638CDFDAAE35BD5307E8E66B5D87F4C6DD617D8C95D69A2993A70DF9
          208DB54C9958E2A0830FC4D46A50DF70CD5F41BB4EB08976FE8294F0975B6F65
          5567D7883EBC724F2F8F3EF208C2F340F908A5FAAD5BB352B0B51AA57113B8E0
          DCF9FD1FFA800919611872C10517F4EBEFB22E1BBCDEE3A5582C369A0AD95192
          9C36FC00B71A6C9A5DDA991E835DC6D62D92CC4E5158145A28D2EC4AA4229192
          543823C536F5F1C6988DCEF033A61B6D5D958A2F734C9DB0FD20E303B3051202
          ACE13DE71E0DBA46A0EA807603AB84F2DC6D28412A0D3AC813C9569E7FA5C25F
          EE7D72907774A35036CC76B140925D7DF2CBDFDF46E78A5E840C318142A34995
          7043BB02813131D24B11490F985EF6DA6316B3B2F48481CEEA404D7EC0010734
          CAD8EA946010048D2C432184CB23CA0A99B5D6C4714C4B4B0B0B162C68342BDA
          0635F8E8172B5CD755805C18D2DADAB6F645928AB79E703CD377DC815A6F192B
          6563F6AA4D534410643519029B9968499AF2C7AB6E1F3CF8B3D1C679DFA9956A
          C3B5D7DF08718A0D82BE026C21D042A0D3147CE5FA252A89F03D4E3BF3145A72
          DE1AE61A031AF10B2138F0C00399356B56A3CD44B95C268EE3465F96E6C64775
          A0D72BF457AC58C18B2FBE3806F02D25C640774F8F3B92733982F5E863120401
          279E700C54ABC82C7F46488B48DCC3766DB8245881542E4075EF5D0BE95C5559
          03A402C5C63535EF7BCDB295ABB8FFC10790C59C33479218A19C6F23B4A35585
          C4F90B49C2F88E764E7CEBD1836F9A411C052965A3FEB456AB352A7CEA1ABC6E
          82D41B1F09210882A0A1D91F7CF0C151C1A8FC0D025C60ACA173D5AA0665B83E
          ED278410BCFB5D6FC76FC991261132E3D8AC12AE71677DE7D4A732FB01AFBEFC
          32F7DEFFF830FA357D8FEBE7BFBC86DED53D042D254C9260758AF47D77B0A429
          D2F3B1498212025B2D73E04107F0961D676C903F337EFC780E3DF450CAE532F9
          7C1ECFF3A8D56AE47239D2346D00B839C2E9791E6118B262C50A962F5F3E06F0
          2D806F908AE52B3A37F8A57BEFB613BBECBA2BB656C1E8EC580EB2F671AEA52C
          0830D6E08521A931FCF6D757F7EB089BC504376D143970ED75D783F0B234790B
          526192044CE6A82B0F740AD622C380D34F39017F9040D6DA9C4121047BEFBD37
          3366CCA0ABABABC19C344736A5940DDEBCB93A5F4AC97DF7DD3706F02D22CAE7
          F1A79E1F00B2759B0CF95CC85B4F3812A4258DAB486BDC029AA6E6F75621AC40
          793E08C1C2FBEFE3F53756AEF12962A376A67BD5A2C5CB79EAE9E7085B8A686D
          4049971653AB6185C04AD7C85F2A4114F5B2FD8E3338F2F079833A95EBAA5452
          4A71F0C107BBFE30714C1004D46AB57EF59BCDF92AF57237A514AFBEFA6A6363
          8C017C332A7090BCBAE475E27430DDB896872DE0A2F34FA1D852745ADB5A8C4E
          1BCE5DC3A4B516255C4EE4A2254B78E0A12706D94862A3EE1CE0BAEB6F65F5F2
          15787EE0181C631C0BE42B370B424A8822BC30C04635F69BBB2773664E5DEBA7
          AE4D93CF9E3D9B59B366359A0D35B77C6B0EED7B9ED72F37BC5AAD6E716773D8
          012E064C2E685C5B8A31B1CDDAD53949088FCECE2EDE5CB67A00B8D70DBA593B
          EDC0DE736662AB3DE4731EA431D2CB527AA5EF6A4D7D8F6A92424B2B54227EFF
          876BD1C3E47059E0BA1B6E26288D278A347E18228CC1EA04E1BB84369B244E8B
          A72948C3A9F34FDAB0E736C8BFEDBEFBEE8DC04EBD0D5CBDE55B3D63B37ED5FF
          9F3186458B166DD1C08F1C3140D54125C4C886F3366A134ACA3D15DE58233968
          DD1BB1980B38FBBCB390A14F54AB21FC60C0B61810C40A43162EBC9FAE9EE1A9
          447FF2F925FCF5B12749B5C15888E308EB7959D99FD3A4CA5A94E7914635B6DF
          6106271E77C4267FEEF6DB6FDF687A649B46AEAC0D079EE7D1D9D9C9AACCA1DF
          364C94BAC6AECF5D1F8DD5E842D1D35BE3E5975FDEA8979F70C2D1B4B7959CB6
          B27D0D2F9B33C8AC10186B094BED2C7EF105AEB8FAAE61494B59B0E05EDE7C6D
          299E9F474A1F632C52FA600C364D31498A3602DF57E89E2E8E39FC30268F6FDB
          E4CFF53C8F430F3DB45FA0676D51CE7A70A8ABAB8BCECECE6D08E0835898A30E
          E8D28D30B9E3EE07863002867C6C00ECB2D30C0E3DE4404C1AE129D16782AD71
          5A19BC200055E4AAABAFDDE4DB4E345C75CD8D58E5A3FCC09136D24D5E234D41
          0A9748960B499304BF90E3A20BCF1BB6659B397326A552A99160B5B6675AD7E0
          699AF2ECB3CF6EB1D0FDB0035C2A5766D66C938D3A059EA5BC3EF8F063F4F446
          19ACD7E73E5D6E87A704679F750A2A899B2AEE07DF48B55A955CEB386EBFEB1E
          962C5DBD49F7FDC2CB4B78F8E14709F205D2D855E90821B15A03598049088490
          442B3BD963CF3D39F8A03D87D5BFDA75D75D1B4366D7665BD7959AE779BCF9E6
          9B5BAC59D0F0035C4A94CCFA4D67F922A30DE4527A60058B5F7995A56F2E5B5F
          F31B9747E27EF1D0430E66DCE4294471949925AAE93D323B5C08749210E6427A
          567472F915D76FD27D2FBCF70156AC5889108A24D588C0C362B1C640A0303AC1
          1837F58DB4C689279D482EF0D7D8A09BF26CF7DB6F3F5A5B5BD719A5945236EA
          39CBE532DDDDDDDB06C0F3B9009B462E35CA1A57ED8A404AD5D74453C8FEFD06
          8574FFEEA22419A12147CE3915EE4177AE58C9CBAF2CD900DAAE2F077DC7EDC7
          73D451F330490DA9EA7920CD6D9EAD336994C2007E2EE4D65BFFB2D1B7AC8DE5
          4F575C8B8E528C05A1247E18BAA2857AD65F9AA2249026F81D1DBCF3FC5387BD
          642E080276DA6927922419625E671FC0EB4C4B9224AC5CB9728B28BA6107F8F9
          E79D82EE7E8D20D078CA900B03A8C6289143DA1C52B5822C820EDD2811D58254
          45541A000158CF55A6F86156FF88FBA99AF6039B56EB98265554DE23893497FE
          F27AAA51BD355B73B9F160C7AF6B7751DF0E471DBD0FD276E2AB08610C921C82
          3C1895D54026889C4F4F6F2F61C7446EBFF33E162FDD304D56C7C41BCB57F1D7
          C71621FC3612156095224E6A686B40399F42281F65236CEF320E3A607766CE98
          3C8867B489E57E5272F0C107F79B16219A0885BA595A8F68D6E5D9679FDD2241
          9F6107F8259FFC20FB1F7618B5D79FC39316CF17B4B7E6882B5D0899224C0449
          05498C9F730502B6DA833531BEEF2143D7A6CDC4B11B6BADB251DD766D6EEC86
          9228AECF8AF07D1E7AE02192A4B60E37797039FDD413D961A79D88BABB904A62
          92081B47EEE4F13C975DA853641050AD4554CB656EBAE5CF1B68F7BA9FF72C7C
          98D7173D4FD0D2E2467A0FE122A4690A81CF3B2E38DB29971110DFF7E9E8E868
          F41C1F4C33D74D987A50A8B7B777AD1A7FAB01F8E4528ECB7EF1038E9B3F9F6A
          B98BF292E7E8EDE924F02542A628A95152634C84ADF5204CE4FAE27960D31A36
          AD81B02E31AFDE704498E669D6595EF82654F400CA0FF0F3459E7FEE0516DCFB
          D74180BDEEE374EAF8768E38E230886B28DF73D144291052B924AEAC598A1704
          48294895E0CA2BAF23351B765427A9E617BFBEDCA5BE5A3B6473026525268A99
          346922271D7FA44BBC1A01B3209FCF3363C68C7E15F7833166F5AC43A514AB57
          AFDE221395478426DC71BB495C7BE56FB8F5E6CBF9E8C73EC66187EE076937E9
          AAD78957BE86B255DA5B3D7C15237419292302E9AAE8253A0B3A6AD031D6E801
          55F472938F59638CEB11AE042689B8F4FF2E7743AEECFA2F4DFDC19E7FCE9988
          5C405AEB4549F07C85C06053EBDEC358D234415B4005DCFFF05F79FAF9451B74
          BF5DDD3D3CF4F083F8EDE3306992158DF495FF092B1136F30374957DF7D98BC9
          93C78FA093EEE6DD37275E0D6C2DD16CB6D447886F092665449ACA5920F414C7
          1C3A97A30E998BD69A871F7F99471E7D9CDB6EBB93BB162E64F5F2158E6EF214
          9E84446B37A25B0A6C9A62B546862142AAA6A9C6C3F4A57D1F1D672308F339EE
          B8EB6E6AB5886221D7A4C5D79D3E0B70D8817B317B975D78EEB1E7B1251F8987
          B1DA95B62967AA18A3416BB0B07AF52AEEBBFF21F69CB3D37ADFEF3537DECED2
          458B906D1391410161C4205A5CA2D31A4A29DEF3EEB30995EC779FC32DA55289
          7C3E4FAD565B23CED1DCC7B0FE6F5A6B162F5E4CA954DAE871E4A34683371F8D
          5280A71407EDBB331F7ACF195CF6CB6FF3C263B773ED95BFE40B9FFF04271CB9
          3F134A3E921A49F79B245DCB91240481C2245106C4E682E561D8804264C5018A
          5CA18537972FE7BF7EF4878DB2F1F361C8B9E79C01BA8614A69184E5EE593558
          1BE109541090D6627E77D93554A3F5CBCF48B5E6BAEB6F72F6BCB18EC397A2B1
          0745739B39ADD96EFA640ED87FEF11074EA9545A2B5D58CF3E6CB6C7972F5FBE
          51539A471DC0076AF3814AA4580839F6E883F9ECA73FC635575EC6B557FD893F
          FCFAC77CF49F3EC45E7BED415E421C676344300C77EF0593BA3A43A30D26ABC2
          F9E31FAF204E363C29480A78FF456712B4B4B88E8AA29EA6E0684291353312D2
          51A1D20A9E7DF2695E7F63FD9AE474F5F472DF030F224BEDC820244975360FC0
          36F6A192A2D176E3A003F66787E953461C386118327DFA748C310D5BBBD1266F
          801957D7EAD56A75B357F98C5CA8BE6E8BAD8B57F505FBEC398BD3E71FC9F7BE
          760977FDE572BEF68D2F532C04AE24CCD641C2B0759745B9F0B6140294C42BB4
          F0C8E34F73E3AD0F0DC90AAC4DC6B5B773C001FB93F4F6B8D68C59CAAC30F5CD
          9D75D2D506BF6D3C4B96BCC1DDF73EB05ECAE1CF77DCCB92975EC1CFE5816CE3
          B8F987202CD626F89E4018C7819F79E65B519B292BA25028346A33EBE648F318
          947ACD667D8A72BD33ED36A5C13744D303940A011FB8E854769A3983A4D28B1F
          8459AB069B39529BCEE5DA3846F83E5A298C50A820878D622EFDC52F36EABC28
          E643CE3BEF4C30092649F0328D668C75FE8375115D8324D12908C92F7F750DBD
          B5A41FD7BDC66A58CBA5BFFC6D56C12F117E803559845829301A9214A313AC48
          D86EFA544E3AFEA8215676F8C518D328426E98A4598067A0FD5FE7CD37379332
          6A005E5F0A635D61C109C71E0D591F12D970FA86A91DB19228CFC36A838EDD14
          0995CB73E3CDB7F2D063CF21071CB5EBDA960238FE9803696B6BC1A6091E029B
          2408E523FCA0CF66960A21242A5760E13D0B79F68557FB71DD7D3CA8C1026F76
          55B9F7FE8708DAC7B9F45883E3C08DC95E63904AE12981AD5538F9A463696F2B
          ACB1B27684403E6EDC383CCF6B68E5818C4A3FD6CA189224D9ECCDF2E5E8D1DF
          59A3990C0BE79D7D26F80A93268801CE545F01EE46825D09B4719538D6429CA4
          E45A3AA85662BEFFC39F647EC3BAF8F0FE36D3F6D3B763FFFDF7C7EA14630D02
          E912A11A1D69C15A01D627C817A9AC5AC19557DF36C4BBBBC63D575F7B27ABDF
          ECC2CBB562B4706DD9A4CA1C4E831406E91BB4755DAB4E3DF9C441EF71A42C96
          B6B6B68679D25C69DFACBD07827D7387EBE568D2DF8DAEC9C05EBBCE60AFBDF7
          262D97879FEAB2069B262EDAA83C3727125041C835D75CCB238F3F3D90135AA7
          16CF878A77BFFBED086388E3081184CEC64FD38689E2369401A94004DCB36001
          E54A3CE87258E0B6DBEF70095BA9457A59EFC424CEAA93685429D52ABDECB4EB
          1C8E3C64CF759C8FC3CFA4789EB74607ACE63F6FE934E9513227D36074957ABE
          B5007C4F71FA29A7411C6184E9732AED703C3417611452218CC0F302A22846F9
          3E5D5DDD7CF93FBE4E2D4DD6FD1EF46704F6DB6F1F264E9D8249B5A3F44453BF
          94AC40C0E08ADDBDF60E1EB8EF3E9E7AFAD5C178279E5BBC92050BEE47145A49
          538BEF8788D4B8F7442344EA9C4C93426F176F3BF30CF2A1EAB7A6EE541C395A
          2E0C4372B95C232DB65EA33910D4CD419FCD0DF8510170212452E6DD11DE04DF
          B79D7634ED532660E30889C21A83F233EA502603ED96F5FF3CA310D9FBD98CC2
          B3088C0810AAC02DD7DDC2438F3CB90E674DF4F1DC99ECB2D3548E39761ED818
          29B4039FD5EE3E9BCAF7B43178618EEECE37B9FEA63F0FE87EE5DEF7BE850FB2
          6CE94AF715A545EB2A566A64CE25A409EBE3C910B421970B78D739F3D7283219
          D84B65249832DFF71BEC497314B3FEB3CEAED4DB4B6C733CF8FAAF96CCB4539F
          EC3E673A47CDDB175B2E23529BA5DC6A1029C24FC06EDC9841A925524BC74648
          41A2354648521B208A13E8E9B5FCCB67BF4294D4598E34D3880381D8E7F4D69D
          E3B3CE381E252290069BC62E9A695230C64534A5C408419C6A6819CF15D75EEF
          FE3CC024BAE186BB303297F55E91A4B6029E469B14E1E531DA479800D35BE3C0
          03F767B7D93306B93F397462D630021C5C67D9E65ACD81BC78BDEA7E730F901D
          A56D239CBDEA7B1E17FFCB47519E8534260C3C74B506CA0323079BFAB4C9AE80
          C0E295DAB9E7B6DBF9ED6557650FD2CBB8E7B52C64B6CF0E99378F899327A3B3
          B944C20BB2BC91FE9D750502E5873CF7DC733CF2F84BFDCE88D75E5BCCC2BB17
          90D6AAF8611E9B5A840ADD3DC4CE342189B03AC12655DEFBBE7765F9F45BC0C6
          6D0AF234D76936275CD5DBBB8561B859C3F4A318E07D3B7FAF3D77678F3DF670
          1522498208426752D88C0B1E4E0ACC18924A0519E4F05ADAF8DCE7BF4277B9B7
          01C8F591A9130A1C7BFCD12829C9051EA6160DBA39AC753931D1AAD55C77FD8D
          FDBC8A271E7F8A375E7F9D209F470A858E1317A8D4063C85D5295E2EC4684D69
          FC244E7AEB115B561D3569E9660D5E2F78A8FFBDB5B575B3A7CCCAD1A9BD6998
          2B2DF9800F7EE4DDC4D16AD224460A894D0D581FC4C671AAF5C912839CB9A8B0
          88442164C8ABAFADE0431FFD7F6863599F005C9DA93FFF9CB7A1E32A52648513
          56F6BB6C6667A75A225AC671E53537538EFA06B9FCFAB77F22360615FAC43A75
          9DABAC028DABBB4483D4A4E5151C72C8FEB465E358B684D46DEA6673A4D9996C
          EE953273E6CCBF551E7CED32FFA4639839633B3C69D151D5516F420D7B432121
          04C25A74A2F1A4474E05FCF14F57F2EBDFDFBC5ED6507DCF1C7FF8BE4C9C3289
          4AAD829FCF0F7E9F42A0939496D6165E7AF2691E7CF82900962E5BC9830F3F06
          5211D5228C4E515E8054AEF789D11A2921AD9651C272C13BCE260CB7CCA4E124
          49A8542A6BF0DE031B014929098280091326FC6DB2286BC264401065EA38CE7C
          FB29A4B5329E27F0950FB574D8F95D6B2DDA1837ACD62F22BC1602AF8DCFFFFB
          D779E8AFAFACF7FBF89EE2ED679E8C2DAF725158DB9C0DE9C6BA986C9CB94152
          4BE1AA6B6F0160F1E225BCF0E262FC42CE815905600426B1C820EFC2F33685A4
          C2F41DB7E3D8A3B6DCE8BE6AB5DA0FE07553A46E86D45B292BA5F07D7F8B8CFC
          1EB536F840F07EF29FDECFA4F1ADA06384317822634136E5FDED9A9B0929B14A
          12576308F36815B0E88557F8D677BECFF215ABD6FBDDFFE943EF447A90A6AEF4
          4E667342854E1BE6970C7CA25A840D436EBBF52E96776BFE72C78324D59A1B47
          E2B948A8C92628D68301C2A620528E7BEB914C9ED0B1C59ED2EAD5AB1BB597CD
          E649BD395014458461489224E4F3F9CDEE606E35260AC076533A78C73BCF25ED
          ED768E8B1D0EFDBD6638DE5AEBF2C5A5228E0D8995C8D238AEB8F2067EF8C31F
          D3CCE8998661BEA609B2F30ED3D86BDF3DD1E572A377891459070121401BAC31
          A4A945F93EAFBFB1941FFDFC6A2EBFEA565025B4D16E0F1A83150AF030894B4F
          B4694C184ADE76E6892E55760B491CC74451D448B0AAB328F5642BCFF31AF598
          7BECB14783521C03F8105EFA273EFE01A66D3F191D95519B607F5B646324775F
          44B23E73CFE5131A09564A072E15A0ADE2AB5FFB3EF73FF45813752F076C943E
          514AF1B6534F846A375249886A8E4A542EC51569B02645853E46FA7457137EF0
          C3FFE1C9679FC32B75608574495256B8DB12AE93946705268DD86EC654F6DB77
          CF81BEF9667730E3386E68F0E6907D9AA6140A052A950A4110B0C30E3B6C191A
          93AD48A64E6CE7EF3EF01EE2AE5504D93483E1656FEC1A7FB3088C05BFA515E3
          875CF0CEBFE7E9E75EEDE7580D7536FCDD7BDF41CBF871D8384166F6A7CD8A2D
          8494A014424984D6082959BAE81592D4A0FC60CDA4A4CC7973FDC835E79C7D06
          933B5AD73C8C36A3AC5CB9B25135DF4C15366BF8344D9932650AA552A99FB21A
          037813D484E84B4BFDF847DFC35B76DF8DDE954BF1D4463A2DD66B9A335F0788
          6DBA0C088395CE5C4142620C36D7C1E2252B78E7FB3FC1CAAE9E757E4C7B5B1B
          871CB81F7AD532AC2F102A3B2D8475C5D4C6B8626763D00254A984F443D2D466
          29B669F6D3033CAC916893E28B94238E9CB7459F4A4F4F0F8B162D1AB48AA76E
          AAD46AAE1DC79C3973C86573909E78E289CD1AAEDF4A34B8C564A1F2D6961C17
          FFF3C7F07D48E34D0DFB8A413478B326B734F70DD71AF26DE378E8DE7B79FB85
          1FA512ADFD418541C039179EE7C2F569E2F25E02DF0D3031A9BB84C52A499AEA
          6C6C5FDCA011C96C7621A46B38640C5A27CCDA6337E6ED3F778B3E916AB5DA68
          0551674E9A9BE3D79B73964AA586F65EBC783177DF7DF798061F847105A11BC0
          BBF0FC13987FCADB313DAB37B2DADE36D176A2D1CACD5DA9BBFA69740B5222FC
          3C512DC56F1BCFEDB7DFCE073EF229AAB57490F7EE93138F9DC7F81D6763E298
          B45AC1F7946B561F4844A0B0D944C2300C3189467901789ED3F052809448E921
          85EFD21374CAFC134FA0BD106ED127D2D9D9496FB94CE0FB18DDD70CBF7F8D26
          CC983E9D993BEE08C0C30F3FC8EA559D5B7F55FDF0DAC50021120FB280B99002
          E9256E20EBC6189F4283483230678E5C23D2E865577DE8AC019B22D0986A8C10
          3EC26B215F9ACA6F7E79251FFFEC7FD21B65AE6AD67BD1DAFA66D14C1CDFCAB1
          C7CC85B81BE509B406E1178110F05C5F6F65D0264278064982320681EF029636
          41885E4CBC8CC02B137A9A779C73D62081A7E12FCE1E4AB4D63CF1C413E02984
          EF6115542A6582506149D1D95817290366CF790BB930C400BFF8C5958C9F327B
          0CE0EBE2C57FF19BEBB8EEEA3F114C98B0915CB86902841DF01999666FFC9305
          AB9140E887AEB74E4D9324028212FFFBDD1FF0E5AFFF2F894B4C6CAA43709F11
          F83E679C7A0C7EDE7366566ADD1068E167153EEE8448D30821ADABAF34867ADA
          ACB529C24604A126A9AD62EF3DDFC2AEB3A633901DB4182C9BA762BD6E7FFB61
          482D4DB012825C48A5D2EB7C04CFC35A41A9B58D1D769809C0238F3DC30DB72D
          64C759BB8F992843013B3550AED6F8F4673E4F6C05C6F336137BE0A635A43AC1
          E81411F858A329B6B742B1C8D7BFFA752EF9C277494CBD3C4C64C50ECE099EB7
          FF3E4C993615AB63676EA509C2D88C66944E930B1F6B3D0C01060FB444AA1C58
          07163FF031BD65CE38FD54425F0C72875E366076E429DBBBEEBA8B388EF195C4
          E804692C85429E5AB54A3E97435B4D4F4F37471D7524B9D0C758F8C6B77E40AD
          B79BDDDE327D0CE0832FACD353EFF9C0C574AE584171FC44D224DEACFC98CD5A
          21DBAC7EB4D253A6D05A42150B7CF36BDFE0E24BBE469C9ABECD99F907DB4F1E
          C7F1C71E9995FF1A8230807EB3DC459FC6CE2EA4E7A2F2D6396C959E1E8AE33B
          38EFEC53B7E873E8EDEDE5D9679FA5ADAD0D6B0D4156B256A9F4522CB6A0944F
          B9A7975DE6CC61C79DB677DAFBD1A7B9E1BAABD961E79D99D0511C03F8A03A54
          C08F2EBD9C3F5EF627FC8E0954128D90FE66B33B5DF54F8CF405BA5645E543A4
          1F52A9D6304610B48EE7BB5FFB0E1FFDC4178992B49F17218053DE7A2C9ED178
          26ABF4116E2271C3FE4761093022C410BA16D3894258DF71F1E52E0E3BEC6066
          4C1FBFC59E419AA6DC72CB2D0D47D293AEB7A314AE1380E7FBAC58DE4947FB44
          4E3AE914F71A6DF8F72F7D8DEE95AFB2EB9C5D514A0EEA8CFFCD037C596737DF
          FAC6B7093A2610D762ACD9CCB76E34A409AA90472830B51A48DCB816A1D0060A
          5367F0E3EF7D8F0BDFFBC946CF93FAF972D411873267975D3049824E127CDF1B
          E03F88418E2C81549234AEE1B71678E745E7A1E4967B648B162DE2C5175FA458
          2CBA61B0429026095208023F47AD9AE07921471D750CC58CE5B9FEC6DBB9EE9A
          6BC11FCFACD9B39062E8E8EFDF2CC0136DB9E8FD9F64D12B4B4005C8A0908DB1
          DE7C5131E17B085FA27B7B10B9008D71AEAA01EB05482F208D0C858933F8D3AF
          7FCF49F32FE28D657DD3C53A4A394E38E158D26A9530176274328072AF4FB410
          201536D578411EA50436AA3171EA648E3BF260B654E6499AA6DC76DB6D8D8EB2
          9E17104731852C1D58279AA89670D86147B24BD658F4E5C54BF9E0DFFF0361AE
          085A73C081076EF68992A30CE08303F696DBEFE1E61B6E252C8D27A944C830D7
          37FD6133FA00599DBA4B26F27D770F5261AD441B499C68AC9747754CE1AE3BEE
          E584D33EC8F5372D6CBCC70927BC955CA1485C293BD75259D035D035040952A6
          2E1536AD21458C34552431D4BA38EC900319D7D1D6B44E9B366F6743248E6316
          2E5C48777777A315B294023F7053268220472D4A983A6D06FB1F301721A052B3
          BCEF8317B3F48D95A85C91D6F15338FEE8B99B3D65468E2A700FF2EDDF5CBE8A
          8B3FF3456C9A2294EF129FEA33B83D6FB33D646CD61F4AA9469F136B4C76DBAE
          2D1BBE4F6A0C480FF2059E78FC29DEF5DE0FF31F5FFF2EA9311C73F89ECCD975
          770CAE77A1D109B9C0C7F724368940C7F8BEC20B3C4C1A110692A8DC8D6A69E1
          1F3FF41EFCCDB0A9070BA32F5AB4887BEFBDB7D11EC2F77D922476538F838095
          9D2B9932752AE79D7F3681AFB0C0E7BFF41D6EBBF956DA264C76DA3D4E78F4A9
          256B00AE9E433E62276FD39BDBD1A1BDFBCEB0585BDEF3A14BF8CD4F7F861A37
          19FC3CDA0A179F11C2D50E6C6CB06763EE4F18FA0D0AB2AE78A1DE8007932285
          447912524DAA35CA56D15127A79F710EBFF8E9D779F0F1E5FCCB273FC903F7DC
          8F28F8D8B40C4904B9BC3B226A80F2FB3CEBA49B59BBEEC23D77DFC0C4716D9B
          F78958CBA38F3ECA5D77DD4514458C1F3F9E72B90C80EFF918626AB55E666C3F
          8B134E984F7BA905805FFFE126DEFBDE8F81EF63B0784A114735E6EE37971BAE
          FA09134A85413FCB25AFD9E1789E6214027C4DB85F7EF51DBCF3A2F7930605A4
          0C89E2149487F073080B26AE6DC633681D00171261126C9C2294CB43B116D015
          3C5FD3BBAA97D93BCDE1DB3FF82A73F7DE9D4B7FFE5BAEBFE21A54C9A750CC11
          C7314994A2641ECF0B087D45D78A952053E69F743C9FFEE40737BBFDFDCA2BAF
          70C30D3750AD56F17D1FAD75A36BAC35964AADCCBC7907B1F73E0734EA42AFBD
          E96ECE3DE7035435744C9CC4AA559DE43C8517F8F42C7D9D53CE3F8F2B7EFE0D
          949259BF7381102E3A3A8C05C9A31FE04FBCF406E79C75114F3FFE0CB949D3A8
          D512940CD0698CCC1750CA23A9945D41EE6602B870C685CB3004EAE56758B281
          596093D8B585530A69C1088D9406DF06E85A8D54FA7CEA931FE61FFFE19DCC18
          17A2714DEEA592A82C35D75877742B2910523406CCB929E966C443DDD65A5E7C
          F145AEB9E61AB4D6B4B6B692A66923C7BBABAB8B344D39E1C4E3D97BAF7D5CC5
          92105C73D31D9C7FCE07A9690F596C252997093A3A887B7BC817F3680CF1B237
          F88F7FFB173E7DC987EB13DF1B3A7BB0AE58DB1CC0B5B14829F8E7CF7D936F7E
          F1ABE4A7ED48B592A0FC00CFCF13C711D6E8C634E5CD75DBA219E0D9D598F969
          0C688BF095039FD5AE9ED28291062F08D1912600E234C174AD62D73D67F1F56F
          FF3F8E3EFC108A6138E098DE72D2DDDDCD33CF3CC3C2850B1B3672BD9F49AD56
          2349123ADADB39E69863D869E79D1BAFFBE92F7FCF473FF21922EBA1721DA820
          4F5A8B3272C84D874EA32A9E2728C63D5C75F56F39EC8803FA39F12E2D7A1B06
          B86DD220871E73160F3FFA042ADF4214B9AC3A1B6B54A188896A2EF123F03171
          CCE6E09E0416896980BBD1B3351B682B8CC0EA18E1794809264DDD6F7812A125
          AA5020EDADE2791269236A5D4B0902C391471EC0673F7B31871F7468C3944788
          ACF4DAAE773F163B0CECF2B2E5CBB9F5CF7F66C992250441D0686E1F4511B55A
          8D96961676DB6D370E39F410023F4008419CC67CE3DBFFC5E7FEFDEB28AF15BF
          388E5AD580CC67F96A1A8975969CD5486551AB96B2FBAEB3B8E1E63F3171D2F8
          91795CA30BE0064BE47AEE091F6B2D471C7F01F7DCF9307EC734D22841852E59
          49A7BD58A1F13DB02A471A1B105B7A6B8A2635D4A492206B7995E59D88BED182
          12B04982897A281643CE3DE74C3E7DF147983D732A89056975667D35074686D0
          709BA8F8A2A8C623F7DFCB134F3E4DD7EA2EF22D458C3524A99BAA6CA562C79D
          77E484638FA3A5506C7CD463CFBFC9473EF905EEBEFE7AC22953B171421227C8
          3087D6A6CF51A6AF20D91A43E009E2379733FFED67F2CB9F7E8D7125BFF145AC
          A960AC45A9C2A6907CA30BE0D626585B03112245409458CEBFE8E35C77F3DDA4
          55416B4707511C53AB56C88FCB53ADF5206D8A311E6CC670FD462FB51C004657
          D48387404A4354EB4154BBC9B51439EDF453F9C657FF1FD3267634395D36C3F0
          DA515C77DAD6D7CE4E75CA9D0B16F0FC334FD3BB6A0542F8F85E4064122C8271
          E3C7336B975DD8779F7D28B5F495C775F556F8CF1FFC27FFF9C3AB59BD7825A2
          A31D2F08486A55829616744F0F3A2BC91B744924C844A357ADE01397FC335FFC
          D78FE0029F169D9691CA47081F363E796CF46970C7FD790D345C79C35D9C79EA
          051426CD20EAADA18DC02B14D0690DE12937E752C8CD1ACDDCE8A516B66FA890
          ED0B40886CB4A01F08824012F5F610F57413B61439F584C339EBED6FE38CD38E
          EF37B1B89EC1BBC6548875A9706B49D204632CAB56AD64C1DD77F1E28B2F91A6
          29BEAF10024AA5565A5BDBD87EE64E8C9F3099EDB6DB8ED6621FA5172529B7DF
          FD105FFCD2375870E79D78A56968BF80B2066D0C224DB3D8046B4FDC35312A08
          A0A70791265C73DD6F38F1D8039B6EB53E227C9B01787D49FAD263536D38FED4
          7773FB0DB7D0327E1AA91FA08D24A9F522C33C4A4A529D30CAE13D08C0EBBD4D
          C0331A3F0888D388B4DA4BAEA5809482A8524697BBC9B795D867B7DD39E3CC53
          B9F0C25319377E02F90DE8BC60ADA556ABD1BD7A35AFBFFE06AFBDB68437DE78
          835A1491CFE5C8E572B4B4B4B0E34E3B516A2F51C8E729145B686DE9DF0A6E75
          39E281879EE09B5FFF2137FFE52F50AD919B3011CFCB538E52301A110428CF43
          D76AA094639A8608E0489120954222B0D51A135B0B2C58703533B79F3C5C1EC5
          E8A609EBF4D18B4BDE64FE49E7F1FC8BAFE0154BA45A811FA0848F4821497A21
          548C7A9437015CD86C9C8910A838C6CF05182C491CE1FB1E02EB8A065491A852
          C3945783544CDA6E127BEFBD2BEFBCF05466CF99CD4E3B4C67D2B8D675AE631C
          4554A308A3B3A1AC52E02985521E4A497CCF1BD4AC29D7125E5EF43257DF703B
          7FBCEC061E79E851D082A0630252FA686348E20A615B2BC65A929E1EF07D64D6
          FBC40CD5CC51801718D29E323257C0978AA8B38B7DF6DE8D3FDFF82B3ADA5B86
          230B63F4F3E07579EA855738E3EC77F1FCD3CF931B379528B228AF05935AAC88
          B142330ABCCCB52BF0A6D56D70E8362BBF1302630D9EF2B0C29056AB78618815
          3904026353249634EA85EE55E049264DEE60C2B4C9CC3B783F8E3EE22076DA79
          6766EEB03D93C6B56CB4D5DA1BC36B6F2CE385175EE4AF8F3DCE1FFF74032F3F
          BF88CEAE1E903E32CC2345804620B4407A1E5AA5A834C6588B0C028494244982
          30065B77AA07B5C1AB20155204D848E30945DCDBC345179CC9A53FFD4AFF52F0
          8DA34E47BB06EFFFA5EE7FEC29CE3CFF7DBCBEE80DFC9689E8C4032F8721CA9A
          E003428C5A80CBA695755D6D45361A306B54A9351281CC056EFC890074363FC8
          C4AE278A0756A704D210476597946553149A62A14069421B33674C678F59B399
          347112D3B6DB8E711DE32914F2E48B793CE526BC19ADA954AB947B7A58BD7A15
          4B96BCC6A2575EE5AF4FBDC0D2D75FA3BBAB9B5AAA011F2FCC2394E70A309018
          2D91BE8F940169B586F035DA267D830BD214E179205C05D490E2472E30962A6C
          64F0FD101D5529E62CB75CFF1B0EDCDF95B56D427473EBD1E075B9F7D12739E3
          8C77F266672FF9C278929A065F60ACC644115E4B8BE3C4C175613566B3671CAE
          3FC0EB0B3E70CC48D3FDCA6CF449DDABCC92D19AC7EB0ADBD75F250B7362E35E
          90AE0A4866B381FAF67EC6AEDB7A5B6383D129881CA85640BB826E994DDB9006
          83CDFE1BC42CB643D896EB5C945E0842441ABA0606067C0C51A593CFFFEBC7F8
          B74B3ED208326DE45C9FC60B3CB61239709FDDB9F2CADF32FFA47359D5D549B1
          A5834AB542AEA39DD8F749E3188C41F9FEB0B755DEE41369AD93DAEC102C4873
          95BC6D0A37F581DCD6272AC83A8568618D56CA834FC9ACB7F49758B001568759
          AE8D6DBCC65A91B90ECD731C9BF99101A31CD71788CA87C434BEB7D14E590904
          B5A87753CD937EB2D5005C0207ED33872B2EFF19679C7C2195DA4A827C3BB54A
          05AB5DE85EE5F36E0AC428D1DEFDB4F48081595634A519589B3D0AD3A4D1938C
          306FA0A2D186D93114AE8D866958DD9976161BFABD0DD80061F37D9B4A64B389
          30EE3E0419F8C9EEABBEE9C28D9BA92E7C486A884060A5422A77125B1D93E8BE
          664EF5E6419B8A9B512F0DDD61E0C87973B9EADA5F21D33249B58C0C7248A5DC
          5813AD21717D00A51C2D5F4DB8469A4264976D02B7EDD38EA2DEF8D35DC24A84
          A95F8AFE7314B3DF17295624D8A69F18BD819775F6BCAC61650D2BA3ECBD12D7
          3AAE9EA76FEBEDA65576791BEFDC6B0922C45837C33A081549B50B2FA7D8638F
          DD1AE7CE70E4E56C15006FE4EE65777BC421FB71D5B5BF25E74BCCAA5548DFC7
          588B8E22441060B24EA7A38F4B1900D27E5539A6FFD50CAA06B858F3F785EE77
          897AABB70DBA2C88D8015AA47DEFD7CF4C1AD0376653A0633C8497778782D668
          ED26E69D74F2B1BCE3ECD31A26D4709DFCA35E9228EECB6DC8E484638EE4273F
          FB1E5EA98DB4DC0B16A4E7B99AC134CD9AE70CF716DB98B3473412B2FABF6513
          38B3D6CD42680406610DD22894F1B24BA18C40D6953D2982D48152D640554155
          40551026DEE00B6A585501597597889B009F994D3633914C002604935FB381E9
          7AAFA687C4431881149046BD4CDA6E12EF79F73BF03C35AC9CC75601703F0C9A
          DA0DF4C9B9671CCDE73FFF49676EA731420AD25A0D295516E695089965530BC0
          9A2C25B3797E7B9F6672CD7AFA780A99BD866A0F44D58CA9681AB2DA2F5BB7C9
          DBAF8FEE1E4882AF75230C4CFD1DA8F587FAFDFE57D3BCD90DBAFAB4B571F73F
          58CDA7906B9C44A2DF775CCFF4E5EC74ADE7B6DBA4C65E7BEEC6E96F3D7CD8A9
          BCAD86265CDB5AFDF8273FE7431FBE987C692AC686189B47E39AF4F8A1243655
          503144DD04F9101D2B940AB38EAE0188109B5A94E7634CE2FA03CA18742F3A29
          B3F34E53D1D6E3C5A75741BE85301F92A48EC2B2426583A224D6C4589522ACC6
          9814E10B242124A2810933C874E63EEB63188E652133BBD9669C4BB3366B3AD5
          ACECF7F9CDF4A5B0AED9A815B8615F266368EAEFAD75C67D5791CAB869144622
          BC009BDA2C012E1B636E25C25AA4AD2B1583110AE5FB98B81BA12BB4B778DC7A
          CBB5ECB5EB4EC37EE44AB6721102FEEE03EFE2AB5FFF0F2A9D4BF102851029D6
          03498A4E5CFF0E528DCCB7B8F45A0369A231DA2295422910244084F40CBE32C4
          BDAB89CBDD5C78DE79DCF9979BF9F3F57FE2EC77BD1D216B44CB5F46CA185F69
          24314A1A48637C843B7ABD1C22288096E8C438E772B36910BB5646A7EF6AD2B7
          32EBC518C7AE9B6D3EEFFE9F369024EED4B31A6A158404CF97083452F958AD50
          A942AA9CB3AB859F39AE037D05D3307994EF91967BF0C21C6957179FFAE427D8
          63CE4E23838FAD5D83D7F9528BE05DEFBF845FFDEC520A537624AA69ACE7213D
          7704EA3422686F252DF760128B972B62B445080F2124DA2428CFC712A3BB3A09
          7CC14F7FFA6DCE3B6B3E5E3D5067E1CAEB6FE54B5FFE0E7F5DF8100445721DE3
          4853EBEC4AE911278E5613818FD5EEB877AC89D9724A600DD3674DADEF4A2B34
          560A8436D83806CF552899342528B80A1DD3F93AA27D227E2E47524B102A870C
          7C6CAAD1499A1583CBFEBCB9B5486110566781A61C028BA975B1C30E53B97FC1
          754C6C2F0EEF57DE563478FDFB48013FFBD19738FD9C33A92C7D96C08BF1654C
          DAB5128BC50B8B245D3584DF8ACA95F0FD3C3635E8DE6E8CADE0A9189B74A23B
          5F65D29412D75C7929EF38BB0FDC16F004BCFDE4635970EB9FF8E6F7BEC0B4E9
          6DD456BF0EBA8A92099ED404BE424885346E78AB4564DA6B30C37730B0D93538
          F30D05F340D3C4D19472005DD97469ED26D70501C2586C92E20701B930402968
          6F6F25E95CC6E489252EF9D217D975C769C4CB1711FA019EF5B0914557628481
          A0D0E29A80D615A7B0203556688CB4186981C415AC2455FEEBDB5F1A6E706F43
          1ABC29345CFF1A5DBD1117BEFBA35C7FE50DE4264E4179219528C5F30AA4E50A
          780A84402A8549133C5FA002886A3DD85A9979871CC07F7FEFEBECBDCBCC353E
          A6B984CCE07AB67CE1CBDFE557BFBD82DE4A840A8A18E39A672A19A02D581183
          4A1934797FB09A526137C91EAF83DBF68B30CA75AEA3B0C299DB698A2715BEAF
          486ABD681D23A388FD0F3E80AF7CF58B1C7DF02EBCB97235EF7BFF3F71FD8DF7
          0345F2ADAD48A5A82435A4EFA32B15F09D1D5FE7EBB1A6F1DDA451D8EE6EE61E
          B02FB7DDFC5B4A797FF835DE3663A20C12E55ED1D5C3B917BE8FDBAEBB85DC94
          ED89CA099EDF0A411B491CA3B0189BE00502884856BE4669723B179C7F3ADFFE
          CA17C907FE106F1DD337CC55347E67D12B4BB9E40B5FE5A66BFECCAA55158AED
          1D54238DA77CC879C4266AA2D49AD891C68A9B610778E32DACD7174217836D2A
          831412612C264D5D9B661D9156CA202D6DC53C7FF7818BF8F2BF7F023F4B7C72
          73012C3FFDF9157CEA5FBE46F7CA15E43BC613A51A9B9935FD93654DD3140D50
          4905CFA65C7BF56F39EEF0FD463274B26DD8E083C99B2BBB38EDEC7773FFC207
          08DBA790A63E3612083F00ABB13A021F4C7905ED135AF9D2173FCD87DF73FE3A
          58EFFA74E535B5B1011E7BFA357EF3BB3FF2EB9FFD8AD757AC720C44E021F239
          C726E0F23B5C569F65CD399D76E4002E0442661D6DB108553723DCBC4E65C053
          1281A5B67C29321F70E43187F3AF9FFE18471EB60F12E73B0E4C1DFFCB5D8FF2
          9E0F7C92575E7889A0A303E105C4498250419651289A402E5C0BE9EA4ADE7AF4
          615C7DC5A5042363246FFB000758B4E40DDE76EE7B79F49E07294C9D45AD6C08
          7205AC8D808468C5EBCCD97F2FFEF77B5FE6B083E70E9B43F2E2E2D7B8E9963F
          F383FFF9294F3DBB082A168A79BC7C0B460B3C2F4792A458E4806283BE63DC6E
          A44FAAD0193B52CF59516EBE50D6E2D8990A02E9094C9C60A5456983670571B9
          0B9BC6ECB5EF5E7CF5AB9FE188C3E651CCAD3B5DE9F9175FE6A39FFC2C375F7B
          23E45A09DBC6A323436A1542F9D854396A310CC1688A6229375EFB7B0E3D685F
          86AD51C4DF1AC0EBF6F2E2D79771EEB91FE0DEBBEF018A502C415C86A4CC85EF
          7A07DFF9F6E79938AE446A0CDE30E4AF186B1D2D09AC58D5C5B32F2EE2473FFD
          03D75F7F032B5F7D0DBC9C03414B1B69EC580753F7234453687C53016EB3B231
          9185D74D0A56E3B516D151159BD4C8053E691A93AE58014A72E0FEFB73C1BBDE
          C945179E42476BBEDEC1792D00B4997F228862CD8F2FFD159FB8F85FD1A92457
          ECC0289F3475C1B342BE85DE9E32BADCC345171DCBFFFDF4BB7D235FC600BE69
          D25DAE70CFC287F9D6B77FCECBAFBD464B5171C1B96FE3E3FFF02E3C25476A91
          1B1269CBF2152BF8E51F6EE6EE7B1EE4AE3FDF4EA53746165BB056A04704E05E
          06F0A680011A91C6A840924615E85A4938613CC71F7E38679FFD364E9B7F04ED
          ADC581FEFB3A1C204B7374F3A6DB17F0C10F7D8A57162DA165FC146A55D74B26
          5021465B268CEFE0A9872FA3542A8E64A3A3BF2D80D7BF5C1467D3BF8420F0BD
          753AAB23213DB584CFFFFB7FF3ED6F7D07BFD48115BEEB4C8BEB82D567B2DA8D
          7A222AEB825BA7001BE0D329BE3404798FCAAAE5ECBBDFDEBCFDB45378CF3BDF
          C6C4716D6BA442D447C6AC1380D6ACC1D23CF6ECAB7CE65F3ECB0DD7DD4CFBA4
          49C491EB85DEBBAA932F7EE5AB7CF6D3EFC6641DCC468C37FE5B01B8D6DAE53B
          40C3741859E6726850D4F7D0D3CF2F66DF03E61319F0C3227AC401EE72ABA58D
          D1AB97336DE7ED59F897AB9931B9638DBDBDDEC01EF0CA3A8EEAAFAB259AAF7D
          F3477CEBEBDFA0568B50C272FA596FE77FBEFF4DDADB467CC6E7DF9606AFCF94
          E97B10CE991359BDC78634CCD9A023A3B1D4FD8F87AE9E5E0E3EEC5C9E79E659
          82B60E8C052D5496FB9131297A38019E2599D9149156682D862C7EE63E4AC5FC
          88B2B6D6C2FD0F3FC233CF3C4DA9B59553E69F849FF54D214B697693E686F5F8
          8C71434881FE153D65A065DBB24B9C21D90077A6995CA25F1FD5D700F770AEB3
          18F22FB414F21C7DCC213CF3F82340874B5C3275A3D7B82EB59BB8AF06FECD1A
          89C4C3F30A24713262F9F26280A37FD07EFB72D07EFBAE796FFD6A2D8755B994
          9BFFD26C3CADDEE654F78063B61E8574A9B4621DA01C39514A72D6DB8E0599BA
          2E4ED6C3262E9A88B62EB2BF9137D35C39D4487F856C0E67485C93084256ADAE
          8EF8C12DD758FFCD223D4301FC75C664B3C9F633B663FCB419A471CD4D3316B8
          CC46DF77001D6E0D9B85CA851418A34953BDAD2EED9B43017CD118EC369F4C9B
          3A855D76998D8D63A472E30831D6F55AD466643A03D83EC73B8E93CDAB57379F
          2C1A0AE04F8CC16EF34931F438F1F823218AB2B1DE16A3638C499B6B1186DD3E
          1642B8690D3A1DD272DFCAE5C9A100FED018EC36AF1C3A6F3F72850246A7586B
          9C8FAB144EA50F37AB532F6913186DA856A36D75591F1C0AE0F7007A0C769B4F
          76DD750EE3268F7739DCDA2085407A12F4C83C0621B2763F3A254ED26D714935
          B0702880770DFCC7311959993AB1C48107EE8B8EE36C509BABA621CBF81B6674
          BBCA27E1E8C89E9EF2B6689E2C64001B38D0DAFBD318EC369F0860FE094763E3
          08E57B586BD0D6208260DD450A1B03F0C6483341774F79C09D6C13B2067E07AE
          E26F7049CF633262D2BFE060EEDC7DC917423CE94AC7B0D6551D8D008B22C882
          5EA3AE31D2B0489AE177AD005F06DC3406C2CD277BECB6133BCE9A491245E4C2
          106B8C9BB36987B948397332ADB590A62449B2AD2DE54D197ED70A7080AF8FC1
          6EF3686F80D087230E3F84B8DCEDAA9A1B45C9C3CF159A7AB72F63069D49BF95
          CBA0B81D6C15EF04EE1E03E3E683FC7E071C8C94826AA5D73128999D3C1236BF
          C866E768BD4D11667767B85D2F80037C7E0C7A230DEB3ED09D7CE23CDAA74C03
          2B915ED07FDEE6709A2856A03CDF9D0E629B8A60FEFB50FF3014C06F05AE1803
          E288E8D035588BC9E3F27CF7EB9F82D52F13985E0AD238BA7053CCA04657DAAC
          DFA24909020DBA072F30ECB7D79CA67BDAAA1DCE2B803F6F28C001FE916D31C3
          70D480BC0E4707AE0BCE3E99CFFCDBA7117117B5E56F821D8EDC5DD100B0F404
          26AD515BB184BFFBD07BD97B8FD94DCEE756ABCD5767381D7A05D641179D03FC
          7E0C94236DAA64CD842CFCF64FB772E94F7EC57D4FBD40A2CD069B12FD1BFFF4
          153CA035B95072FEDB4FE39B5FFE0485B06F7CF648D9FC9B41CE052EDB148003
          FC10F8FB31308EC92893FF063EBCCE0DBF1E000F701CE351636B3A26A344EE04
          8EC795A76D32C001C6037F01F61C5BDB31D9C2F2387034B0727D7E797DA3092B
          81E38047C7D6774CB630B88F5B5F706F08C0C185418FCC34F9988CC9E696BB32
          3379D986BC6843E3C1DDC049C00FC6D67B4C36A3FC30B3B93B37F4856213B2CA
          CE067E0CB48DADFF988C907403EF07FEB0B16FB029193D7F0076659014C53119
          936190DF026FD914706F2AC001DE002ECCBCDAB104AD31190E59001C035C90E1
          6B93440C73E2FB91C0C5999D2EC79ED598ACA718E006E01BC01DC3F9C662842A
          3BB6C785F9DF061CC8A0036AC6E46F5C34703F70392EDCBE78243E446C86D2A5
          36601EB03F2E50B423300168C7F542F4C79EF5362B09AE57E06A6005AE29CFE3
          B8D60E0B7185EE232AFF7F00A3825D672995A0660000000049454E44AE426082}
        Stretch = True
        ExplicitLeft = 948
        ExplicitHeight = 31
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 527
    Width = 1284
    Height = 60
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitTop = 527
    ExplicitWidth = 1284
    inherited PanelBotoesBottom: TPanel
      Width = 1274
      ExplicitWidth = 1274
      inherited SpbAdicionar: TSpeedButton
        Left = 380
        OnClick = FrmFrameBotoes1SpbAdicionarClick
        ExplicitLeft = 100
      end
      inherited SpbEditar: TSpeedButton
        Left = 580
        OnClick = FrmFrameBotoes1SpbEditarClick
        ExplicitLeft = 300
      end
      inherited SpbCancelar: TSpeedButton
        Left = 680
        OnClick = FrmFrameBotoes1SpbCancelarClick
        ExplicitLeft = 400
      end
      inherited SpbSalvar: TSpeedButton
        Left = 480
        OnClick = FrmFrameBotoes1SpbSalvarClick
        ExplicitLeft = 194
        ExplicitTop = 1
        ExplicitHeight = 50
      end
      inherited SpbExcluir: TSpeedButton
        Left = 780
        OnClick = FrmFrameBotoes1SpbExcluirClick
        ExplicitLeft = 500
      end
      inherited SpbImprimir: TSpeedButton
        Left = 980
        Visible = True
        OnClick = FrmFrameBotoes1SpbImprimirClick
        ExplicitLeft = 700
      end
      inherited SpbSair: TSpeedButton
        Left = 1170
        OnClick = FrmFrameBotoes1SpbSairClick
        ExplicitLeft = 890
      end
      inherited SpbExtra: TSpeedButton
        Left = 1080
        ExplicitLeft = 800
      end
      inherited SpbProcurar: TSpeedButton
        Left = 880
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 600
      end
    end
    inherited DataSource: TDataSource
      Left = 755
    end
  end
  object dbeditPedidoProcurar: TIDBEditDialog
    Left = 639
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
    TabOrder = 3
    Text = ''
    Visible = False
    EditType = etAlphaNumeric
    EmptyText = 'Tecle F8'
    FocusColor = clBtnFace
    LabelCaption = 'Transportadora:'
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
    ButtonKeyClickBtn = 119
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
      'SELECT * FROM VIEW_PEDIDOSVENDAS'
      'WHERE'
      '%WHERE%'
      'ORDER BY DATA DESC')
    SearchDialogFieldList = <
      item
        FieldName = 'CODIGO'
        WhereSyntax = 'CODIGO'
        DisplayLabel = 'PEDIDO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'DATA'
        WhereSyntax = 'DATA'
        DisplayLabel = 'DATA:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'DATA_ENTREGA'
        WhereSyntax = 'DATA_ENTREGA'
        DisplayLabel = 'DATA ENTREGA:'
        DisplayWidth = 16
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'CLIENTE_NOME'
        WhereSyntax = 'CLIENTE_NOME'
        DisplayLabel = 'CLIENTE:'
        DisplayWidth = 30
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
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'QTDE_TOTAL'
        WhereSyntax = 'QTDE_TOTAL'
        DisplayLabel = 'QTDE TOTAL:'
        DisplayFormat = '###,##0'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'VLR_TOTAL'
        WhereSyntax = 'VLR_TOTAL'
        DisplayLabel = 'VALOR TOTAL:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 14
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'APROVADO'
        WhereSyntax = 'APROVADO'
        DisplayLabel = 'APROVADO'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'STATUS'
        WhereSyntax = 'STATUS'
        DisplayLabel = 'FATURADO'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'PRODUZINDO'
        WhereSyntax = 'PRODUZINDO'
        DisplayLabel = 'PRODUZINDO'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'ENDERECO'
        WhereSyntax = 'ENTREGA_ENDERECO'
        DisplayLabel = 'ENDERECO'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'NUMERO'
        WhereSyntax = 'ENTREGA_NUMERO'
        DisplayLabel = 'NUMERO'
        DisplayWidth = 6
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'BAIRRO'
        WhereSyntax = 'ENTREGA_BAIRRO'
        DisplayLabel = 'BAIRRO'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'CONTATOS'
        WhereSyntax = 'ENTREGA_CONTATOS'
        DisplayLabel = 'CONTATOS'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'EMAIL'
        WhereSyntax = 'ENTREGA_EMAIL'
        DisplayLabel = 'EMAIL'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end>
    SearchPresetList = <>
    DialogCaption = 'Pesquisa'
    DialogWidth = 965
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
  object dbProcurarProduto: TIDBEditDialog
    Left = 469
    Top = 8
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
    TabOrder = 4
    Text = ''
    Visible = False
    EditType = etAlphaNumeric
    EmptyText = 'Tecle F8'
    FocusColor = clBtnFace
    LabelCaption = '.'
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
    ButtonKeyClickBtn = 119
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
      'SELECT * FROM VIEW_REFERENCIAS'
      '%WHERE%'
      'ORDER BY DESCRICAO')
    SearchDialogFieldList = <
      item
        FieldName = 'DESCRICAO'
        WhereSyntax = 'DESCRICAO'
        DisplayLabel = 'DESCRI'#199#195'O:'
        DisplayWidth = 30
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'TIPO_PRODUTO'
        WhereSyntax = 'TIPO_PRODUTO'
        DisplayLabel = 'TIPO'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'REFERENCIA'
        WhereSyntax = 'REFERENCIA'
        DisplayLabel = 'REFER'#202'NCIA:'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scMixed
      end
      item
        FieldName = 'GRUPO_NOME'
        WhereSyntax = 'GRUPO_NOME'
        DisplayLabel = 'GRUPO:'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scMixed
      end
      item
        FieldName = 'PRC_CUSTO'
        WhereSyntax = 'PRC_CUSTO'
        DisplayLabel = 'PRE'#199'O CUSTO:'
        DisplayFormat = '###,##0.0000'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'VALOR_VENDA'
        WhereSyntax = 'VALOR_VENDA'
        DisplayLabel = 'PRE'#199'O VENDA:'
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
    DialogWidth = 900
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
  object CheckBox1: TCheckBox
    Left = 512
    Top = 248
    Width = 17
    Height = 1
    Caption = 'CheckBox1'
    TabOrder = 5
  end
  object db_Pedido: TFDQuery
    BeforePost = db_PedidoBeforePost
    AfterPost = db_PedidoAfterPost
    AfterDelete = db_PedidoAfterDelete
    AfterScroll = db_PedidoAfterScroll
    OnNewRecord = db_PedidoNewRecord
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM PEDIDOS'
      'WHERE'
      'CODIGO=:CODIGO'
      'ORDER BY CODIGO DESC')
    Left = 272
    Top = 40
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object db_PedidoEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object db_PedidoCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object db_PedidoCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
      OnChange = db_PedidoCLIENTEChange
    end
    object db_PedidoDATA: TSQLTimeStampField
      FieldName = 'DATA'
      OnChange = db_PedidoDATAChange
      EditMask = '99/99/9999'
    end
    object db_PedidoVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object db_PedidoTABELA: TIntegerField
      FieldName = 'TABELA'
    end
    object db_PedidoFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
    end
    object db_PedidoORDEMPRODUCAO: TIntegerField
      FieldName = 'ORDEMPRODUCAO'
    end
    object db_PedidoTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
    end
    object db_PedidoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object db_PedidoAPROVADO: TStringField
      FieldName = 'APROVADO'
      Size = 10
    end
    object db_PedidoPRODUZINDO: TStringField
      FieldName = 'PRODUZINDO'
      Size = 10
    end
    object db_PedidoSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      Size = 10
    end
    object db_PedidoDATA_FATURAMENTO: TSQLTimeStampField
      FieldName = 'DATA_FATURAMENTO'
      EditMask = '99/99/9999'
    end
    object db_PedidoDATA_ENTREGA: TSQLTimeStampField
      FieldName = 'DATA_ENTREGA'
      EditMask = '99/99/9999'
    end
    object db_PedidoPRIORIDADE: TStringField
      FieldName = 'PRIORIDADE'
      Size = 10
    end
    object db_PedidoORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 30
    end
    object db_PedidoCONFERENCIA: TIntegerField
      FieldName = 'CONFERENCIA'
    end
    object db_PedidoDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 30
    end
    object db_PedidoQTDE_DISPONIVEL: TIntegerField
      FieldName = 'QTDE_DISPONIVEL'
      DisplayFormat = '###,##0'
    end
    object db_PedidoQTDE_TOTAL: TIntegerField
      FieldName = 'QTDE_TOTAL'
      DisplayFormat = '###,##0'
    end
    object db_PedidoQTDE_PRODUTOS: TIntegerField
      FieldName = 'QTDE_PRODUTOS'
      DisplayFormat = '###,##0'
    end
    object db_PedidoQTDE_SERVICOS: TIntegerField
      FieldName = 'QTDE_SERVICOS'
      DisplayFormat = '###,##0'
    end
    object db_PedidoVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object db_PedidoVLR_SERVICOS: TFloatField
      FieldName = 'VLR_SERVICOS'
      DisplayFormat = '###,##0.00'
    end
    object db_PedidoVLR_PRODUTOS: TFloatField
      FieldName = 'VLR_PRODUTOS'
      DisplayFormat = '###,##0.00'
    end
    object db_PedidoVLR_IMPOSTOS: TFloatField
      FieldName = 'VLR_IMPOSTOS'
      DisplayFormat = '###,##0.00'
    end
    object db_PedidoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object db_PedidoFRETE: TStringField
      FieldName = 'FRETE'
      Size = 30
    end
    object db_PedidoIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      Size = 10
    end
    object db_PedidoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_PedidoRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 200
    end
    object db_PedidoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 30
    end
    object db_PedidoITENS_IMPORTADO: TStringField
      FieldName = 'ITENS_IMPORTADO'
      Size = 10
    end
    object db_PedidoENTREGAPARCIAL: TStringField
      FieldName = 'ENTREGAPARCIAL'
      Size = 10
    end
    object db_PedidoENTREGAPARCIALPERCENTUAL: TFloatField
      FieldName = 'ENTREGAPARCIALPERCENTUAL'
      DisplayFormat = '###,##0.00%'
      EditFormat = '###,##0.00'
    end
    object db_PedidoTRANSPORTEVOLUMES: TIntegerField
      FieldName = 'TRANSPORTEVOLUMES'
    end
    object db_PedidoSTATUSPERCENTUAL: TFloatField
      FieldName = 'STATUSPERCENTUAL'
    end
    object db_PedidoFATURAMENTO_AGENDADO: TSQLTimeStampField
      FieldName = 'FATURAMENTO_AGENDADO'
      EditMask = '99/99/9999'
    end
    object db_PedidoLOTE: TIntegerField
      FieldName = 'LOTE'
    end
    object db_PedidoTIPOPRIODIDADE: TStringField
      FieldName = 'TIPOPRIODIDADE'
      Size = 30
    end
    object db_PedidoQTDE_TERCEIRIZADOS: TIntegerField
      FieldName = 'QTDE_TERCEIRIZADOS'
    end
    object db_PedidoVLR_TERCEIRIZADOS: TFloatField
      FieldName = 'VLR_TERCEIRIZADOS'
    end
    object db_PedidoPROBLEMARELATADO: TStringField
      FieldName = 'PROBLEMARELATADO'
      Size = 5000
    end
    object db_PedidoPROBLEMASOLUCAO: TStringField
      FieldName = 'PROBLEMASOLUCAO'
      Size = 5000
    end
    object db_PedidoTIPODOCUMENTO: TIntegerField
      FieldName = 'TIPODOCUMENTO'
    end
    object db_PedidoIDANDAMENTO: TIntegerField
      FieldName = 'IDANDAMENTO'
    end
    object db_PedidoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object db_PedidoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object db_PedidoENTREGA_ENDERECO: TStringField
      FieldName = 'ENTREGA_ENDERECO'
      Origin = 'ENTREGA_ENDERECO'
      Size = 200
    end
    object db_PedidoENTREGA_NUMERO: TStringField
      FieldName = 'ENTREGA_NUMERO'
      Origin = 'ENTREGA_NUMERO'
      Size = 200
    end
    object db_PedidoENTREGA_BAIRRO: TStringField
      FieldName = 'ENTREGA_BAIRRO'
      Origin = 'ENTREGA_BAIRRO'
      Size = 200
    end
    object db_PedidoENTREGA_CONTATOS: TStringField
      FieldName = 'ENTREGA_CONTATOS'
      Origin = 'ENTREGA_CONTATOS'
      Size = 200
    end
    object db_PedidoENTREGA_EMAIL: TStringField
      FieldName = 'ENTREGA_EMAIL'
      Origin = 'ENTREGA_EMAIL'
      Size = 200
    end
  end
  object db_PedidoItens: TFDQuery
    AutoCalcFields = False
    BeforeInsert = db_PedidoItensBeforeInsert
    BeforePost = db_PedidoItensBeforePost
    AfterPost = db_PedidoItensAfterPost
    AfterDelete = db_PedidoItensAfterDelete
    MasterSource = ds_Pedido
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AssignedValues = [uvUpdateMode, uvCountUpdatedRecords]
    UpdateOptions.UpdateMode = upWhereAll
    UpdateOptions.CountUpdatedRecords = False
    SQL.Strings = (
      
        'SELECT E.*,P.codigo_barra,P.tipo_produto FROM PEDIDOS_ITENS E, C' +
        'AD_PRODUTOS P '
      'WHERE'
      'e.CODIGO=:CODIGO'
      'and'
      'e.referencia=p.referencia')
    Left = 344
    Top = 40
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        FDDataType = dtInt64
        ParamType = ptInput
      end>
    object db_PedidoItensIDX: TIntegerField
      FieldName = 'IDX'
      ReadOnly = True
      Required = True
    end
    object db_PedidoItensEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object db_PedidoItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object db_PedidoItensDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object db_PedidoItensCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object db_PedidoItensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object db_PedidoItensTABELA: TIntegerField
      FieldName = 'TABELA'
    end
    object db_PedidoItensFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
    end
    object db_PedidoItensTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
    end
    object db_PedidoItensTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object db_PedidoItensAPROVADO: TStringField
      FieldName = 'APROVADO'
      Required = True
      Size = 10
    end
    object db_PedidoItensORDEMPRODUCAO: TIntegerField
      FieldName = 'ORDEMPRODUCAO'
      Required = True
    end
    object db_PedidoItensPRODUZINDO: TStringField
      FieldName = 'PRODUZINDO'
      Size = 10
    end
    object db_PedidoItensSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      Required = True
      Size = 10
    end
    object db_PedidoItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Required = True
      OnChange = db_PedidoItensREFERENCIAChange
      Size = 30
    end
    object db_PedidoItensREFERENCIATECIDO: TStringField
      FieldName = 'REFERENCIATECIDO'
      Size = 30
    end
    object db_PedidoItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object db_PedidoItensUND: TStringField
      FieldName = 'UND'
      Size = 30
    end
    object db_PedidoItensQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object db_PedidoItensVLR_UNIT: TFloatField
      FieldName = 'VLR_UNIT'
      DisplayFormat = '###,##0.00'
    end
    object db_PedidoItensDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object db_PedidoItensVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object db_PedidoItensVLR_IMPOSTOS: TFloatField
      FieldName = 'VLR_IMPOSTOS'
      DisplayFormat = '###,##0.00'
    end
    object db_PedidoItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object db_PedidoItensQTDE_LIBERADA: TIntegerField
      FieldName = 'QTDE_LIBERADA'
    end
    object db_PedidoItensQTDE_FATURADA: TIntegerField
      FieldName = 'QTDE_FATURADA'
    end
    object db_PedidoItensQTDE_CANCELADA: TIntegerField
      FieldName = 'QTDE_CANCELADA'
    end
    object db_PedidoItensGRADE_TAMANHOS: TIntegerField
      FieldName = 'GRADE_TAMANHOS'
    end
    object db_PedidoItensTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
    end
    object db_PedidoItensCODIGO_BARRA: TStringField
      FieldName = 'CODIGO_BARRA'
    end
  end
  object ds_Pedido: TDataSource
    AutoEdit = False
    DataSet = db_Pedido
    Left = 136
    Top = 40
  end
  object ds_PedidoItens: TDataSource
    DataSet = db_PedidoItens
    Left = 208
    Top = 40
  end
  object SP_CalculaPedido: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPPEDIDOS_CALCULA'
    Left = 104
    Top = 320
    ParamData = <
      item
        Position = 1
        Name = 'NEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'NCODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object frx_dsPedido: TfrxDBDataset
    Description = 'Pedido'
    UserName = 'frx_dsPedido'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DATA=DATA'
      'CLIENTE=CLIENTE'
      'VENDEDOR=VENDEDOR'
      'TABELA=TABELA'
      'FORMAPAGTO=FORMAPAGTO'
      'TRANSPORTADORA=TRANSPORTADORA'
      'TIPO=TIPO'
      'DATA_FATURAMENTO=DATA_FATURAMENTO'
      'DATA_ENTREGA=DATA_ENTREGA'
      'PRAZO_ENTREGA=PRAZO_ENTREGA'
      'USUARIO=USUARIO'
      'VEICULO=VEICULO'
      'NUMERO_SERIE=NUMERO_SERIE'
      'TRANSP_VOLUMES=TRANSP_VOLUMES'
      'PRIORIDADE=PRIORIDADE'
      'PRIORIDADE_USER=PRIORIDADE_USER'
      'PRIORIDADE_USER_DATE=PRIORIDADE_USER_DATE'
      'PRIORIDADE_USER_HORA=PRIORIDADE_USER_HORA'
      'PRIORIDADE_STATUS=PRIORIDADE_STATUS'
      'COMISSAO=COMISSAO'
      'ORIGEM=ORIGEM'
      'CONFERENCIA=CONFERENCIA'
      'DOCUMENTO=DOCUMENTO'
      'HORA=HORA'
      'QTDE_DISPONIVEL=QTDE_DISPONIVEL'
      'QTDE_TOTAL=QTDE_TOTAL'
      'QTDE_PRODUTOS=QTDE_PRODUTOS'
      'QTDE_SERVICOS=QTDE_SERVICOS'
      'VLR_DESCONTO=VLR_DESCONTO'
      'VLR_SERVICOS=VLR_SERVICOS'
      'VLR_PRODUTOS=VLR_PRODUTOS'
      'VLR_IMPOSTOS=VLR_IMPOSTOS'
      'VLR_TOTAL=VLR_TOTAL'
      'FRETE=FRETE'
      'IMPRESSO=IMPRESSO'
      'SITUACAO_TRIBUTARIA=SITUACAO_TRIBUTARIA'
      'CLASSIF_FISCAL=CLASSIF_FISCAL'
      'OBSERVACAO=OBSERVACAO'
      'RESPONSAVEL=RESPONSAVEL'
      'APROV_DATA=APROV_DATA'
      'APROV_HORA=APROV_HORA'
      'APROVADO=APROVADO'
      'STATUS=STATUS'
      'STATUS_PERCENTUAL=STATUS_PERCENTUAL'
      'PLACA=PLACA'
      'PROBLEMA=PROBLEMA'
      'SOLUCAO=SOLUCAO'
      'VLR_TOTAL_IMPOSTOS=VLR_TOTAL_IMPOSTOS'
      'ORDEM_PRODUCAO=ORDEM_PRODUCAO'
      'ORDEM_CORTE=ORDEM_CORTE'
      'ITENS_IMPORTADO=ITENS_IMPORTADO')
    DataSet = db_Pedido
    BCDToCurrency = False
    Left = 48
    Top = 392
  end
  object frx_dsPedidosItens: TfrxDBDataset
    Description = 'PedidoItens'
    UserName = 'frx_dsPedidosItens'
    CloseDataSource = False
    DataSet = db_PedidoItensUnt
    BCDToCurrency = False
    Left = 248
    Top = 400
  end
  object frx_dsPedidoGrade: TfrxDBDataset
    UserName = 'frx_dsPedidoGrade'
    CloseDataSource = False
    DataSet = db_PedidoGrade
    BCDToCurrency = False
    Left = 592
    Top = 400
  end
  object db_PedidoGrade: TFDQuery
    MasterSource = ds_PedidoItens
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_PEDIDOS_VENDIDOS'
      'WHERE'
      'CODIGO=:CODIGO'
      'ORDER BY  REFERENCIA, COR, ORDEM_GRADE')
    Left = 208
    Top = 272
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        FDDataType = dtInt64
        ParamType = ptInput
      end>
  end
  object FrxPedidoVendaGrade: TfrxReport
    Version = '6.2.11'
    DataSet = frx_PedidoVenda
    DataSetName = 'FrxPedidoVenda'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoFullScreen]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41000.913359259300000000
    ReportOptions.Name = 'Pedido de Venda'
    ReportOptions.LastChange = 43598.950521423610000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'procedure DBCross1OnPrintCell(Memo: TfrxMemoView; RowIndex, Colu' +
        'mnIndex, CellIndex: Integer; RowValues, ColumnValues, Value: Var' +
        'iant);'
      'begin'
      '  if (Value = null) or (Value = 0) then Memo.Text := '#39#39';'
      '  if Value > 0 then'
      '  begin                  '
      '    Memo.Color := clSilver;       '
      '  end;  '
      '  end;'
      ''
      'Begin'
      '        '
      'end.')
    Left = 592
    Top = 352
    Datasets = <
      item
        DataSet = FrmPrincipal.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = frx_dsPedido
        DataSetName = 'frx_dsPedido'
      end
      item
        DataSet = frx_dsPedidoGrade
        DataSetName = 'frx_dsPedidoGrade'
      end
      item
        DataSet = frx_dsPedidosItens
        DataSetName = 'frx_dsPedidosItens'
      end
      item
        DataSet = frx_PedidoVenda
        DataSetName = 'FrxPedidoVenda'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 210.000000000000000000
      PaperHeight = 148.000000000000000000
      PaperSize = 11
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      DataSet = frx_dsPedido
      DataSetName = 'frx_dsPedido'
      Frame.Typ = []
      TitleBeforeHeader = False
      object ReportSummary1: TfrxReportSummary
        Description = 'Totais'
        FillType = ftBrush
        Frame.Typ = []
        Height = 124.724490000000000000
        Top = 457.323130000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 505.472480000000000000
          Top = 61.188930000000030000
          Width = 200.307050000000000000
          Height = 56.881880000000000000
          Frame.Typ = []
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 509.102362200000000000
          Top = 91.645688820000040000
          Width = 96.377952760000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE:')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 509.102362200000000000
          Top = 104.543326610000000000
          Width = 96.377952760000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DO PEDIDO:')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Top = 98.763760000000050000
          Width = 464.606370000000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              'CLIENTE: ___________________________    |    REPRESENTANTE: ____' +
              '_______________________')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Top = 63.866110000000050000
          Width = 415.228510000000000000
          Height = 12.094488190000000000
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              'FORMA DE PAGAMENTO: [FrxPedidoVenda."FORMA_PAGTO_NOME"] ([FrxPed' +
              'idoVenda."TIPOPAGAMENTO"])')
          ParentFont = False
        end
        object Line21: TfrxLineView
          AllowVectorExport = True
          Left = 1.889763779527560000
          Width = 714.330708661417000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 609.637795280000000000
          Top = 104.543326610000000000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'VLR_TOTAL'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'R$ ###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxPedidoVenda."VLR_TOTAL"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 609.637795280000000000
          Top = 91.645688820000040000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'QTDE_TOTAL'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxPedidoVenda."QTDE_TOTAL"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 509.102362200000000000
          Top = 78.267780000000010000
          Width = 96.377952760000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'DESCONTO:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 609.637795280000000000
          Top = 78.267780000000010000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'VLR_DESCONTO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'R$ ###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxPedidoVenda."VLR_DESCONTO"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 609.637795280000000000
          Top = 65.370130000000010000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'VLR_PRODUTOS'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'R$ ###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxPedidoVenda."VLR_PRODUTOS"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 509.102362200000000000
          Top = 65.370130000000010000
          Width = 96.377952760000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR BRUTO:')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 718.110700000000000000
          Height = 51.677180000000000000
          AutoWidth = True
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'OBSERVA'#199#195'O:'
            '[frx_dsPedido."OBSERVACAO"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 122.944960000000000000
          Width = 718.110700000000000000
          Height = -0.000007320000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object PageFooter1: TfrxPageFooter
        Description = 'Rodap'#233' do relat'#243'rio'
        FillType = ftBrush
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 604.724800000000000000
        Width = 718.110700000000000000
        object Memo50: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 0.755905510000047700
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DataField = 'SRV_EMPRESA'
          DataSet = FrmPrincipal.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_EMPRESA"]')
          ParentFont = False
        end
        object Line18: TfrxLineView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo53: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 0.755905510000047700
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DataField = 'SRV_SITE'
          DataSet = FrmPrincipal.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_SITE"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Description = 'Pedido de Venda'
        FillType = ftBrush
        Frame.Typ = []
        Height = 219.212588660000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Width = 718.102660000000000000
          Height = 68.031496060000000000
          Fill.BackColor = 15724527
          Frame.Color = clWhite
          Frame.Typ = []
        end
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 68.779530000000000000
          Width = 718.000000000000000000
          Height = 142.000000000000000000
          Frame.Typ = []
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779527560000000000
          Top = 99.905511809999990000
          Width = 132.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'NOME/RAZ'#195'O SOCIAL:')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 460.000000000000000000
          Top = 99.905511809999990000
          Width = 58.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ/CPF:')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 588.000000000000000000
          Top = 99.905511809999990000
          Width = 123.000000000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'I.E/RG:')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779527560000000000
          Top = 111.779530000000000000
          Width = 228.315090000000000000
          Height = 11.338582680000000000
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."CLIENTE"] - [FrxPedidoVenda."CLIENTE_NOME"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 460.000000000000000000
          Top = 111.779530000000000000
          Width = 50.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CNPJ'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."CNPJ"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 588.000000000000000000
          Top = 111.779530000000000000
          Width = 29.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'IE'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."IE"]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 5.000000000000000000
          Top = 126.362204720000000000
          Width = 59.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 438.842610000000000000
          Top = 126.362204720000000000
          Width = 43.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'BAIRRO:')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 649.740260000000000000
          Top = 126.362204720000000000
          Width = 26.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779527560000000000
          Top = 138.779530000000000000
          Width = 54.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'ENDERECO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."ENDERECO"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 438.842610000000000000
          Top = 138.779530000000000000
          Width = 37.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'BAIRRO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."BAIRRO"]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 649.740260000000000000
          Top = 138.779530000000000000
          Width = 20.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CEP'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."CEP"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779527560000000000
          Top = 153.574803150000000000
          Width = 65.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'MUNICIPIO:')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779527560000000000
          Top = 165.779530000000000000
          Width = 69.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'NOMECIDADE'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."NOMECIDADE"]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 178.527520000000000000
          Top = 165.779530000000000000
          Width = 14.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'UF'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."UF"]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 178.527520000000000000
          Top = 153.574803150000000000
          Width = 20.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 217.307050000000000000
          Top = 153.574803150000000000
          Width = 33.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FONE:')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 304.409400000000000000
          Top = 153.574803150000000000
          Width = 32.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FAX:')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 304.409400000000000000
          Top = 165.921259840000000000
          Width = 18.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'FAX'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."FAX"]')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 392.732220000000000000
          Top = 165.669291340000000000
          Width = 45.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CONTATO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."CONTATO"]')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 392.732220000000000000
          Top = 153.574803150000000000
          Width = 54.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CONTATO:')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779527560000000000
          Top = 193.779530000000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'VENDEDOR_NOME'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."VENDEDOR_NOME"]')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779527560000000000
          Top = 180.409448820000000000
          Width = 98.118120000000000000
          Height = 12.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'REPRESENTANTE:')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 533.606370000000000000
          Top = 153.574803150000000000
          Width = 102.440940000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'EMAIL DO CLIENTE:')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 533.606370000000000000
          Top = 165.669291340000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'EMAIL'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."EMAIL"]')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 493.968770000000000000
          Top = 69.779530000000000000
          Width = 93.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DATA DO PEDIDO:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 493.968770000000000000
          Top = 84.031496060000000000
          Width = 23.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DATA'
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsPedido."DATA"]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 603.968770000000000000
          Top = 84.031496060000000000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DATA_ENTREGA'
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsPedido."DATA_ENTREGA"]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 603.968770000000000000
          Top = 69.779530000000000000
          Width = 106.897650000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PREV. ENTREGA:')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779527560000000000
          Top = 69.669291340000000000
          Width = 47.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PEDIDO:')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779527560000000000
          Top = 84.031496060000000000
          Width = 39.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CODIGO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."CODIGO"]')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          Left = 235.000000000000000000
          Top = 193.779530000000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'TRANSPORTADORA_NOME'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."TRANSPORTADORA_NOME"]')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Left = 235.000000000000000000
          Top = 180.409448820000000000
          Width = 101.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'TRANSPORTADORA:')
          ParentFont = False
        end
        object Line22: TfrxLineView
          AllowVectorExport = True
          Left = 2.889763780000000000
          Top = 98.370130000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line25: TfrxLineView
          AllowVectorExport = True
          Left = 4.779527560000000000
          Top = 127.385900000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line26: TfrxLineView
          AllowVectorExport = True
          Left = 2.889763780000000000
          Top = 152.063080000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line27: TfrxLineView
          AllowVectorExport = True
          Left = 2.889763780000000000
          Top = 180.299320000000000000
          Width = 714.331170000000000000
          Height = -0.000007320000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line28: TfrxLineView
          AllowVectorExport = True
          Left = 64.692950000000000000
          Top = 69.921259840000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line29: TfrxLineView
          AllowVectorExport = True
          Left = 598.165740000000000000
          Top = 68.913420000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line30: TfrxLineView
          AllowVectorExport = True
          Left = 454.543600000000000000
          Top = 99.149660000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line31: TfrxLineView
          AllowVectorExport = True
          Left = 583.047620000000000000
          Top = 99.149660000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line32: TfrxLineView
          AllowVectorExport = True
          Left = 434.189240000000000000
          Top = 127.606370000000000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line33: TfrxLineView
          AllowVectorExport = True
          Left = 646.520100000000000000
          Top = 127.606370000000000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line34: TfrxLineView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line35: TfrxLineView
          AllowVectorExport = True
          Left = 299.582870000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line36: TfrxLineView
          AllowVectorExport = True
          Left = 212.653680000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line37: TfrxLineView
          AllowVectorExport = True
          Left = 231.551330000000000000
          Top = 182.299320000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line38: TfrxLineView
          AllowVectorExport = True
          Left = 530.134200000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line39: TfrxLineView
          AllowVectorExport = True
          Left = 171.078850000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line40: TfrxLineView
          AllowVectorExport = True
          Left = 488.559370000000000000
          Top = 68.913420000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape7: TfrxShapeView
          AllowVectorExport = True
          Left = 0.645671730000000000
          Top = 1.000000000000000000
          Width = 718.000000000000000000
          Height = 66.519675280000000000
          Frame.Typ = []
        end
        object Memo109: TfrxMemoView
          AllowVectorExport = True
          Left = 510.457020000000000000
          Top = 1.779530000000000000
          Width = 204.606060000000000000
          Height = 22.322820000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'PEDIDO DE VENDA')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          AllowVectorExport = True
          Left = 510.992128430000000000
          Top = 26.346459130000000000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          AllowVectorExport = True
          Left = 510.992128430000000000
          Top = 41.086616610000000000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          AllowVectorExport = True
          Left = 576.251936770000000000
          Top = 41.086616610000000000
          Width = 124.724441180000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
          WordWrap = False
        end
        object Memo113: TfrxMemoView
          AllowVectorExport = True
          Left = 3.645517950000000000
          Top = 1.559060000000000000
          Width = 192.755905510000000000
          Height = 15.118112680000000000
          AutoWidth = True
          DataField = 'EMP_NOME'
          DataSet = FrmPrincipal.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_NOME"]')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          AllowVectorExport = True
          Left = 3.645517950000000000
          Top = 17.456710000000000000
          Width = 192.755905510000000000
          Height = 15.118112680000000000
          AutoWidth = True
          DataField = 'EMP_FONE'
          DataSet = FrmPrincipal.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_FONE"]')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          AllowVectorExport = True
          Left = 575.354701730000000000
          Top = 26.346459130000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] | [Time]')
          ParentFont = False
          WordWrap = False
        end
        object Line41: TfrxLineView
          AllowVectorExport = True
          Left = 470.307391730000000000
          Height = 67.275590550000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Left = 3.425201730000000000
          Top = 49.133889999999990000
          Width = 192.755905510000000000
          Height = 15.118112680000000000
          AutoWidth = True
          DataField = 'EMP_SITE'
          DataSet = FrmPrincipal.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_SITE"]')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Left = 216.433210000000000000
          Top = 165.921259840000000000
          Width = 19.440940000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DDD'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxPedidoVenda."DDD"]')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Left = 241.575140000000000000
          Top = 165.921259840000000000
          Width = 49.677180000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'FONE'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."FONE"]')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          AllowVectorExport = True
          Left = 372.267780000000000000
          Top = 125.724490000000000000
          Width = 47.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#218'MERO')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          AllowVectorExport = True
          Left = 372.267780000000000000
          Top = 138.196930950000000000
          Width = 37.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'NUMERO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."NUMERO"]')
          ParentFont = False
        end
        object Line42: TfrxLineView
          AllowVectorExport = True
          Left = 367.614410000000000000
          Top = 126.102442760000000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object BarCode2: TfrxBarCodeView
          AllowVectorExport = True
          Left = 265.567100000000000000
          Top = 75.590600000000000000
          Width = 129.000000000000000000
          Height = 18.897650000000000000
          BarType = bcCode39
          DataField = 'CODIGO'
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          Expression = '<FrxPedidoVenda."CODIGO">'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          TestLine = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo121: TfrxMemoView
          AllowVectorExport = True
          Left = 69.370130000000000000
          Top = 68.031540000000010000
          Width = 47.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#218'MERO:')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          AllowVectorExport = True
          Left = 69.370130000000000000
          Top = 82.393744720000000000
          Width = 39.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DOCUMENTO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."DOCUMENTO"]')
          ParentFont = False
        end
        object Line43: TfrxLineView
          AllowVectorExport = True
          Left = 140.283552440000000000
          Top = 69.921259840000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object ReportTitle1: TfrxReportTitle
        Description = 'Grade de Produtos'
        FillType = ftBrush
        Frame.Typ = []
        Height = 136.063080000000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        object DBCross1: TfrxDBCrossView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 343.000000000000000000
          Height = 76.000000000000000000
          DownThenAcross = False
          RowLevels = 4
          OnPrintCell = 'DBCross1OnPrintCell'
          CellFields.Strings = (
            'QUANTIDADE')
          ColumnFields.Strings = (
            'TAMANHO')
          DataSet = frx_dsPedidoGrade
          DataSetName = 'frx_dsPedidoGrade'
          RowFields.Strings = (
            'REFERENCIA'
            'DESCRICAO'
            'VALOR_UNIT'
            'COR')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F5669657720416C6C6F77566563746F
            724578706F72743D225472756522204C6566743D223233332C37373935332220
            546F703D223330322C35363731222057696474683D2235382220486569676874
            3D22313922205265737472696374696F6E733D2232342220416C6C6F77457870
            72657373696F6E733D2246616C73652220466F6E742E436861727365743D2230
            2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31
            312220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E74
            2E5374796C653D223022204672616D652E5479703D2231352220476170583D22
            332220476170593D2233222048416C69676E3D22686152696768742220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D2230222F3E3C546672784D656D6F5669657720416C6C6F7756
            6563746F724578706F72743D225472756522204C6566743D223231312220546F
            703D223536222057696474683D22353022204865696768743D22313822205265
            737472696374696F6E733D2232342220416C6C6F7745787072657373696F6E73
            3D2246616C73652220446973706C6179466F726D61742E4B696E643D22666B4E
            756D657269632220466F6E742E436861727365743D22302220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E
            616D653D22417269616C204E6172726F772220466F6E742E5374796C653D2230
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222048416C69676E3D22686152696768742220506172656E74466F6E743D22
            46616C7365222056416C69676E3D22766143656E7465722220546578743D2222
            2F3E3C546672784D656D6F5669657720416C6C6F77566563746F724578706F72
            743D225472756522204C6566743D223139322220546F703D2236362220576964
            74683D22383022204865696768743D22323222205265737472696374696F6E73
            3D2232342220416C6C6F7745787072657373696F6E733D2246616C7365222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            48416C69676E3D2268615269676874222056416C69676E3D22766143656E7465
            722220546578743D2230222F3E3C546672784D656D6F5669657720416C6C6F77
            566563746F724578706F72743D225472756522204C6566743D223332302C3333
            3835392220546F703D223337332C3234343238222057696474683D2238302220
            4865696768743D22323222205265737472696374696F6E733D2232342220416C
            6C6F7745787072657373696F6E733D2246616C736522204672616D652E547970
            3D2231352220476170583D22332220476170593D2233222048416C69676E3D22
            68615269676874222056416C69676E3D22766143656E7465722220546578743D
            2230222F3E3C546672784D656D6F5669657720416C6C6F77566563746F724578
            706F72743D225472756522204C6566743D223233332C37373935332220546F70
            3D223332312C35363731222057696474683D22353822204865696768743D2231
            3922205265737472696374696F6E733D2232342220416C6C6F77457870726573
            73696F6E733D2246616C73652220466F6E742E436861727365743D2230222046
            6F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31312220
            466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E5374
            796C653D223122204672616D652E5479703D223135222046696C6C2E4261636B
            436F6C6F723D2231353732343532372220476170583D22332220476170593D22
            33222048416C69676E3D22686152696768742220506172656E74466F6E743D22
            46616C7365222056416C69676E3D22766143656E7465722220546578743D2230
            222F3E3C546672784D656D6F5669657720416C6C6F77566563746F724578706F
            72743D225472756522204C6566743D223239312C37373935332220546F703D22
            3330322C35363731222057696474683D22353522204865696768743D22313922
            205265737472696374696F6E733D2232342220416C6C6F774578707265737369
            6F6E733D2246616C73652220446973706C6179466F726D61742E4B696E643D22
            666B4E756D657269632220466F6E742E436861727365743D22302220466F6E74
            2E436F6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E
            742E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C65
            3D223122204672616D652E5479703D223135222046696C6C2E4261636B436F6C
            6F723D2231353732343532372220476170583D22332220476170593D22332220
            48416C69676E3D22686152696768742220506172656E74466F6E743D2246616C
            7365222056416C69676E3D22766143656E7465722220546578743D2230222F3E
            3C546672784D656D6F5669657720416C6C6F77566563746F724578706F72743D
            225472756522204C6566743D223236312220546F703D22353622205769647468
            3D22353022204865696768743D22313822205265737472696374696F6E733D22
            32342220416C6C6F7745787072657373696F6E733D2246616C73652220446973
            706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E74
            2E436861727365743D22302220466F6E742E436F6C6F723D22302220466F6E74
            2E4865696768743D222D392220466F6E742E4E616D653D22417269616C204E61
            72726F772220466F6E742E5374796C653D223122204672616D652E5479703D22
            3135222046696C6C2E4261636B436F6C6F723D22313537323435323722204761
            70583D22332220476170593D2233222048416C69676E3D226861526967687422
            20506172656E74466F6E743D2246616C7365222056416C69676E3D2276614365
            6E7465722220546578743D22222F3E3C546672784D656D6F5669657720416C6C
            6F77566563746F724578706F72743D225472756522204C6566743D223430302C
            33333835392220546F703D223337332C3234343238222057696474683D223831
            22204865696768743D22323222205265737472696374696F6E733D2232342220
            416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222048416C69676E
            3D2268615269676874222056416C69676E3D22766143656E7465722220546578
            743D2230222F3E3C546672784D656D6F5669657720416C6C6F77566563746F72
            4578706F72743D225472756522204C6566743D22302220546F703D2230222057
            696474683D223022204865696768743D223022205265737472696374696F6E73
            3D22382220416C6C6F7745787072657373696F6E733D2246616C736522204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222048
            416C69676E3D2268615269676874222056416C69676E3D22766143656E746572
            2220546578743D22222F3E3C546672784D656D6F5669657720416C6C6F775665
            63746F724578706F72743D225472756522204C6566743D223239312C37373935
            332220546F703D223332312C35363731222057696474683D2235352220486569
            6768743D22313922205265737472696374696F6E733D2232342220416C6C6F77
            45787072657373696F6E733D2246616C73652220466F6E742E43686172736574
            3D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D
            222D31312220466F6E742E4E616D653D22417269616C204E6172726F77222046
            6F6E742E5374796C653D223122204672616D652E5479703D223135222046696C
            6C2E4261636B436F6C6F723D2231353732343532372220476170583D22332220
            476170593D2233222048416C69676E3D22686152696768742220506172656E74
            466F6E743D2246616C7365222056416C69676E3D22766143656E746572222054
            6578743D2230222F3E3C2F63656C6C6D656D6F733E3C63656C6C686561646572
            6D656D6F733E3C546672784D656D6F5669657720416C6C6F77566563746F7245
            78706F72743D225472756522204C6566743D22302220546F703D223022205769
            6474683D223022204865696768743D223022205265737472696374696F6E733D
            22382220416C6C6F7745787072657373696F6E733D2246616C73652220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322205641
            6C69676E3D22766143656E7465722220546578743D225155414E544944414445
            222F3E3C546672784D656D6F5669657720416C6C6F77566563746F724578706F
            72743D225472756522204C6566743D22302220546F703D223022205769647468
            3D223022204865696768743D223022205265737472696374696F6E733D223822
            20416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E
            5479703D2231352220476170583D22332220476170593D2233222056416C6967
            6E3D22766143656E7465722220546578743D225155414E544944414445222F3E
            3C546672784D656D6F5669657720416C6C6F77566563746F724578706F72743D
            225472756522204C6566743D22302220546F703D2230222057696474683D2230
            22204865696768743D223022205265737472696374696F6E733D22382220416C
            6C6F7745787072657373696F6E733D2246616C736522204672616D652E547970
            3D2231352220476170583D22332220476170593D2233222056416C69676E3D22
            766143656E7465722220546578743D225155414E544944414445222F3E3C5466
            72784D656D6F5669657720416C6C6F77566563746F724578706F72743D225472
            756522204C6566743D22302220546F703D2230222057696474683D2230222048
            65696768743D223022205265737472696374696F6E733D22382220416C6C6F77
            45787072657373696F6E733D2246616C736522204672616D652E5479703D2231
            352220476170583D22332220476170593D2233222056416C69676E3D22766143
            656E7465722220546578743D225155414E544944414445222F3E3C546672784D
            656D6F5669657720416C6C6F77566563746F724578706F72743D225472756522
            204C6566743D22302220546F703D2230222057696474683D2230222048656967
            68743D223022205265737472696374696F6E733D22382220416C6C6F77457870
            72657373696F6E733D2246616C736522204672616D652E5479703D2231352220
            476170583D22332220476170593D2233222056416C69676E3D22766143656E74
            65722220546578743D225155414E544944414445222F3E3C2F63656C6C686561
            6465726D656D6F733E3C636F6C756D6E6D656D6F733E3C546672784D656D6F56
            69657720416C6C6F77566563746F724578706F72743D225472756522204C6566
            743D223233332C37373935332220546F703D223238332C353637312220576964
            74683D22353822204865696768743D22313922205265737472696374696F6E73
            3D2232342220416C6C6F7745787072657373696F6E733D2246616C7365222046
            6F6E742E436861727365743D22302220466F6E742E436F6C6F723D2230222046
            6F6E742E4865696768743D222D31312220466F6E742E4E616D653D2241726961
            6C204E6172726F772220466F6E742E5374796C653D223122204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222048416C69676E
            3D22686152696768742220506172656E74466F6E743D2246616C736522205641
            6C69676E3D22766143656E7465722220546578743D22222F3E3C2F636F6C756D
            6E6D656D6F733E3C636F6C756D6E746F74616C6D656D6F733E3C546672784D65
            6D6F5669657720416C6C6F77566563746F724578706F72743D22547275652220
            4C6566743D223239312C37373935332220546F703D223238332C353637312220
            57696474683D22353522204865696768743D2231392220526573747269637469
            6F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C736522
            20466F6E742E436861727365743D22302220466F6E742E436F6C6F723D223022
            20466F6E742E4865696768743D222D31312220466F6E742E4E616D653D224172
            69616C204E6172726F772220466F6E742E5374796C653D223122204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222048416C69
            676E3D22686152696768742220506172656E74466F6E743D2246616C73652220
            56416C69676E3D22766143656E7465722220546578743D22535542544F54414C
            222F3E3C2F636F6C756D6E746F74616C6D656D6F733E3C636F726E65726D656D
            6F733E3C546672784D656D6F5669657720416C6C6F77566563746F724578706F
            72743D225472756522204C6566743D22332C37373935332220546F703D223236
            342C35363731222057696474683D2232333022204865696768743D2231392220
            5265737472696374696F6E733D22382220416C6C6F7745787072657373696F6E
            733D2246616C73652220466F6E742E436861727365743D22302220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E74
            2E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D
            223122204672616D652E5479703D2231352220476170583D2233222047617059
            3D2233222048416C69676E3D22686143656E7465722220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D2250524F4455544F5320222F3E3C546672784D656D6F5669657720416C6C6F
            77566563746F724578706F72743D225472756522204C6566743D223233332C37
            373935332220546F703D223236342C35363731222057696474683D2231313322
            204865696768743D22313922205265737472696374696F6E733D22382220416C
            6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43686172
            7365743D22302220466F6E742E436F6C6F723D22302220466F6E742E48656967
            68743D222D31312220466F6E742E4E616D653D22417269616C204E6172726F77
            2220466F6E742E5374796C653D223122204672616D652E5479703D2231352220
            476170583D22332220476170593D2233222048416C69676E3D22686143656E74
            65722220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D2254414D414E484F222F3E3C546672784D65
            6D6F5669657720416C6C6F77566563746F724578706F72743D22547275652220
            4C6566743D22302220546F703D2230222057696474683D223022204865696768
            743D223022205265737472696374696F6E733D2238222056697369626C653D22
            46616C73652220416C6C6F7745787072657373696F6E733D2246616C73652220
            4672616D652E5479703D2231352220476170583D22332220476170593D223322
            2048416C69676E3D22686143656E746572222056416C69676E3D22766143656E
            7465722220546578743D22222F3E3C546672784D656D6F5669657720416C6C6F
            77566563746F724578706F72743D225472756522204C6566743D22332C373739
            35332220546F703D223238332C35363731222057696474683D22363822204865
            696768743D22313922205265737472696374696F6E733D22382220416C6C6F77
            45787072657373696F6E733D2246616C73652220466F6E742E43686172736574
            3D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D
            222D31312220466F6E742E4E616D653D22417269616C204E6172726F77222046
            6F6E742E5374796C653D223122204672616D652E5479703D2231352220476170
            583D22332220476170593D22332220506172656E74466F6E743D2246616C7365
            222056416C69676E3D22766143656E7465722220546578743D225245464552C3
            8A4E4349413A222F3E3C546672784D656D6F5669657720416C6C6F7756656374
            6F724578706F72743D225472756522204C6566743D2237312C37373935332220
            546F703D223238332C35363731222057696474683D2236342220486569676874
            3D22313922205265737472696374696F6E733D22382220416C6C6F7745787072
            657373696F6E733D2246616C73652220466F6E742E436861727365743D223022
            20466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3131
            2220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E
            5374796C653D223122204672616D652E5479703D2231352220476170583D2233
            2220476170593D22332220506172656E74466F6E743D2246616C736522205641
            6C69676E3D22766143656E7465722220546578743D22444553435249C387C383
            4F3A222F3E3C546672784D656D6F5669657720416C6C6F77566563746F724578
            706F72743D225472756522204C6566743D223133352C37373935332220546F70
            3D223238332C35363731222057696474683D22363722204865696768743D2231
            3922205265737472696374696F6E733D22382220416C6C6F7745787072657373
            696F6E733D2246616C73652220466F6E742E436861727365743D22302220466F
            6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3131222046
            6F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E537479
            6C653D223122204672616D652E5479703D2231352220476170583D2233222047
            6170593D2233222048416C69676E3D22686152696768742220506172656E7446
            6F6E743D2246616C7365222056416C69676E3D22766143656E74657222205465
            78743D22505245C3874F3A222F3E3C546672784D656D6F5669657720416C6C6F
            77566563746F724578706F72743D225472756522204C6566743D223230322C37
            373935332220546F703D223238332C35363731222057696474683D2233312220
            4865696768743D22313922205265737472696374696F6E733D22382220416C6C
            6F7745787072657373696F6E733D2246616C73652220466F6E742E4368617273
            65743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768
            743D222D31312220466F6E742E4E616D653D22417269616C204E6172726F7722
            20466F6E742E5374796C653D223122204672616D652E5479703D223135222047
            6170583D22332220476170593D22332220506172656E74466F6E743D2246616C
            7365222056416C69676E3D22766143656E7465722220546578743D22434F523A
            222F3E3C2F636F726E65726D656D6F733E3C726F776D656D6F733E3C54667278
            4D656D6F5669657720416C6C6F77566563746F724578706F72743D2254727565
            22204C6566743D22332C37373935332220546F703D223330322C353637312220
            57696474683D22363822204865696768743D2231392220526573747269637469
            6F6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C7365
            2220466F6E742E436861727365743D22302220466F6E742E436F6C6F723D2230
            2220466F6E742E4865696768743D222D31312220466F6E742E4E616D653D2241
            7269616C204E6172726F772220466F6E742E5374796C653D223022204672616D
            652E5479703D2231352220476170583D22332220476170593D22332220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D22222F3E3C546672784D656D6F5669657720416C6C6F775665
            63746F724578706F72743D225472756522204C6566743D2237312C3737393533
            2220546F703D223330322C35363731222057696474683D223634222048656967
            68743D22313922205265737472696374696F6E733D2232342220416C6C6F7745
            787072657373696F6E733D2246616C73652220466F6E742E436861727365743D
            22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D22
            2D31312220466F6E742E4E616D653D22417269616C204E6172726F772220466F
            6E742E5374796C653D223022204672616D652E5479703D223135222047617058
            3D22332220476170593D22332220506172656E74466F6E743D2246616C736522
            2056416C69676E3D22766143656E7465722220546578743D22222F3E3C546672
            784D656D6F5669657720416C6C6F77566563746F724578706F72743D22547275
            6522204C6566743D223133352C37373935332220546F703D223330322C353637
            31222057696474683D22363722204865696768743D2231392220526573747269
            6374696F6E733D2232342220416C6C6F7745787072657373696F6E733D224661
            6C73652220446973706C6179466F726D61742E466F726D61745374723D222323
            232C2323302E30302220446973706C6179466F726D61742E4B696E643D22666B
            4E756D657269632220466F6E742E436861727365743D22302220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E742E
            4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D22
            3022204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D22686152696768742220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            222F3E3C546672784D656D6F5669657720416C6C6F77566563746F724578706F
            72743D225472756522204C6566743D223230322C37373935332220546F703D22
            3330322C35363731222057696474683D22333122204865696768743D22313922
            205265737472696374696F6E733D2232342220416C6C6F774578707265737369
            6F6E733D2246616C73652220466F6E742E436861727365743D22302220466F6E
            742E436F6C6F723D22302220466F6E742E4865696768743D222D31312220466F
            6E742E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C
            653D223022204672616D652E5479703D2231352220476170583D223322204761
            70593D22332220506172656E74466F6E743D2246616C7365222056416C69676E
            3D22766143656E7465722220546578743D22222F3E3C2F726F776D656D6F733E
            3C726F77746F74616C6D656D6F733E3C546672784D656D6F5669657720416C6C
            6F77566563746F724578706F72743D225472756522204C6566743D22332C3737
            3935332220546F703D223332312C35363731222057696474683D223233302220
            4865696768743D22313922205265737472696374696F6E733D22382220416C6C
            6F7745787072657373696F6E733D2246616C73652220466F6E742E4368617273
            65743D22302220466F6E742E436F6C6F723D22302220466F6E742E4865696768
            743D222D31312220466F6E742E4E616D653D22417269616C204E6172726F7722
            20466F6E742E5374796C653D223122204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D2268615269676874
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D22546F74616C203D262336323B222F3E3C546672
            784D656D6F5669657720416C6C6F77566563746F724578706F72743D22547275
            6522204C6566743D2239392220546F703D223636222057696474683D22393322
            204865696768743D22323222205265737472696374696F6E733D223822205669
            7369626C653D2246616C73652220416C6C6F7745787072657373696F6E733D22
            46616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C
            6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E61
            6D653D22417269616C2220466F6E742E5374796C653D223122204672616D652E
            5479703D2231352220476170583D22332220476170593D2233222048416C6967
            6E3D22686143656E7465722220506172656E74466F6E743D2246616C73652220
            56416C69676E3D22766143656E7465722220546578743D22546F74616C222F3E
            3C546672784D656D6F5669657720416C6C6F77566563746F724578706F72743D
            225472756522204C6566743D223139322220546F703D22363622205769647468
            3D22393722204865696768743D22323222205265737472696374696F6E733D22
            38222056697369626C653D2246616C73652220416C6C6F774578707265737369
            6F6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E
            742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F
            6E742E4E616D653D22417269616C2220466F6E742E5374796C653D2231222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            48416C69676E3D22686143656E7465722220506172656E74466F6E743D224661
            6C7365222056416C69676E3D22766143656E7465722220546578743D22546F74
            616C222F3E3C546672784D656D6F5669657720416C6C6F77566563746F724578
            706F72743D225472756522204C6566743D223137342220546F703D2235362220
            57696474683D22333722204865696768743D2231382220526573747269637469
            6F6E733D2238222056697369626C653D2246616C73652220416C6C6F77457870
            72657373696F6E733D2246616C73652220466F6E742E436861727365743D2230
            2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D39
            2220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E
            5374796C653D223122204672616D652E5479703D2231352220476170583D2233
            2220476170593D2233222048416C69676E3D2268615269676874222050617265
            6E74466F6E743D2246616C7365222056416C69676E3D22766143656E74657222
            20546578743D22537562746F74616C222F3E3C2F726F77746F74616C6D656D6F
            733E3C63656C6C66756E6374696F6E733E3C6974656D20312F3E3C2F63656C6C
            66756E6374696F6E733E3C636F6C756D6E736F72743E3C6974656D20322F3E3C
            2F636F6C756D6E736F72743E3C726F77736F72743E3C6974656D20302F3E3C69
            74656D20322F3E3C6974656D20322F3E3C6974656D20322F3E3C2F726F77736F
            72743E3C2F63726F73733E}
        end
      end
    end
  end
  object db_PedidoVenda: TFDQuery
    MasterSource = ds_Pedido
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_PEDIDOSVENDAS'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 312
    Top = 272
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        FDDataType = dtInt64
        ParamType = ptInput
        Size = 4
      end>
  end
  object frx_PedidoVenda: TfrxDBDataset
    Description = 'db_PedidoVenda'
    UserName = 'FrxPedidoVenda'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DOCUMENTO=DOCUMENTO'
      'TITULO=TITULO'
      'DATA=DATA'
      'DATA_FATURAMENTO=DATA_FATURAMENTO'
      'DATA_ENTREGA=DATA_ENTREGA'
      'PRAZO_ENTREGA=PRAZO_ENTREGA'
      'TIPO=TIPO'
      'CLIENTE=CLIENTE'
      'CLIENTE_NOME=CLIENTE_NOME'
      'CNPJ=CNPJ'
      'IE=IE'
      'ENDERECO=ENDERECO'
      'COMPLEMENTO=COMPLEMENTO'
      'NUMERO=NUMERO'
      'BAIRRO=BAIRRO'
      'CEP=CEP'
      'NOMECIDADE=NOMECIDADE'
      'UF=UF'
      'DDD=DDD'
      'FONE=FONE'
      'CELULAR=CELULAR'
      'VOIP=VOIP'
      'FAX=FAX'
      'CONTATO=CONTATO'
      'EMAIL=EMAIL'
      'VENDEDOR=VENDEDOR'
      'VENDEDOR_NOME=VENDEDOR_NOME'
      'TRANSPORTADORA=TRANSPORTADORA'
      'TRANSPORTADORA_NOME=TRANSPORTADORA_NOME'
      'FORMA_PAGTO=FORMA_PAGTO'
      'FORMA_PAGTO_NOME=FORMA_PAGTO_NOME'
      'TIPOPAGAMENTO=TIPOPAGAMENTO'
      'VLR_DESCONTO=VLR_DESCONTO'
      'QTDE_TOTAL=QTDE_TOTAL'
      'VLR_TOTAL=VLR_TOTAL'
      'VLR_PRODUTOS=VLR_PRODUTOS'
      'APROVADO=APROVADO'
      'STATUS=STATUS'
      'ITENS_IMPORTADO=ITENS_IMPORTADO'
      'STATUS_PERCENTUAL=STATUS_PERCENTUAL'
      'IMPRESSO=IMPRESSO'
      'RESPONSAVEL=RESPONSAVEL'
      'ENTREGAPARCIAL=ENTREGAPARCIAL'
      'VALORPARCIAL=VALORPARCIAL'
      'TABELA=TABELA'
      'APROVADO_1=APROVADO_1')
    DataSet = db_PedidoVenda
    BCDToCurrency = False
    Left = 128
    Top = 392
  end
  object db_TabelaReferencia: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM TPRECO_REFERENCIAS'
      'WHERE'
      'CODIGO=:CODIGO'
      ''
      'ORDER BY REFERENCIA')
    Left = 508
    Top = 238
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object db_TabelaReferenciaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_TabelaReferenciaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Required = True
      Size = 30
    end
    object db_TabelaReferenciaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object db_TabelaReferenciaPRC_VENDA: TFloatField
      FieldName = 'PRC_VENDA'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_TabelaReferenciaDTPRECOALTERADO: TSQLTimeStampField
      FieldName = 'DTPRECOALTERADO'
      Origin = 'DTPRECOALTERADO'
      DisplayFormat = '99/99/9999'
    end
  end
  object dbAndamentoPedido: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_PEDIDOANDAMENTO'
      'ORDER BY NOME')
    Left = 712
    Top = 232
  end
  object dsAndamentoPedido: TDataSource
    DataSet = dbAndamentoPedido
    Left = 712
    Top = 184
  end
  object dsTipoDocumento: TDataSource
    DataSet = dbTipoDocumento
    Left = 944
    Top = 80
  end
  object dbTipoDocumento: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_TIPO_DOCUMENTO'
      'ORDER BY NOME')
    Left = 944
    Top = 136
  end
  object FrxPedidoVendaSemGrade1: TfrxReport
    Version = '6.2.11'
    DotMatrixReport = True
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoFullScreen]
    PreviewOptions.DoubleBuffered = False
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PreviewOptions.ZoomMode = zmPageWidth
    PrintOptions.Collate = False
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.PrintPages = ppEven
    ReportOptions.CreateDate = 43624.427339745400000000
    ReportOptions.LastChange = 43630.738724930550000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 256
    Top = 352
    Datasets = <
      item
        DataSet = FrmPrincipal.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = frx_dsPedido
        DataSetName = 'frx_dsPedido'
      end
      item
        DataSet = frx_dsPedidosItens
        DataSetName = 'frx_dsPedidosItens'
      end
      item
        DataSet = frx_dsPedidosItensKit
        DataSetName = 'frx_dsPedidosItensKit'
      end
      item
        DataSet = frx_PedidoVenda
        DataSetName = 'FrxPedidoVenda'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxDMPPage
      Orientation = poLandscape
      PaperWidth = 203.199868766751400000
      PaperHeight = 125.941585329392800000
      PaperSize = 256
      LeftMargin = 3.810000000000000000
      RightMargin = 3.810000000000000000
      TopMargin = 2.539998359584390000
      BottomMargin = 2.539998359584390000
      BackPictureVisible = False
      BackPicturePrintable = False
      BackPictureStretched = False
      Frame.Typ = []
      PrintIfEmpty = False
      ShowTitleOnPreviousPage = False
      TitleBeforeHeader = False
      FontStyle = []
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 51.000000000000000000
        Top = 408.000000000000000000
        Width = 739.199981400000000000
        object DMPMemo25: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 17.000000000000000000
          Width = 355.200000000000000000
          Height = 17.000000000000000000
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          FontStyle = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendedor(a): [frxPedidoVenda."VENDEDOR_NOME"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo26: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 393.600000000000000000
          Top = 17.000000000000000000
          Width = 336.000000000000000000
          Height = 17.000000000000000000
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              'Forma Pgto: [FrxPedidoVenda."FORMA_PAGTO_NOME"]([FrxPedidoVenda.' +
              '"TIPOPAGAMENTO"])')
          ParentFont = False
          TruncOutboundText = False
          Formats = <
            item
            end
            item
            end>
        end
        object DMPMemo27: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 393.600000000000000000
          Top = 34.000000000000000000
          Width = 336.000000000000000000
          Height = 17.000000000000000000
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'R$ ###,##0.00'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL: [frx_dsPedido."VLR_TOTAL"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPLine2: TfrxDMPLineView
          AllowVectorExport = True
          Left = -4.800000000000000000
          Top = 8.500000000000000000
          Width = 758.400000000000000000
          Color = clBlack
        end
        object DMPMemo24: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 34.000000000000000000
          Width = 364.800000000000000000
          Height = 17.000000000000000000
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          FontStyle = [fsxBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'OBS.: [frx_dsPedido."OBSERVACAO"]')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 221.000000000000000000
        Top = 17.000000000000000000
        Width = 739.199981400000000000
        object DMPMemo28: TfrxDMPMemoView
          AllowVectorExport = True
          Width = 729.600000000000000000
          Height = 17.000000000000000000
          DataSet = FrmPrincipal.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          FontStyle = [fsxBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[frx_dsEmpresa."EMP_NOME_FANTASIA"] - CNPJ: [frx_dsEmpresa."EMP_' +
              'CNPJ"] - Fone: [frx_dsEmpresa."EMP_FONE"]')
          ParentFont = False
          TruncOutboundText = False
          Formats = <
            item
            end
            item
            end>
        end
        object DMPMemo1: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 187.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade')
          TruncOutboundText = False
        end
        object DMPMemo2: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 124.800000000000000000
          Top = 187.000000000000000000
          Width = 297.600000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231'ao das Mercadorias')
          TruncOutboundText = False
        end
        object DMPMemo3: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 470.400000000000000000
          Top = 187.000000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo5: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 576.000000000000000000
          Top = 187.000000000000000000
          Width = 48.000000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pre'#231'o')
          TruncOutboundText = False
        end
        object DMPMemo7: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 672.000000000000000000
          Top = 187.000000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          TruncOutboundText = False
        end
        object DMPMemo29: TfrxDMPMemoView
          AllowVectorExport = True
          Top = 34.000000000000000000
          Width = 729.600000000000000000
          Height = 17.000000000000000000
          DataSet = FrmPrincipal.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          FontStyle = [fsxBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Associa'#231'ao dos Doentes Renais Cronicos e Transplantados de Doura' +
              'dos e Regiao')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo30: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 102.000000000000000000
          Width = 633.600000000000000000
          Height = 17.000000000000000000
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          FontStyle = [fsxBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente: [FrxPedidoVenda."CLIENTE_NOME"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo31: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 153.000000000000000000
          Width = 326.400000000000000000
          Height = 17.000000000000000000
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          FontStyle = [fsxBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ/CPF: [FrxPedidoVenda."CNPJ"]')
          ParentFont = False
          TruncOutboundText = False
          Formats = <
            item
            end
            item
            end>
        end
        object DMPMemo33: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 119.000000000000000000
          Width = 518.400000000000000000
          Height = 17.000000000000000000
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          FontStyle = [fsxBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o: [FrxPedidoVenda."ENDERECO"]')
          ParentFont = False
          TruncOutboundText = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object DMPMemo34: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 364.800000000000000000
          Top = 136.000000000000000000
          Width = 316.800000000000000000
          Height = 17.000000000000000000
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          FontStyle = [fsxBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              'Contato: [FrxPedidoVenda."FONE"] [FrxPedidoVenda."CELULAR"] [Frx' +
              'PedidoVenda."EMAIL"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo37: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 170.000000000000000000
          Width = 336.000000000000000000
          Height = 17.000000000000000000
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          FontStyle = [fsxBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Entrega: [frx_dsPedido."DATA_ENTREGA"]')
          ParentFont = False
          TruncOutboundText = False
          Formats = <
            item
            end
            item
            end>
        end
        object DMPMemo36: TfrxDMPMemoView
          AllowVectorExport = True
          Top = 17.000000000000000000
          Width = 729.600000000000000000
          Height = 17.000000000000000000
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[frx_dsEmpresa."EMP_ENDERECO"], [frx_dsEmpresa."EMP_NUMERO"] - [' +
              'frx_dsEmpresa."EMP_CIDADE"]/[frx_dsEmpresa."EMP_UF"] IE: [frx_ds' +
              'Empresa."EMP_IE"]')
          ParentFont = False
          TruncOutboundText = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object DMPMemo38: TfrxDMPMemoView
          AllowVectorExport = True
          Top = 68.000000000000000000
          Width = 739.200000000000000000
          Height = 34.000000000000000000
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          FontStyle = [fsxBold, fsx12cpi]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PEDIDO - [frx_dsPedido."CODIGO"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo32: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 336.000000000000000000
          Top = 170.000000000000000000
          Width = 345.600000000000000000
          Height = 17.000000000000000000
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          FontStyle = [fsxBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Venda: [frx_dsPedido."DATA"]')
          ParentFont = False
          TruncOutboundText = False
          Formats = <
            item
            end
            item
            end>
        end
        object DMPMemo35: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 566.400000000000000000
          Top = 119.000000000000000000
          Width = 115.200000000000000000
          Height = 17.000000000000000000
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          FontStyle = [fsxBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Nr.: [FrxPedidoVenda."NUMERO"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo39: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 136.000000000000000000
          Width = 316.800000000000000000
          Height = 17.000000000000000000
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          FontStyle = [fsxBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Bairro: [FrxPedidoVenda."BAIRRO"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo40: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 355.200000000000000000
          Top = 153.000000000000000000
          Width = 326.400000000000000000
          Height = 17.000000000000000000
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          FontStyle = [fsxBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'IE/RG: [FrxPedidoVenda."IE"]')
          ParentFont = False
          TruncOutboundText = False
          Formats = <
            item
            end
            item
            end>
        end
        object DMPLine3: TfrxDMPLineView
          AllowVectorExport = True
          Left = -4.800000000000000000
          Top = 212.500000000000000000
          Width = 758.400000000000000000
          Color = clBlack
        end
        object DMPMemo41: TfrxDMPMemoView
          AllowVectorExport = True
          Top = 51.000000000000000000
          Width = 739.200000000000000000
          Height = 17.000000000000000000
          DataSet = FrmPrincipal.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Rua Onofre P. de Matos, 1938 Casa 4 - Dourados/MS CNPJ: 15.767.2' +
              '18.0001/43')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Top = 272.000000000000000000
        Width = 739.199981400000000000
        Condition = 'frx_dsPedidosItens."TIPO_PRODUTO"'
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 17.000000000000000000
        Top = 289.000000000000000000
        Width = 739.199981400000000000
        DataSet = frx_dsPedidosItens
        DataSetName = 'frx_dsPedidosItens'
        RowCount = 0
        object DMPMemo8: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          DataField = 'QTDE'
          DataSet = frx_dsPedidosItens
          DataSetName = 'frx_dsPedidosItens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsPedidosItens."QTDE"]')
          TruncOutboundText = False
        end
        object DMPMemo9: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 124.800000000000000000
          Width = 336.000000000000000000
          Height = 17.000000000000000000
          DataField = 'DESCRICAO'
          DataSet = frx_dsPedidosItens
          DataSetName = 'frx_dsPedidosItens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsPedidosItens."DESCRICAO"]')
          TruncOutboundText = False
        end
        object DMPMemo10: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 470.400000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          DataField = 'TIPO_PRODUTO'
          DataSet = frx_dsPedidosItens
          DataSetName = 'frx_dsPedidosItens'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_dsPedidosItens."TIPO_PRODUTO"]')
          TruncOutboundText = False
        end
        object DMPMemo12: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 576.000000000000000000
          Width = 48.000000000000000000
          Height = 17.000000000000000000
          DataField = 'VLR_UNIT'
          DataSet = frx_dsPedidosItens
          DataSetName = 'frx_dsPedidosItens'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_dsPedidosItens."VLR_UNIT"]')
          TruncOutboundText = False
        end
        object DMPMemo14: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 672.000000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          DataField = 'VLR_TOTAL'
          DataSet = frx_dsPedidosItens
          DataSetName = 'frx_dsPedidosItens'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dsPedidosItens."VLR_TOTAL"]')
          TruncOutboundText = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 17.000000000000000000
        Top = 323.000000000000000000
        Width = 739.199981400000000000
        Condition = 'frx_dsPedidosItensKit."TIPO_PRODUTO"'
        KeepTogether = True
        object DMPMemo22: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 124.800000000000000000
          Width = 297.600000000000000000
          Height = 17.000000000000000000
          DataSet = frx_dsPedidosItensKit
          DataSetName = 'frx_dsPedidosItensKit'
          Frame.Typ = []
          Memo.UTF8W = (
            'KIT')
          TruncOutboundText = False
        end
        object DMPMemo15: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '1')
          TruncOutboundText = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 17.000000000000000000
        Top = 357.000000000000000000
        Width = 739.199981400000000000
        DataSet = frx_dsPedidosItensKit
        DataSetName = 'frx_dsPedidosItensKit'
        RowCount = 0
        object DMPMemo16: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 124.800000000000000000
          Width = 336.000000000000000000
          Height = 17.000000000000000000
          DataField = 'DESCRICAO'
          DataSet = frx_dsPedidosItensKit
          DataSetName = 'frx_dsPedidosItensKit'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsPedidosItensKit."DESCRICAO"]')
          TruncOutboundText = False
        end
        object DMPMemo17: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 470.400000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          DataSet = frx_dsPedidosItensKit
          DataSetName = 'frx_dsPedidosItensKit'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_dsPedidosItensKit."QTDE"] Und')
          TruncOutboundText = False
        end
        object DMPMemo19: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 576.000000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          DataField = 'VLR_UNIT'
          DataSet = frx_dsPedidosItensKit
          DataSetName = 'frx_dsPedidosItensKit'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_dsPedidosItensKit."VLR_UNIT"]')
          TruncOutboundText = False
        end
        object DMPMemo21: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 672.000000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          DataField = 'VLR_TOTAL'
          DataSet = frx_dsPedidosItensKit
          DataSetName = 'frx_dsPedidosItensKit'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dsPedidosItensKit."VLR_TOTAL"]')
          TruncOutboundText = False
        end
      end
    end
  end
  object db_PedidoItensKit: TFDQuery
    AutoCalcFields = False
    BeforeInsert = db_PedidoItensBeforeInsert
    BeforePost = db_PedidoItensBeforePost
    AfterPost = db_PedidoItensAfterPost
    AfterDelete = db_PedidoItensAfterDelete
    MasterSource = ds_Pedido
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AssignedValues = [uvUpdateMode, uvCountUpdatedRecords]
    UpdateOptions.UpdateMode = upWhereAll
    UpdateOptions.CountUpdatedRecords = False
    SQL.Strings = (
      
        'SELECT E.*,P.codigo_barra,P.tipo_produto FROM PEDIDOS_ITENS E, C' +
        'AD_PRODUTOS P '
      'WHERE'
      'e.CODIGO=:CODIGO'
      'and'
      'P.tipo_produto='#39'KIT'#39
      'and'
      'e.referencia=p.referencia')
    Left = 136
    Top = 192
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        FDDataType = dtInt64
        ParamType = ptInput
      end>
    object IntegerField1: TIntegerField
      FieldName = 'IDX'
      ReadOnly = True
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'CODIGO'
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object IntegerField4: TIntegerField
      FieldName = 'CLIENTE'
    end
    object IntegerField5: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object IntegerField6: TIntegerField
      FieldName = 'TABELA'
    end
    object IntegerField7: TIntegerField
      FieldName = 'FORMAPAGTO'
    end
    object IntegerField8: TIntegerField
      FieldName = 'TRANSPORTADORA'
    end
    object StringField1: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object StringField2: TStringField
      FieldName = 'APROVADO'
      Required = True
      Size = 10
    end
    object IntegerField9: TIntegerField
      FieldName = 'ORDEMPRODUCAO'
      Required = True
    end
    object StringField3: TStringField
      FieldName = 'PRODUZINDO'
      Size = 10
    end
    object StringField4: TStringField
      FieldName = 'SELECIONADO'
      Required = True
      Size = 10
    end
    object StringField5: TStringField
      FieldName = 'REFERENCIA'
      Required = True
      OnChange = db_PedidoItensREFERENCIAChange
      Size = 30
    end
    object StringField6: TStringField
      FieldName = 'REFERENCIATECIDO'
      Size = 30
    end
    object StringField7: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object StringField8: TStringField
      FieldName = 'UND'
      Size = 30
    end
    object FloatField1: TFloatField
      FieldName = 'QTDE'
    end
    object FloatField2: TFloatField
      FieldName = 'VLR_UNIT'
      DisplayFormat = '###,##0.00'
    end
    object FloatField3: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object FloatField4: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object FloatField5: TFloatField
      FieldName = 'VLR_IMPOSTOS'
      DisplayFormat = '###,##0.00'
    end
    object FloatField6: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object IntegerField10: TIntegerField
      FieldName = 'QTDE_LIBERADA'
    end
    object IntegerField11: TIntegerField
      FieldName = 'QTDE_FATURADA'
    end
    object IntegerField12: TIntegerField
      FieldName = 'QTDE_CANCELADA'
    end
    object IntegerField13: TIntegerField
      FieldName = 'GRADE_TAMANHOS'
    end
    object StringField9: TStringField
      FieldName = 'TIPO_PRODUTO'
    end
    object StringField10: TStringField
      FieldName = 'CODIGO_BARRA'
    end
  end
  object db_PedidoItensUnt: TFDQuery
    AutoCalcFields = False
    BeforeInsert = db_PedidoItensBeforeInsert
    BeforePost = db_PedidoItensBeforePost
    AfterPost = db_PedidoItensAfterPost
    AfterDelete = db_PedidoItensAfterDelete
    MasterSource = ds_Pedido
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AssignedValues = [uvUpdateMode, uvCountUpdatedRecords]
    UpdateOptions.UpdateMode = upWhereAll
    UpdateOptions.CountUpdatedRecords = False
    SQL.Strings = (
      
        'SELECT E.*,P.codigo_barra,P.tipo_produto FROM PEDIDOS_ITENS E, C' +
        'AD_PRODUTOS P '
      'WHERE'
      'e.CODIGO=:CODIGO'
      'and'
      'P.tipo_produto='#39'UNT'#39
      'and'
      'e.referencia=p.referencia')
    Left = 432
    Top = 40
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        FDDataType = dtInt64
        ParamType = ptInput
      end>
    object IntegerField14: TIntegerField
      FieldName = 'IDX'
      ReadOnly = True
      Required = True
    end
    object IntegerField15: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object IntegerField16: TIntegerField
      FieldName = 'CODIGO'
    end
    object SQLTimeStampField2: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object IntegerField17: TIntegerField
      FieldName = 'CLIENTE'
    end
    object IntegerField18: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object IntegerField19: TIntegerField
      FieldName = 'TABELA'
    end
    object IntegerField20: TIntegerField
      FieldName = 'FORMAPAGTO'
    end
    object IntegerField21: TIntegerField
      FieldName = 'TRANSPORTADORA'
    end
    object StringField11: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object StringField12: TStringField
      FieldName = 'APROVADO'
      Required = True
      Size = 10
    end
    object IntegerField22: TIntegerField
      FieldName = 'ORDEMPRODUCAO'
      Required = True
    end
    object StringField13: TStringField
      FieldName = 'PRODUZINDO'
      Size = 10
    end
    object StringField14: TStringField
      FieldName = 'SELECIONADO'
      Required = True
      Size = 10
    end
    object StringField15: TStringField
      FieldName = 'REFERENCIA'
      Required = True
      OnChange = db_PedidoItensREFERENCIAChange
      Size = 30
    end
    object StringField16: TStringField
      FieldName = 'REFERENCIATECIDO'
      Size = 30
    end
    object StringField17: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object StringField18: TStringField
      FieldName = 'UND'
      Size = 30
    end
    object FloatField7: TFloatField
      FieldName = 'QTDE'
    end
    object FloatField8: TFloatField
      FieldName = 'VLR_UNIT'
      DisplayFormat = '###,##0.00'
    end
    object FloatField9: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object FloatField10: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object FloatField11: TFloatField
      FieldName = 'VLR_IMPOSTOS'
      DisplayFormat = '###,##0.00'
    end
    object FloatField12: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object IntegerField23: TIntegerField
      FieldName = 'QTDE_LIBERADA'
    end
    object IntegerField24: TIntegerField
      FieldName = 'QTDE_FATURADA'
    end
    object IntegerField25: TIntegerField
      FieldName = 'QTDE_CANCELADA'
    end
    object IntegerField26: TIntegerField
      FieldName = 'GRADE_TAMANHOS'
    end
    object StringField19: TStringField
      FieldName = 'TIPO_PRODUTO'
    end
    object StringField20: TStringField
      FieldName = 'CODIGO_BARRA'
    end
  end
  object frx_dsPedidosItensKit: TfrxDBDataset
    Description = 'PedidoItens'
    UserName = 'frx_dsPedidosItensKit'
    CloseDataSource = False
    DataSet = db_PedidoItensKit
    BCDToCurrency = False
    Left = 456
    Top = 400
  end
  object FrxPedidoVendaSemGradeBKP: TfrxReport
    Version = '6.2.11'
    DataSet = frx_PedidoVenda
    DataSetName = 'FrxPedidoVenda'
    DotMatrixReport = True
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoFullScreen]
    PreviewOptions.PagesInCache = 0
    PreviewOptions.Zoom = 1.000000000000000000
    PreviewOptions.ZoomMode = zmPageWidth
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41000.913359259300000000
    ReportOptions.Name = 'Pedido de Venda'
    ReportOptions.LastChange = 43624.372077210600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      '{var'
      'List: TStringList;'
      'i: Integer;}'
      ''
      
        'procedure DBCross1OnPrintCell(Memo: TfrxMemoView; RowIndex, Colu' +
        'mnIndex, CellIndex: Integer; RowValues, ColumnValues, Value: Var' +
        'iant);'
      'begin'
      '  if (Value = null) or (Value = 0) then Memo.Text := '#39#39';'
      '  if Value > 0 then'
      '  begin'
      '    Memo.Color := clSilver;'
      '  end;'
      'end;'
      ''
      'procedure GroupHeader2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  {if Engine.FinalPass then'
      
        '    memo_somakit.Text := '#39'Sum: '#39' + Get(<frx_dsPedidosItensKit."V' +
        'LR_DESCONTO">);}'
      'end;'
      ''
      'procedure GroupFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        ' // Set(<frx_dsPedidosItensKit."VLR_DESCONTO">,FloatToStr(SUM(<f' +
        'rx_dsPedidosItensKit."VLR_TOTAL">,MasterData2)));'
      'end;'
      ''
      
        '{procedure FrxPedidoVendaSemGradeOnStartReport(Sender: TfrxCompo' +
        'nent);'
      'begin'
      '  List := TStringList.Create;'
      'end;'
      ''
      
        'procedure FrxPedidoVendaSemGradeOnStopReport(Sender: TfrxCompone' +
        'nt);'
      'begin'
      '  List.Free;'
      'end;'
      ''
      'procedure report_pedidoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  i := 0;'
      'end; }'
      ''
      'BEGIN'
      ''
      'end.')
    OnStartReport = 'FrxPedidoVendaSemGradeOnStartReport'
    OnStopReport = 'FrxPedidoVendaSemGradeOnStopReport'
    Left = 408
    Top = 352
    Datasets = <
      item
        DataSet = FrmPrincipal.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = frx_dsPedido
        DataSetName = 'frx_dsPedido'
      end
      item
        DataSet = frx_dsPedidoGrade
        DataSetName = 'frx_dsPedidoGrade'
      end
      item
        DataSet = frx_dsPedidosItens
        DataSetName = 'frx_dsPedidosItens'
      end
      item
        DataSet = frx_dsPedidosItensKit
        DataSetName = 'frx_dsPedidosItensKit'
      end
      item
        DataSet = frx_PedidoVenda
        DataSetName = 'FrxPedidoVenda'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object report_pedido: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 148.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      DataSet = frx_dsPedido
      DataSetName = 'frx_dsPedido'
      Frame.Typ = []
      TitleBeforeHeader = False
      OnBeforePrint = 'report_pedidoOnBeforePrint'
      object ReportSummary1: TfrxReportSummary
        Description = 'Totais'
        FillType = ftBrush
        Frame.Typ = []
        Height = 62.472472680000000000
        Top = 487.559370000000000000
        Width = 755.906000000000000000
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 599.811082200000000000
          Top = 26.456692910000000000
          Width = 66.141732280000000000
          Height = 15.118112680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL:')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Top = 23.811023620000000000
          Width = 313.181200000000000000
          Height = 17.007874020000000000
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              'FORMA DE PGTO: [FrxPedidoVenda."FORMA_PAGTO_NOME"] ([FrxPedidoVe' +
              'nda."TIPOPAGAMENTO"])')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 666.330745280000000000
          Top = 26.456692910000000000
          Width = 85.039382280000000000
          Height = 15.118112680000000000
          AutoWidth = True
          DataField = 'VLR_TOTAL'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'R$ ###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxPedidoVenda."VLR_TOTAL"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 433.511762200000000000
          Top = 26.456692910000000000
          Width = 73.700772760000000000
          Height = 17.007874020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'DESCONTOS:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 496.251895280000000000
          Top = 26.456692910000000000
          Width = 71.000000000000000000
          Height = 17.007874020000000000
          AutoWidth = True
          DataField = 'VLR_DESCONTO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'R$ ###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxPedidoVenda."VLR_DESCONTO"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 360.188815280000000000
          Top = 26.456692910000000000
          Width = 71.000000000000000000
          Height = 17.007874020000000000
          AutoWidth = True
          DataField = 'VLR_PRODUTOS'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'R$ ###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxPedidoVenda."VLR_PRODUTOS"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 274.771502200000000000
          Top = 26.456692910000000000
          Width = 85.039362760000000000
          Height = 17.007874020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR BRUTO:')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 755.906000000000000000
          Height = 17.661410000000000000
          AutoWidth = True
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          Frame.Color = clSilver
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'OBSERVA'#199#195'O: [frx_dsPedido."OBSERVACAO"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 60.472440940000000000
          Width = 755.906000000000000000
          Height = -0.000007320000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Top = 39.685039370000000000
          Width = 273.669450000000000000
          Height = 17.007874020000000000
          AutoWidth = True
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendedor(a): [FrxPedidoVenda."VENDEDOR_NOME"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Description = 'Rodap'#233' do relat'#243'rio'
        FillType = ftBrush
        Frame.Typ = []
        Height = 3.779530000000000000
        Top = 574.488560000000000000
        Visible = False
        Width = 755.906000000000000000
      end
      object PageHeader1: TfrxPageHeader
        Description = 'Pedido de Venda'
        FillType = ftBrush
        Frame.Typ = []
        Height = 198.425216380000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 433.496290000000000000
          Top = 69.921259840000000000
          Width = 159.063080000000000000
          Height = 26.456702680000000000
          AutoWidth = True
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Pedido: [frx_dsPedido."DATA"]')
          ParentFont = False
        end
        object Shape7: TfrxShapeView
          AllowVectorExport = True
          Left = 0.645671730000000000
          Width = 718.000000000000000000
          Height = 70.299205280000000000
          Frame.Color = clNone
          Frame.Style = fsDot
          Frame.Typ = []
        end
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 86.929133860000000000
          Width = 718.000000000000000000
          Height = 89.086580000000000000
          Frame.Color = clNone
          Frame.Style = fsDot
          Frame.Typ = []
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779527560000000000
          Top = 86.929133860000000000
          Width = 132.236240000000000000
          Height = 17.007874020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 331.495980000000000000
          Top = 86.929133860000000000
          Width = 81.236240000000000000
          Height = 17.007874020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ/CPF:')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 572.881880000000000000
          Top = 86.929133860000000000
          Width = 123.000000000000000000
          Height = 17.007874020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'I.E/RG:')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779527560000000000
          Top = 98.267716540000000000
          Width = 356.819110000000000000
          Height = 17.007874020000000000
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."CLIENTE"] - [FrxPedidoVenda."CLIENTE_NOME"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 331.495980000000000000
          Top = 98.267716540000000000
          Width = 50.000000000000000000
          Height = 17.007874020000000000
          AutoWidth = True
          DataField = 'CNPJ'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."CNPJ"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 572.881880000000000000
          Top = 98.267716540000000000
          Width = 29.000000000000000000
          Height = 17.007874020000000000
          AutoWidth = True
          DataField = 'IE'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."IE"]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 5.000000000000000000
          Top = 115.275592990000000000
          Width = 82.456710000000000000
          Height = 17.007874020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 333.015770000000000000
          Top = 115.275592990000000000
          Width = 62.677180000000000000
          Height = 17.007874020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Bairro:')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 498.559060000000000000
          Top = 115.275592990000000000
          Width = 41.897650000000000000
          Height = 17.007874020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779527560000000000
          Top = 128.503939450000000000
          Width = 54.000000000000000000
          Height = 17.007874020000000000
          AutoWidth = True
          DataField = 'ENDERECO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."ENDERECO"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 333.015770000000000000
          Top = 128.503939450000000000
          Width = 37.000000000000000000
          Height = 17.007874020000000000
          AutoWidth = True
          DataField = 'BAIRRO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."BAIRRO"]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 460.763760000000000000
          Top = 128.503939450000000000
          Width = 20.000000000000000000
          Height = 17.007874020000000000
          AutoWidth = True
          DataField = 'CEP'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."CEP"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 571.709027560000000000
          Top = 115.275592990000000000
          Width = 88.015770000000000000
          Height = 17.007874020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Munic'#237'pio:')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 571.709027560000000000
          Top = 128.503939450000000000
          Width = 69.000000000000000000
          Height = 17.007874020000000000
          AutoWidth = True
          DataField = 'NOMECIDADE'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."NOMECIDADE"]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 711.441250000000000000
          Top = 128.503939450000000000
          Width = 14.000000000000000000
          Height = 17.007874020000000000
          AutoWidth = True
          DataField = 'UF'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."UF"]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 711.441250000000000000
          Top = 115.275592990000000000
          Width = 28.338590000000000000
          Height = 17.007874020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 206.141620000000000000
          Top = 154.960632360000000000
          Width = 146.504020000000000000
          Height = 17.007874020000000000
          AutoWidth = True
          DataField = 'CELULAR'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."CELULAR"]')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 3.440630000000000000
          Top = 143.622059450000000000
          Width = 73.456710000000000000
          Height = 17.007874020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Contato:')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 499.590600000000000000
          Top = 143.622059450000000000
          Width = 102.440940000000000000
          Height = 17.007874020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'E-Mail:')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 499.590600000000000000
          Top = 154.960632360000000000
          Width = 141.385900000000000000
          Height = 17.007874020000000000
          AutoWidth = True
          DataField = 'EMAIL'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."EMAIL"]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 607.748300000000000000
          Top = 69.921259840000000000
          Width = 146.590600000000000000
          Height = 22.677172680000000000
          AutoWidth = True
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Entrega: [frx_dsPedido."DATA_ENTREGA"]')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 609.504327560000000000
          Top = 4.535433070000000000
          Width = 144.826840000000000000
          Height = 22.677172680000000000
          AutoWidth = True
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pedido [FrxPedidoVenda."CODIGO"]')
          ParentFont = False
        end
        object Memo113: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 4.535433070866140000
          Width = 222.992145510000000000
          Height = 22.677172680000000000
          AutoWidth = True
          DataField = 'EMP_NOME'
          DataSet = FrmPrincipal.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_NOME"]')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 24.566929133858300000
          Width = 222.992145510000000000
          Height = 26.456702680000000000
          AutoWidth = True
          DataSet = FrmPrincipal.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fone: [frx_dsEmpresa."EMP_FONE"]')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Left = 237.756061730000000000
          Top = 24.566929130000000000
          Width = 328.818985510000000000
          Height = 15.118112680000000000
          AutoWidth = True
          DataField = 'EMP_ENDERECOCOMPLETO'
          DataSet = FrmPrincipal.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_ENDERECOCOMPLETO"]')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779530000000000000
          Top = 154.960632360000000000
          Width = 19.440940000000000000
          Height = 17.007874020000000000
          AutoWidth = True
          DataField = 'DDD'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxPedidoVenda."DDD"]')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Left = 29.921460000000000000
          Top = 154.960632360000000000
          Width = 163.063080000000000000
          Height = 17.007874020000000000
          AutoWidth = True
          DataField = 'FONE'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."FONE"]')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          AllowVectorExport = True
          Left = 255.102350000000000000
          Top = 115.275592990000000000
          Width = 62.677180000000000000
          Height = 17.007874020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#250'mero:')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          AllowVectorExport = True
          Left = 255.102350000000000000
          Top = 128.503939450000000000
          Width = 37.000000000000000000
          Height = 17.007874020000000000
          AutoWidth = True
          DataField = 'NUMERO'
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxPedidoVenda."NUMERO"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 147.401596770000000000
          Top = 177.637812360000000000
          Width = 70.338590000000000000
          Height = 17.007874020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DESCRICAO:')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 5.669044800000000000
          Top = 177.637812360000000000
          Width = 55.937007870000000000
          Height = 17.007874020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'QTDE:')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 548.031544880000000000
          Top = 177.637812360000000000
          Width = 63.118102910000000000
          Height = 17.007874020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'UNITARIO:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 177.637812360000000000
          Width = 94.236240000000000000
          Height = 17.007874020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'COD. BARRAS:')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 676.535452600000000000
          Top = 177.637812360000000000
          Width = 77.480324720000000000
          Height = 17.007874020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL:')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 612.283488980000000000
          Top = 177.637812360000000000
          Width = 64.251978270000000000
          Height = 17.007874020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'DESCONTO:')
          ParentFont = False
        end
        object Line20: TfrxLineView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 194.535560000000000000
          Width = 752.126008660000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 238.110390000000000000
          Top = 5.669291340000000000
          Width = 162.519665510000000000
          Height = 15.118112680000000000
          Visible = False
          AutoWidth = True
          DataSet = FrmPrincipal.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ: [frx_dsEmpresa."EMP_CNPJ"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 5.669291340000000000
          Width = 154.960605510000000000
          Height = 15.118112680000000000
          AutoWidth = True
          DataSet = FrmPrincipal.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              'CNPJ: [frx_dsEmpresa."EMP_CNPJ"] Insc. Est.: [frx_dsEmpresa."EMP' +
              '_IE"]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Top = 43.464566930000000000
          Width = 756.417440000000000000
          Height = 26.102350000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'ASS. DOS DOENTES RENAIS CRONICOS E TRANSPLANTADOS DE DOURADOS E ' +
              'REGI'#195'O'
            
              'Rua Bela Vista, 65, Jd S'#227'o Pedro, Dourados/MS - CNPJ 05880815/00' +
              '01-26')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 177.637910000000000000
          Width = 79.118120000000000000
          Height = 17.007874020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'TIPO:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.118110240000000000
        Top = 302.362400000000000000
        Width = 755.906000000000000000
        DataSet = frx_dsPedidosItens
        DataSetName = 'frx_dsPedidosItens'
        RowCount = 0
        object memo_referencia: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984537560000000000
          Top = -1.889763780000000000
          Width = 94.236240000000000000
          Height = 17.007874020000000000
          DataField = 'CODIGO_BARRA'
          DataSet = frx_dsPedidosItens
          DataSetName = 'frx_dsPedidosItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dsPedidosItens."CODIGO_BARRA"]')
          ParentFont = False
        end
        object memo_descricao: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590526770000000000
          Top = -1.889763780000000000
          Width = 274.433210000000000000
          Height = 17.007874020000000000
          DataField = 'DESCRICAO'
          DataSet = frx_dsPedidosItens
          DataSetName = 'frx_dsPedidosItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsPedidosItens."DESCRICAO"]')
          ParentFont = False
        end
        object memo_qtde: TfrxMemoView
          AllowVectorExport = True
          Left = 5.669042360000000000
          Top = -1.889763780000000000
          Width = 55.937007870000000000
          Height = 17.007874020000000000
          DataField = 'QTDE'
          DataSet = frx_dsPedidosItens
          DataSetName = 'frx_dsPedidosItens'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsPedidosItens."QTDE"]')
          ParentFont = False
        end
        object memo_vunt: TfrxMemoView
          AllowVectorExport = True
          Left = 555.590602440000000000
          Top = -1.889763780000000000
          Width = 55.559042910000000000
          Height = 17.007874020000000000
          DataField = 'VLR_UNIT'
          DataSet = frx_dsPedidosItens
          DataSetName = 'frx_dsPedidosItens'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dsPedidosItens."VLR_UNIT"]')
          ParentFont = False
        end
        object memo_vdesc: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401606540000000000
          Top = -1.889763780000000000
          Width = 49.133858270000000000
          Height = 17.007874020000000000
          DataField = 'VLR_DESCONTO'
          DataSet = frx_dsPedidosItens
          DataSetName = 'frx_dsPedidosItens'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dsPedidosItens."VLR_DESCONTO"]')
          ParentFont = False
        end
        object memo_vtotal: TfrxMemoView
          AllowVectorExport = True
          Left = 676.535450160000000000
          Top = -1.889763780000000000
          Width = 77.480324720000000000
          Height = 17.007874020000000000
          DataField = 'VLR_TOTAL'
          DataSet = frx_dsPedidosItens
          DataSetName = 'frx_dsPedidosItens'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dsPedidosItens."VLR_TOTAL"]')
          ParentFont = False
        end
        object memo_tipo: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = -1.889763780000000000
          Width = 48.881880000000000000
          Height = 17.007874020000000000
          DataField = 'TIPO_PRODUTO'
          DataSet = frx_dsPedidosItens
          DataSetName = 'frx_dsPedidosItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsPedidosItens."TIPO_PRODUTO"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.118110240000000000
        Top = 377.953000000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'MasterData2OnBeforePrint'
        DataSet = frx_dsPedidosItensKit
        DataSetName = 'frx_dsPedidosItensKit'
        RowCount = 0
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984251970000000000
          Top = -1.889763780000000000
          Width = 94.236240000000000000
          Height = 17.007874020000000000
          DataField = 'CODIGO_BARRA'
          DataSet = frx_dsPedidosItensKit
          DataSetName = 'frx_dsPedidosItensKit'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dsPedidosItensKit."CODIGO_BARRA"]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590551180000000000
          Top = -1.889763780000000000
          Width = 274.433210000000000000
          Height = 17.007874020000000000
          DataField = 'DESCRICAO'
          DataSet = frx_dsPedidosItensKit
          DataSetName = 'frx_dsPedidosItensKit'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsPedidosItensKit."DESCRICAO"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = -1.889763780000000000
          Width = 55.559042910000000000
          Height = 17.007874020000000000
          DataField = 'VLR_UNIT'
          DataSet = frx_dsPedidosItensKit
          DataSetName = 'frx_dsPedidosItensKit'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dsPedidosItensKit."VLR_UNIT"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 676.535757720000000000
          Top = -1.889763780000000000
          Width = 77.480324720000000000
          Height = 17.007874020000000000
          DataField = 'VLR_TOTAL'
          DataSet = frx_dsPedidosItensKit
          DataSetName = 'frx_dsPedidosItensKit'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dsPedidosItensKit."VLR_TOTAL"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = -1.889763780000000000
          Width = 55.937007870000000000
          Height = 17.007874020000000000
          DataSet = frx_dsPedidosItensKit
          DataSetName = 'frx_dsPedidosItensKit'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsPedidosItensKit."QTDE"]  Und')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.118110240000000000
        Top = 340.157700000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'GroupHeader2OnBeforePrint'
        Condition = 'frx_dsPedidosItensKit."TIPO_PRODUTO"'
        KeepTogether = True
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 5.669042360000000000
          Top = -1.889763780000000000
          Width = 55.937007870000000000
          Height = 17.007874020000000000
          DataSet = frx_dsPedidosItensKit
          DataSetName = 'frx_dsPedidosItensKit'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '1')
          ParentFont = False
        end
        object memo_somakit: TfrxMemoView
          AllowVectorExport = True
          Left = 646.299210160000000000
          Top = -1.889763780000000000
          Width = 107.716564720000000000
          Height = 17.007874020000000000
          DataSet = frx_dsPedidosItensKit
          DataSetName = 'frx_dsPedidosItensKit'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
        end
        object memo_tipo_kit: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = -1.889763780000000000
          Width = 275.653680000000000000
          Height = 17.007874020000000000
          DataField = 'TIPO_PRODUTO'
          DataSet = frx_dsPedidosItensKit
          DataSetName = 'frx_dsPedidosItensKit'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsPedidosItensKit."TIPO_PRODUTO"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Top = 279.685220000000000000
        Width = 755.906000000000000000
        Condition = 'frx_dsPedidosItens."TIPO_PRODUTO"'
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 11.338582680000000000
        Top = 415.748300000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'GroupFooter1OnBeforePrint'
        object memo_somafooter: TfrxMemoView
          AllowVectorExport = True
          Left = 646.299630000000000000
          Top = -1.889763780000000000
          Width = 107.716564720000000000
          Height = 17.007874020000000000
          DataSet = frx_dsPedidosItensKit
          DataSetName = 'frx_dsPedidosItensKit'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
        end
      end
    end
  end
  object FrxPedidoVendaSemGrade: TfrxReport
    Version = '6.2.11'
    DotMatrixReport = True
    EngineOptions.PrintIfEmpty = False
    EngineOptions.SilentMode = True
    EngineOptions.NewSilentMode = simSilent
    IniFile = '\Software\Fast Reports'
    OldStyleProgress = True
    PreviewOptions.Buttons = [pbSave, pbExport, pbZoom, pbFind, pbNavigator, pbExportQuick, pbNoClose, pbNoFullScreen, pbNoEmail]
    PreviewOptions.DoubleBuffered = False
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PreviewOptions.ZoomMode = zmPageWidth
    PrintOptions.Collate = False
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.PrintPages = ppEven
    ReportOptions.CreateDate = 43624.427339745400000000
    ReportOptions.LastChange = 43630.738724930550000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 320
    Top = 336
    Datasets = <
      item
        DataSet = FrmPrincipal.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = frx_dsPedido
        DataSetName = 'frx_dsPedido'
      end
      item
        DataSet = frx_dsPedidosItens
        DataSetName = 'frx_dsPedidosItens'
      end
      item
        DataSet = frx_dsPedidosItensDoa
        DataSetName = 'frx_dsPedidosItensDoa'
      end
      item
        DataSet = frx_dsPedidosItensKit
        DataSetName = 'frx_dsPedidosItensKit'
      end
      item
        DataSet = frx_PedidoVenda
        DataSetName = 'FrxPedidoVenda'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxDMPPage
      Orientation = poLandscape
      PaperWidth = 203.199868766751400000
      PaperHeight = 121.443671567628800000
      PaperSize = 256
      LeftMargin = 3.810000000000000000
      RightMargin = 3.810000000000000000
      TopMargin = 2.539998359584390000
      BottomMargin = 2.539998359584390000
      BackPictureVisible = False
      BackPicturePrintable = False
      BackPictureStretched = False
      Frame.Typ = []
      PrintIfEmpty = False
      ShowTitleOnPreviousPage = False
      TitleBeforeHeader = False
      FontStyle = []
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 51.000000000000000000
        Top = 442.000000000000000000
        Width = 739.199981400000000000
        object DMPMemo25: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 17.000000000000000000
          Width = 403.200000000000000000
          Height = 17.000000000000000000
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          FontStyle = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendedor(a): [frxPedidoVenda."VENDEDOR_NOME"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo26: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 393.600000000000000000
          Top = 17.000000000000000000
          Width = 336.000000000000000000
          Height = 17.000000000000000000
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          FontStyle = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              'Forma Pgto: [FrxPedidoVenda."FORMA_PAGTO_NOME"]([FrxPedidoVenda.' +
              '"TIPOPAGAMENTO"])')
          ParentFont = False
          TruncOutboundText = False
          Formats = <
            item
            end
            item
            end>
        end
        object DMPMemo27: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 393.600000000000000000
          Top = 34.000000000000000000
          Width = 336.000000000000000000
          Height = 17.000000000000000000
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'R$ ###,##0.00'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL: [frx_dsPedido."VLR_TOTAL"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPLine2: TfrxDMPLineView
          AllowVectorExport = True
          Left = -4.800000000000000000
          Top = 8.500000000000000000
          Width = 758.400000000000000000
          Color = clBlack
        end
        object DMPMemo24: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 34.000000000000000000
          Width = 403.200000000000000000
          Height = 17.000000000000000000
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          FontStyle = [fsxBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'OBS.: [frx_dsPedido."OBSERVACAO"]')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 204.000000000000000000
        Top = 17.000000000000000000
        Width = 739.199981400000000000
        object DMPMemo40: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 355.200000000000000000
          Top = 119.000000000000000000
          Width = 326.400000000000000000
          Height = 17.000000000000000000
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          FontStyle = [fsxBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'IE/RG: [FrxPedidoVenda."IE"]')
          ParentFont = False
          TruncOutboundText = False
          Formats = <
            item
            end
            item
            end>
        end
        object DMPMemo28: TfrxDMPMemoView
          AllowVectorExport = True
          Width = 729.600000000000000000
          Height = 17.000000000000000000
          DataSet = FrmPrincipal.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          FontStyle = [fsxBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[frx_dsEmpresa."EMP_NOME_FANTASIA"] - CNPJ: [frx_dsEmpresa."EMP_' +
              'CNPJ"] - Fone: [frx_dsEmpresa."EMP_FONE"]')
          ParentFont = False
          TruncOutboundText = False
          Formats = <
            item
            end
            item
            end>
        end
        object DMPMemo1: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 170.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade')
          TruncOutboundText = False
        end
        object DMPMemo2: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 124.800000000000000000
          Top = 170.000000000000000000
          Width = 297.600000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231'ao das Mercadorias')
          TruncOutboundText = False
        end
        object DMPMemo3: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 470.400000000000000000
          Top = 170.000000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo5: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 576.000000000000000000
          Top = 170.000000000000000000
          Width = 48.000000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pre'#231'o')
          TruncOutboundText = False
        end
        object DMPMemo7: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 672.000000000000000000
          Top = 170.000000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          TruncOutboundText = False
        end
        object DMPMemo29: TfrxDMPMemoView
          AllowVectorExport = True
          Top = 34.000000000000000000
          Width = 729.600000000000000000
          Height = 17.000000000000000000
          DataSet = FrmPrincipal.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          FontStyle = [fsxBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Associacao dos Doentes Renais Cronicos e Transplantados de Doura' +
              'dos e Regiao')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo30: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 85.000000000000000000
          Width = 633.600000000000000000
          Height = 17.000000000000000000
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          FontStyle = [fsxBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente: [FrxPedidoVenda."CLIENTE_NOME"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo31: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 136.000000000000000000
          Width = 326.400000000000000000
          Height = 17.000000000000000000
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          FontStyle = [fsxBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ/CPF: [FrxPedidoVenda."CNPJ"]')
          ParentFont = False
          TruncOutboundText = False
          Formats = <
            item
            end
            item
            end>
        end
        object DMPMemo33: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 102.000000000000000000
          Width = 518.400000000000000000
          Height = 17.000000000000000000
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          FontStyle = [fsxBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Endere'#231'o: [FrxPedidoVenda."ENDERECO"], [FrxPedidoVenda."COMPLEME' +
              'NTO"] ')
          ParentFont = False
          TruncOutboundText = False
          Formats = <
            item
            end
            item
            end>
        end
        object DMPMemo34: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 364.800000000000000000
          Top = 136.000000000000000000
          Width = 316.800000000000000000
          Height = 17.000000000000000000
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          FontStyle = [fsxBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              'Contato: [FrxPedidoVenda."FONE"] [FrxPedidoVenda."CELULAR"] [Frx' +
              'PedidoVenda."VOIP"] [FrxPedidoVenda."FAX"]')
          ParentFont = False
          TruncOutboundText = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object DMPMemo37: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 153.000000000000000000
          Width = 336.000000000000000000
          Height = 17.000000000000000000
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          FontStyle = [fsxBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Entrega: [frx_dsPedido."DATA_ENTREGA"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo36: TfrxDMPMemoView
          AllowVectorExport = True
          Top = 17.000000000000000000
          Width = 729.600000000000000000
          Height = 17.000000000000000000
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[frx_dsEmpresa."EMP_ENDERECO"], [frx_dsEmpresa."EMP_NUMERO"] - [' +
              'frx_dsEmpresa."EMP_CIDADE"]/[frx_dsEmpresa."EMP_UF"] IE: [frx_ds' +
              'Empresa."EMP_IE"]')
          ParentFont = False
          TruncOutboundText = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object DMPMemo38: TfrxDMPMemoView
          AllowVectorExport = True
          Top = 68.000000000000000000
          Width = 739.200000000000000000
          Height = 17.000000000000000000
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          FontStyle = [fsxBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PEDIDO - [frx_dsPedido."CODIGO"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo32: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 336.000000000000000000
          Top = 153.000000000000000000
          Width = 345.600000000000000000
          Height = 17.000000000000000000
          DataSet = frx_dsPedido
          DataSetName = 'frx_dsPedido'
          FontStyle = [fsxBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Venda: [frx_dsPedido."DATA"]')
          ParentFont = False
          TruncOutboundText = False
          Formats = <
            item
            end
            item
            end>
        end
        object DMPMemo35: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 566.400000000000000000
          Top = 102.000000000000000000
          Width = 115.200000000000000000
          Height = 17.000000000000000000
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          FontStyle = [fsxBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Nr.: [FrxPedidoVenda."NUMERO"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo39: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 48.000000000000000000
          Top = 119.000000000000000000
          Width = 355.200000000000000000
          Height = 17.000000000000000000
          DataSet = frx_PedidoVenda
          DataSetName = 'FrxPedidoVenda'
          FontStyle = [fsxBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Bairro: [FrxPedidoVenda."BAIRRO"], Cidade: [FrxPedidoVenda."NOME' +
              'CIDADE"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPLine3: TfrxDMPLineView
          AllowVectorExport = True
          Left = -4.800000000000000000
          Top = 195.500000000000000000
          Width = 758.400000000000000000
          Color = clBlack
        end
        object DMPMemo41: TfrxDMPMemoView
          AllowVectorExport = True
          Top = 51.000000000000000000
          Width = 739.200000000000000000
          Height = 17.000000000000000000
          DataSet = FrmPrincipal.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          FontStyle = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Rua Onofre P. de Matos, 1938 Casa 4 - Dourados/MS CNPJ: 15.767.2' +
              '18.0001/43')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Top = 255.000000000000000000
        Width = 739.199981400000000000
        Condition = 'frx_dsPedidosItens."TIPO_PRODUTO"'
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 17.000000000000000000
        Top = 272.000000000000000000
        Width = 739.199981400000000000
        DataSet = frx_dsPedidosItens
        DataSetName = 'frx_dsPedidosItens'
        RowCount = 0
        object DMPMemo8: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          DataField = 'QTDE'
          DataSet = frx_dsPedidosItens
          DataSetName = 'frx_dsPedidosItens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsPedidosItens."QTDE"]')
          TruncOutboundText = False
        end
        object DMPMemo9: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 124.800000000000000000
          Width = 336.000000000000000000
          Height = 17.000000000000000000
          DataField = 'DESCRICAO'
          DataSet = frx_dsPedidosItens
          DataSetName = 'frx_dsPedidosItens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsPedidosItens."DESCRICAO"]')
          TruncOutboundText = False
        end
        object DMPMemo10: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 470.400000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          DataField = 'TIPO_PRODUTO'
          DataSet = frx_dsPedidosItens
          DataSetName = 'frx_dsPedidosItens'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_dsPedidosItens."TIPO_PRODUTO"]')
          TruncOutboundText = False
        end
        object DMPMemo12: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 576.000000000000000000
          Width = 48.000000000000000000
          Height = 17.000000000000000000
          DataSet = frx_dsPedidosItens
          DataSetName = 'frx_dsPedidosItens'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_dsPedidosItens."VLR_UNIT"]')
          TruncOutboundText = False
        end
        object DMPMemo14: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 672.000000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          DataSet = frx_dsPedidosItens
          DataSetName = 'frx_dsPedidosItens'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dsPedidosItens."VLR_TOTAL"]')
          TruncOutboundText = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 17.000000000000000000
        Top = 357.000000000000000000
        Width = 739.199981400000000000
        Condition = 'frx_dsPedidosItensKit."TIPO_PRODUTO"'
        KeepTogether = True
        object DMPMemo22: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 124.800000000000000000
          Width = 297.600000000000000000
          Height = 17.000000000000000000
          DataSet = frx_dsPedidosItensKit
          DataSetName = 'frx_dsPedidosItensKit'
          Frame.Typ = []
          Memo.UTF8W = (
            'KIT')
          TruncOutboundText = False
        end
        object DMPMemo15: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '1')
          TruncOutboundText = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 17.000000000000000000
        Top = 391.000000000000000000
        Width = 739.199981400000000000
        DataSet = frx_dsPedidosItensKit
        DataSetName = 'frx_dsPedidosItensKit'
        RowCount = 0
        object DMPMemo16: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 124.800000000000000000
          Width = 326.400000000000000000
          Height = 17.000000000000000000
          DataField = 'DESCRICAO'
          DataSet = frx_dsPedidosItensKit
          DataSetName = 'frx_dsPedidosItensKit'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsPedidosItensKit."DESCRICAO"]')
          TruncOutboundText = False
        end
        object DMPMemo17: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 460.800000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataSet = frx_dsPedidosItensKit
          DataSetName = 'frx_dsPedidosItensKit'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_dsPedidosItensKit."QTDE"] Und')
          TruncOutboundText = False
        end
        object DMPMemo19: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 566.400000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          DataSet = frx_dsPedidosItensKit
          DataSetName = 'frx_dsPedidosItensKit'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_dsPedidosItensKit."VLR_UNIT"]')
          TruncOutboundText = False
        end
        object DMPMemo21: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 672.000000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          DataSet = frx_dsPedidosItensKit
          DataSetName = 'frx_dsPedidosItensKit'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dsPedidosItensKit."VLR_TOTAL"]')
          TruncOutboundText = False
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 17.000000000000000000
        Top = 323.000000000000000000
        Width = 739.199981400000000000
        DataSet = frx_dsPedidosItensDoa
        DataSetName = 'frx_dsPedidosItensDoa'
        RowCount = 0
        object DMPMemo42: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          DataSet = frx_dsPedidosItensDoa
          DataSetName = 'frx_dsPedidosItensDoa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsPedidosItensDoa."QTDE"]')
          TruncOutboundText = False
        end
        object DMPMemo43: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 124.800000000000000000
          Width = 336.000000000000000000
          Height = 17.000000000000000000
          DataSet = frx_dsPedidosItensDoa
          DataSetName = 'frx_dsPedidosItensDoa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsPedidosItensDoa."DESCRICAO"]')
          TruncOutboundText = False
        end
        object DMPMemo44: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 470.400000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          DataSet = frx_dsPedidosItensDoa
          DataSetName = 'frx_dsPedidosItensDoa'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_dsPedidosItensDoa."TIPO_PRODUTO"]')
          TruncOutboundText = False
        end
        object DMPMemo45: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 576.000000000000000000
          Width = 48.000000000000000000
          Height = 17.000000000000000000
          DataSet = frx_dsPedidosItensDoa
          DataSetName = 'frx_dsPedidosItensDoa'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_dsPedidosItensDoa."VLR_UNIT"]')
          TruncOutboundText = False
        end
        object DMPMemo46: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 672.000000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          DataSet = frx_dsPedidosItensDoa
          DataSetName = 'frx_dsPedidosItensDoa'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frx_dsPedidosItensDoa."VLR_TOTAL"]')
          TruncOutboundText = False
        end
      end
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Top = 306.000000000000000000
        Width = 739.199981400000000000
        Condition = 'frx_dsPedidosItensDoa."TIPO_PRODUTO"'
      end
    end
  end
  object db_PedidoItensDoa: TFDQuery
    AutoCalcFields = False
    BeforeInsert = db_PedidoItensBeforeInsert
    BeforePost = db_PedidoItensBeforePost
    AfterPost = db_PedidoItensAfterPost
    AfterDelete = db_PedidoItensAfterDelete
    MasterSource = ds_Pedido
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AssignedValues = [uvUpdateMode, uvCountUpdatedRecords]
    UpdateOptions.UpdateMode = upWhereAll
    UpdateOptions.CountUpdatedRecords = False
    SQL.Strings = (
      
        'SELECT E.*,P.codigo_barra,P.tipo_produto FROM PEDIDOS_ITENS E, C' +
        'AD_PRODUTOS P '
      'WHERE'
      'e.CODIGO=:CODIGO'
      'and'
      'P.tipo_produto='#39'DOACAO'#39
      'and'
      'e.referencia=p.referencia')
    Left = 136
    Top = 144
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        FDDataType = dtInt64
        ParamType = ptInput
      end>
    object IntegerField27: TIntegerField
      FieldName = 'IDX'
      ReadOnly = True
      Required = True
    end
    object IntegerField28: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object IntegerField29: TIntegerField
      FieldName = 'CODIGO'
    end
    object SQLTimeStampField3: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object IntegerField30: TIntegerField
      FieldName = 'CLIENTE'
    end
    object IntegerField31: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object IntegerField32: TIntegerField
      FieldName = 'TABELA'
    end
    object IntegerField33: TIntegerField
      FieldName = 'FORMAPAGTO'
    end
    object IntegerField34: TIntegerField
      FieldName = 'TRANSPORTADORA'
    end
    object StringField21: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object StringField22: TStringField
      FieldName = 'APROVADO'
      Required = True
      Size = 10
    end
    object IntegerField35: TIntegerField
      FieldName = 'ORDEMPRODUCAO'
      Required = True
    end
    object StringField23: TStringField
      FieldName = 'PRODUZINDO'
      Size = 10
    end
    object StringField24: TStringField
      FieldName = 'SELECIONADO'
      Required = True
      Size = 10
    end
    object StringField25: TStringField
      FieldName = 'REFERENCIA'
      Required = True
      OnChange = db_PedidoItensREFERENCIAChange
      Size = 30
    end
    object StringField26: TStringField
      FieldName = 'REFERENCIATECIDO'
      Size = 30
    end
    object StringField27: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object StringField28: TStringField
      FieldName = 'UND'
      Size = 30
    end
    object FloatField13: TFloatField
      FieldName = 'QTDE'
    end
    object FloatField14: TFloatField
      FieldName = 'VLR_UNIT'
      DisplayFormat = '###,##0.00'
    end
    object FloatField15: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object FloatField16: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object FloatField17: TFloatField
      FieldName = 'VLR_IMPOSTOS'
      DisplayFormat = '###,##0.00'
    end
    object FloatField18: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object IntegerField36: TIntegerField
      FieldName = 'QTDE_LIBERADA'
    end
    object IntegerField37: TIntegerField
      FieldName = 'QTDE_FATURADA'
    end
    object IntegerField38: TIntegerField
      FieldName = 'QTDE_CANCELADA'
    end
    object IntegerField39: TIntegerField
      FieldName = 'GRADE_TAMANHOS'
    end
    object StringField29: TStringField
      FieldName = 'TIPO_PRODUTO'
    end
    object StringField30: TStringField
      FieldName = 'CODIGO_BARRA'
    end
  end
  object frx_dsPedidosItensDoa: TfrxDBDataset
    Description = 'PedidoItens'
    UserName = 'frx_dsPedidosItensDoa'
    CloseDataSource = False
    DataSet = db_PedidoItensDoa
    BCDToCurrency = False
    Left = 352
    Top = 400
  end
end
