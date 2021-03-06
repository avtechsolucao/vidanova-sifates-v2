inherited FrmEnderecoCliente: TFrmEnderecoCliente
  Caption = 'Cadastro de Endere'#231'os'
  ClientHeight = 462
  Constraints.MinHeight = 500
  Constraints.MinWidth = 680
  ExplicitHeight = 501
  PixelsPerInch = 96
  TextHeight = 15
  object pnNomeCliente: TPanel [0]
    Left = 0
    Top = 33
    Width = 930
    Height = 40
    Align = alTop
    Alignment = taLeftJustify
    BevelInner = bvRaised
    BevelKind = bkSoft
    BevelOuter = bvLowered
    Caption = '   [nome do cliente: ]'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  inherited FrmFrameBarra1: TFrmFrameBarra
    Color = 7368816
    TabOrder = 1
    inherited Image3: TImage
      ExplicitWidth = 664
    end
    inherited pnTitulo: TPanel
      inherited LblBarraTitulo: TLabel
        Caption = 'Endere'#231'o de Cliente'
        ExplicitWidth = 204
      end
      inherited Image2: TImage
        ExplicitLeft = 608
      end
    end
  end
  inherited FrmFrameBotoes1: TFrmFrameBotoes
    Top = 402
    TabOrder = 2
    ExplicitTop = 402
  end
  inherited dbEditPesquisar: TIDBEditDialog
    TabOrder = 3
    LabelCaption = '[***]'
    SearchQuery.Strings = (
      'SELECT * FROM CAD_CLIENTES_ENDERECOS'
      'WHERE'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'CODIGO'
        WhereSyntax = 'CODIGO'
        DisplayLabel = 'C'#211'DIGO:'
        DisplayWidth = 8
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'CEP'
        WhereSyntax = 'CEP'
        DisplayLabel = 'CEP:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'ENDERECO'
        WhereSyntax = 'ENDERECO'
        DisplayLabel = 'ENDERECO:'
        DisplayWidth = 35
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'NUMERO'
        WhereSyntax = 'NUMERO'
        DisplayLabel = 'NUMERO:'
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
        DisplayWidth = 32
        DisplayColumnWidth = 0
        FieldType = ftUnknown
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'ESTADO'
        WhereSyntax = 'ESTADO'
        DisplayLabel = 'UF:'
        DisplayWidth = 5
        DisplayColumnWidth = 0
        FieldType = ftUnknown
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end>
  end
  inherited pgControl: TPageControl
    Top = 73
    Height = 329
    TabOrder = 4
    ExplicitTop = 73
    ExplicitHeight = 329
    inherited tabPrincipal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 922
      ExplicitHeight = 299
      inherited GroupBox1: TGroupBox
        Height = 299
        ExplicitHeight = 299
        inherited cxGrid: TcxGrid
          Height = 280
          ExplicitHeight = 280
          inherited cxGridDados: TcxGridDBTableView
            inherited cxGridDadosNome: TcxGridDBColumn
              Caption = 'Endere'#231'o'
              DataBinding.FieldName = 'ENDERECO'
            end
          end
        end
      end
    end
    inherited tabDetalhe: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 922
      ExplicitHeight = 299
      inherited lblCodigo: TLabel
        Left = 5
        ExplicitLeft = 5
      end
      inherited lblNome: TLabel
        Left = 94
        Top = 48
        Width = 50
        Caption = 'Endere'#231'o'
        ExplicitLeft = 94
        ExplicitTop = 48
        ExplicitWidth = 50
      end
      object Label1: TLabel [2]
        Left = 570
        Top = 48
        Width = 43
        Height = 15
        Caption = 'N'#250'mero'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [3]
        Left = 5
        Top = 89
        Width = 75
        Height = 15
        Caption = 'Complemento'
        FocusControl = DBEdit2
      end
      object Label3: TLabel [4]
        Left = 250
        Top = 89
        Width = 35
        Height = 15
        Caption = 'Bairro'
        FocusControl = DBEdit3
      end
      object Label4: TLabel [5]
        Left = 5
        Top = 130
        Width = 38
        Height = 15
        Caption = 'Cidade'
        FocusControl = DBEdit4
      end
      object Label5: TLabel [6]
        Left = 598
        Top = 130
        Width = 14
        Height = 15
        Caption = 'UF'
        FocusControl = DBEdit5
      end
      object Label6: TLabel [7]
        Left = 5
        Top = 172
        Width = 109
        Height = 15
        Caption = 'Ponto de Refer'#234'ncia'
        FocusControl = DBEdit6
      end
      inherited EditCodigo: TDBEdit
        Left = 5
        ExplicitLeft = 5
      end
      inherited EditNome: TDBEdit
        Left = 94
        Top = 64
        Width = 473
        DataField = 'ENDERECO'
        TabOrder = 4
        ExplicitLeft = 94
        ExplicitTop = 64
        ExplicitWidth = 473
      end
      inherited rgStatus: TDBRadioGroup
        Left = 215
        Top = 215
        Width = 429
        Height = 60
        TabOrder = 12
        ExplicitLeft = 215
        ExplicitTop = 215
        ExplicitWidth = 429
        ExplicitHeight = 60
      end
      object DBEdit1: TDBEdit
        Left = 570
        Top = 64
        Width = 74
        Height = 23
        DataField = 'NUMERO'
        DataSource = dsTabela
        TabOrder = 5
      end
      object EditCEP: TIDBEditDialog
        Left = 5
        Top = 64
        Width = 86
        Height = 23
        HelpKeyWord = ''
        Color = clWindow
        Enabled = True
        TabOrder = 3
        Text = ''
        Visible = True
        OnChange = EditCEPChange
        OnValueValidate = EditCEPValueValidate
        EditType = etAlphaNumeric
        EmptyText = 'Tecle F8'
        LabelCaption = 'CEP'
        LabelTransparent = True
        LabelAlwaysEnabled = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -12
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Separator = ';'
        Version = '5.0.0.0'
        ButtonStyle = bsDropDown
        ButtonWidth = 16
        ButtonHint = 'Procurar...'
        Etched = False
        ButtonCaption = '...'
        DataField = 'CEP'
        DataSource = dsTabela
        ButtonKeyClickBtn = 119
        SQLdbFocusControl = EditNome
        SQLdbCampoRetorno = 'ENDERECO'
        SQLdbRetornoVazio = ' *** '
        SQLdbCampoParametro = 'CEP'
        SQLdbSQL.Strings = (
          'SELECT * FROM CAD_IBGEMUNICIPIO'
          'WHERE'
          'CEP=:CEP')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_IBGEMUNICIPIO'
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
        OnClose = EditCEPClose
        ConnectionDialog = FrmPrincipal.DBConexao
        Connection = FrmPrincipal.DBConexao
      end
      object EditIDTipoEndereco: TIDBEditDialog
        Left = 82
        Top = 24
        Width = 67
        Height = 23
        HelpKeyWord = ''
        Color = clWindow
        Enabled = True
        TabOrder = 1
        Text = ''
        Visible = True
        LabelCaption = 'Tipo de Endere'#231'o'
        LabelTransparent = True
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
        DataField = 'IDTIPOENDERECO'
        DataSource = dsTabela
        SQLdbFazBusca = True
        SQLdbFocusControl = EditTipoEndereco
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = ' *** '
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT * FROM CAD_TIPO_ENDERECO'
          'WHERE'
          'CODIGO=:CODIGO')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_TIPO_ENDERECO'
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
            SearchCase = scMixed
          end
          item
            FieldName = 'NOME'
            WhereSyntax = 'NOME'
            DisplayLabel = 'NOME:'
            DisplayWidth = 82
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = False
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'STATUS'
            WhereSyntax = 'STATUS'
            DisplayLabel = 'STATUS:'
            DisplayWidth = 10
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = False
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
      object EditTipoEndereco: TEdit
        Left = 151
        Top = 24
        Width = 493
        Height = 23
        CharCase = ecUpperCase
        Enabled = False
        TabOrder = 2
        Text = '***'
      end
      object DBEdit2: TDBEdit
        Left = 5
        Top = 105
        Width = 236
        Height = 23
        DataField = 'COMPLEMENTO'
        DataSource = dsTabela
        TabOrder = 6
      end
      object DBEdit3: TDBEdit
        Left = 250
        Top = 105
        Width = 394
        Height = 23
        DataField = 'BAIRRO'
        DataSource = dsTabela
        TabOrder = 7
      end
      object DBEdit4: TDBEdit
        Left = 5
        Top = 146
        Width = 587
        Height = 23
        DataField = 'CIDADE'
        DataSource = dsTabela
        TabOrder = 8
      end
      object DBEdit5: TDBEdit
        Left = 598
        Top = 146
        Width = 46
        Height = 23
        DataField = 'ESTADO'
        DataSource = dsTabela
        TabOrder = 9
      end
      object DBEdit6: TDBEdit
        Left = 5
        Top = 188
        Width = 639
        Height = 23
        DataField = 'REFERENCIA'
        DataSource = dsTabela
        TabOrder = 10
      end
      object GroupBox2: TGroupBox
        Left = 5
        Top = 215
        Width = 204
        Height = 60
        Caption = 'Telefone (opcional)'
        TabOrder = 11
        object Label7: TLabel
          Left = 9
          Top = 17
          Width = 24
          Height = 15
          Caption = 'DDD'
          FocusControl = DBEdit7
        end
        object Label8: TLabel
          Left = 60
          Top = 17
          Width = 45
          Height = 15
          Caption = 'Telefone'
          FocusControl = DBEdit8
        end
        object DBEdit7: TDBEdit
          Left = 9
          Top = 33
          Width = 48
          Height = 23
          DataField = 'DDD'
          DataSource = dsTabela
          TabOrder = 0
        end
        object DBEdit8: TDBEdit
          Left = 60
          Top = 33
          Width = 133
          Height = 23
          DataField = 'TELEFONE'
          DataSource = dsTabela
          TabOrder = 1
        end
      end
    end
  end
  inherited dbTabela: TFDQuery
    BeforePost = dbTabelaBeforePost
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_CAD_CLIENTES_ENDERECOS_ID'
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM CAD_CLIENTES_ENDERECOS'
      'WHERE'
      'IDCLIENTE=:IDCLIENTE')
    ParamData = <
      item
        Name = 'IDCLIENTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
end
