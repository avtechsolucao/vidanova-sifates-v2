object FrmColecao: TFrmColecao
  Left = 237
  Top = 114
  Caption = 'Cole'#231#227'o'
  ClientHeight = 527
  ClientWidth = 878
  Color = clBtnFace
  Constraints.MinHeight = 550
  Constraints.MinWidth = 670
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 467
    Width = 878
    Height = 60
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TabStop = True
    ExplicitTop = 467
    ExplicitWidth = 878
    inherited PanelBotoesBottom: TPanel
      Width = 868
      ExplicitWidth = 868
      inherited SpbAdicionar: TSpeedButton
        Left = -26
        ExplicitLeft = -26
      end
      inherited SpbEditar: TSpeedButton
        Left = 174
        ExplicitLeft = 174
      end
      inherited SpbCancelar: TSpeedButton
        Left = 274
        ExplicitLeft = 274
      end
      inherited SpbSalvar: TSpeedButton
        Left = 74
        ExplicitLeft = 74
      end
      inherited SpbExcluir: TSpeedButton
        Left = 374
        ExplicitLeft = 374
      end
      inherited SpbImprimir: TSpeedButton
        Left = 574
        ExplicitLeft = 574
      end
      inherited SpbSair: TSpeedButton
        Left = 764
        ExplicitLeft = 764
      end
      inherited SpbExtra: TSpeedButton
        Left = 674
        ExplicitLeft = 674
      end
      inherited SpbProcurar: TSpeedButton
        Left = 474
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 474
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 878
    Height = 45
    Align = alTop
    AutoSize = True
    Constraints.MinHeight = 45
    Color = 14120960
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    ExplicitWidth = 878
    ExplicitHeight = 45
    inherited Image3: TImage
      Width = 878
      Height = 45
      ExplicitWidth = 654
      ExplicitHeight = 45
    end
    inherited pnTitulo: TPanel
      Width = 878
      Height = 45
      ExplicitWidth = 878
      ExplicitHeight = 45
      inherited LblBarraTitulo: TLabel
        Width = 735
        Height = 37
        Caption = 'Cadastro de Cole'#231#227'o'
        ExplicitWidth = 210
        ExplicitHeight = 33
      end
      inherited Image1: TImage
        Height = 43
      end
      inherited Image2: TImage
        Left = 819
        Height = 37
        ExplicitLeft = 598
        ExplicitHeight = 37
      end
    end
  end
  object dbEditPesquisar: TIDBEditDialog
    Left = 510
    Top = 8
    Width = 75
    Height = 21
    Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
    HelpKeyWord = ''
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    ShowHint = True
    TabOrder = 2
    Text = ''
    Visible = False
    LabelCaption = 'Cole'#231#227'o:'
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
    DataField = 'COLECAO'
    DataSource = BaseDados_PCP.ds_referencias
    ButtonKeyClickBtn = 119
    SQLdbFazBusca = True
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = '***'
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      'SELECT NOME FROM CAD_COLECAO'
      'WHERE'
      'CODIGO=:CODIGO'
      '')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM CAD_COLECAO'
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
        DisplayWidth = 40
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'PERIODO_INI'
        WhereSyntax = 'PERIODO_INI'
        DisplayLabel = 'Periodo de:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftDate
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'PERIODO_FIM'
        WhereSyntax = 'PERIODO_FIM'
        DisplayLabel = 'Periodo at'#233':'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftDate
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'PECAS_META'
        WhereSyntax = 'PECAS_META'
        DisplayLabel = 'Produ'#231#227'o Estimada:'
        DisplayFormat = '###,##0'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'STATUS'
        WhereSyntax = 'STATUS'
        DisplayLabel = 'Ativa'
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
  object pgCtrlColecao: TPageControl
    Left = 0
    Top = 45
    Width = 878
    Height = 422
    ActivePage = TabRegistros
    Align = alClient
    TabOrder = 3
    object TabRegistros: TTabSheet
      Caption = 'Registros'
      object cxGrid: TcxGrid
        Left = 0
        Top = 0
        Width = 870
        Height = 394
        Align = alClient
        TabOrder = 0
        object cxGridDados: TcxGridDBTableView
          OnDblClick = cxGridDadosDblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = BaseDados_PCP.ds_colecao
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          object cxGridDadosCodigo: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CODIGO'
            Options.Filtering = False
            Options.AutoWidthSizable = False
            Options.Grouping = False
            Styles.Content = cxStyle1
            Width = 75
          end
          object cxGridDadosNome: TcxGridDBColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NOME'
            Options.Grouping = False
            Width = 471
          end
          object cxGridDadosStatus: TcxGridDBColumn
            Caption = 'Ativado'
            DataBinding.FieldName = 'STATUS'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            HeaderAlignmentHorz = taCenter
            Options.AutoWidthSizable = False
          end
        end
        object cxGridNivel: TcxGridLevel
          GridView = cxGridDados
        end
      end
    end
    object TabEditar: TTabSheet
      Caption = 'Editar'
      ImageIndex = 1
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 870
        Height = 394
        Align = alClient
        TabOrder = 0
        object Label10: TLabel
          Left = 5
          Top = 8
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 62
          Top = 8
          Width = 28
          Height = 13
          Caption = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 5
          Top = 99
          Width = 62
          Height = 13
          Caption = 'Data Cria'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 138
          Top = 99
          Width = 85
          Height = 13
          Caption = 'Data Lan'#231'amento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 5
          Top = 139
          Width = 66
          Height = 13
          Caption = 'Qtde Modelos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 172
          Top = 139
          Width = 112
          Height = 13
          Caption = 'Metas Pe'#231'as a Produzir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 336
          Top = 139
          Width = 101
          Height = 13
          Caption = 'Meta de Faturamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 260
          Top = 99
          Width = 56
          Height = 13
          Caption = 'Ciclo Inicial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 371
          Top = 99
          Width = 51
          Height = 13
          Caption = 'Ciclo Final:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 5
          Top = 178
          Width = 84
          Height = 13
          Caption = 'Tema da Cole'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 5
          Top = 218
          Width = 35
          Height = 13
          Caption = 'Estilista'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 5
          Top = 257
          Width = 45
          Height = 13
          Caption = 'Modelista'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 5
          Top = 296
          Width = 94
          Height = 13
          Caption = 'Produtor de Cen'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 5
          Top = 339
          Width = 45
          Height = 13
          Caption = 'Fotogr'#225'fo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object EditNome: TDBEdit
          Left = 62
          Top = 24
          Width = 405
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = BaseDados_PCP.ds_colecao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit7: TDBEdit
          Left = 5
          Top = 24
          Width = 51
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CODIGO'
          DataSource = BaseDados_PCP.ds_colecao
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit8: TDBEdit
          Left = 5
          Top = 115
          Width = 96
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DTCRIACAO'
          DataSource = BaseDados_PCP.ds_colecao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit9: TDBEdit
          Left = 138
          Top = 115
          Width = 96
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DTLANCAMENTO'
          DataSource = BaseDados_PCP.ds_colecao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit10: TDBEdit
          Left = 5
          Top = 155
          Width = 131
          Height = 21
          CharCase = ecUpperCase
          DataField = 'QTDEMODELOS'
          DataSource = BaseDados_PCP.ds_colecao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit11: TDBEdit
          Left = 172
          Top = 155
          Width = 131
          Height = 21
          CharCase = ecUpperCase
          DataField = 'META_QTDE'
          DataSource = BaseDados_PCP.ds_colecao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit12: TDBEdit
          Left = 336
          Top = 155
          Width = 131
          Height = 21
          CharCase = ecUpperCase
          DataField = 'META_VENDER'
          DataSource = BaseDados_PCP.ds_colecao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit13: TDBEdit
          Left = 260
          Top = 115
          Width = 96
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DTCICLOINICIAL'
          DataSource = BaseDados_PCP.ds_colecao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit14: TDBEdit
          Left = 371
          Top = 115
          Width = 96
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DTCICLOFINAL'
          DataSource = BaseDados_PCP.ds_colecao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit15: TDBEdit
          Left = 5
          Top = 193
          Width = 462
          Height = 21
          CharCase = ecUpperCase
          DataField = 'TEMACOLECAO'
          DataSource = BaseDados_PCP.ds_colecao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object DBEdit1: TDBEdit
          Left = 5
          Top = 233
          Width = 462
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ESTILISTA'
          DataSource = BaseDados_PCP.ds_colecao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object DBEdit2: TDBEdit
          Left = 5
          Top = 272
          Width = 462
          Height = 21
          CharCase = ecUpperCase
          DataField = 'MODELISTA'
          DataSource = BaseDados_PCP.ds_colecao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object DBEdit3: TDBEdit
          Left = 5
          Top = 311
          Width = 462
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CENARIO'
          DataSource = BaseDados_PCP.ds_colecao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object DBEdit4: TDBEdit
          Left = 5
          Top = 354
          Width = 462
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FOTOGRAFO'
          DataSource = BaseDados_PCP.ds_colecao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
        end
        object rgStatus: TDBRadioGroup
          Left = 62
          Top = 45
          Width = 405
          Height = 38
          Caption = 'Status'
          Columns = 2
          DataField = 'STATUS'
          DataSource = BaseDados_PCP.ds_colecao
          Items.Strings = (
            'Ativado'
            'Desativado')
          TabOrder = 14
          Values.Strings = (
            'S'
            'N')
        end
        object GroupBox1: TGroupBox
          Left = 473
          Top = 270
          Width = 158
          Height = 105
          Caption = 'Libera'#231#227'o'
          TabOrder = 15
          object DBCheckBox1: TDBCheckBox
            Left = 15
            Top = 32
            Width = 130
            Height = 17
            Caption = 'Gerente de Produ'#231#227'o'
            DataField = 'LIBERAR_GERENTEPRODUCAO'
            DataSource = BaseDados_PCP.ds_colecao
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox2: TDBCheckBox
            Left = 15
            Top = 55
            Width = 130
            Height = 17
            Caption = 'Gerente Comercial'
            DataField = 'LIBERAR_GERENTECOMERCIAL'
            DataSource = BaseDados_PCP.ds_colecao
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox3: TDBCheckBox
            Left = 15
            Top = 78
            Width = 130
            Height = 17
            Caption = 'Gerente Administrativo'
            DataField = 'LIBERAR_GERENTEADMINISTRATIVO'
            DataSource = BaseDados_PCP.ds_colecao
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
      end
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 8
    Top = 8
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 55293
      TextColor = clBlack
    end
  end
end
