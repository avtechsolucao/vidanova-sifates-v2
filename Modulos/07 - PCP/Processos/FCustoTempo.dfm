object FrmCustoTempo: TFrmCustoTempo
  Left = 0
  Top = 1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Custo/Tempo Produ'#231#227'o'
  ClientHeight = 355
  ClientWidth = 860
  Color = clBtnFace
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 69
    Width = 860
    Height = 226
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 25
      Width = 33
      Height = 13
      Caption = '&C'#243'digo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
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
    object Label3: TLabel
      Left = 82
      Top = 25
      Width = 28
      Height = 13
      Caption = 'Nome'
      FocusControl = EditNome
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 447
      Top = 25
      Width = 33
      Height = 13
      Caption = 'Tempo'
      FocusControl = EditNome
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 510
      Top = 25
      Width = 32
      Height = 13
      Caption = 'Custos'
      FocusControl = EditNome
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit2: TDBEdit
      Left = 10
      Top = 40
      Width = 67
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CODIGO'
      DataSource = BaseDados_PCP.ds_Cad_processos
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object EditNome: TDBEdit
      Left = 82
      Top = 40
      Width = 359
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCRICAO'
      DataSource = BaseDados_PCP.ds_Cad_processos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Edittempo: TDBEdit
      Left = 447
      Top = 40
      Width = 55
      Height = 21
      Hint = 
        'Minutos e segundos. A separa'#231#227'o entre minuto e segundo '#233' automat' +
        'ica. Digite sem usar simbolos.'
      DataField = 'TEMPO'
      DataSource = BaseDados_PCP.ds_Cad_processos
      MaxLength = 5
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 510
      Top = 40
      Width = 82
      Height = 21
      DataField = 'CUSTO'
      DataSource = BaseDados_PCP.ds_Cad_processos
      MaxLength = 5
      TabOrder = 3
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 96
      Width = 856
      Height = 128
      Align = alBottom
      Caption = 'Instru'#231#245'es'
      TabOrder = 4
      object DBMemo1: TDBMemo
        Left = 2
        Top = 15
        Width = 852
        Height = 111
        Align = alClient
        DataField = 'INSTRUCOES'
        DataSource = BaseDados_PCP.ds_Cad_processos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        OnKeyPress = DBMemo1KeyPress
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 860
    Height = 45
    Align = alTop
    AutoSize = True
    Constraints.MinHeight = 45
    TabOrder = 1
    ExplicitWidth = 860
    inherited Image3: TImage
      Width = 860
      ExplicitWidth = 649
    end
    inherited pnTitulo: TPanel
      Width = 860
      ExplicitWidth = 860
      inherited LblBarraTitulo: TLabel
        Width = 728
        Caption = 'Custo/Tempo Produ'#231#227'o'
        ExplicitWidth = 354
      end
      inherited Image1: TImage
        Left = 804
      end
      inherited Image2: TImage
        ExplicitLeft = 593
      end
    end
  end
  object Navegador: TDBNavigator
    Left = 0
    Top = 45
    Width = 860
    Height = 24
    Cursor = crHandPoint
    DataSource = BaseDados_PCP.ds_Cad_processos
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Align = alTop
    Flat = True
    Hints.Strings = (
      'In'#237'cio do Arquivo'
      'Registro Anterior'
      'Pr'#243'ximo Registro'
      'Final do Arquivo')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 295
    Width = 860
    Height = 60
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    TabStop = True
    ExplicitTop = 295
    ExplicitWidth = 860
    inherited pnTitulo: TPanel
      Width = 860
      ExplicitWidth = 860
      inherited PanelBotoes: TPanel
        Width = 848
        ExplicitWidth = 848
        inherited PanelBotoesBottom: TPanel
          Width = 842
          ExplicitLeft = 1
          ExplicitTop = 1
          ExplicitWidth = 842
          ExplicitHeight = 46
          inherited SpbAdicionar: TSpeedButton
            OnClick = FrmFrameBotoes1SpbAdicionarClick
          end
          inherited SpbEditar: TSpeedButton
            OnClick = FrmFrameBotoes1SpbEditarClick
          end
          inherited SpbCancelar: TSpeedButton
            OnClick = FrmFrameBotoes1SpbCancelarClick
          end
          inherited SpbSalvar: TSpeedButton
            OnClick = FrmFrameBotoes1SpbSalvarClick
          end
          inherited SpbExcluir: TSpeedButton
            OnClick = FrmFrameBotoes1SpbExcluirClick
          end
          inherited SpbSair: TSpeedButton
            Left = 738
            OnClick = FrmFrameBotoes1SpbSairClick
            ExplicitLeft = 728
          end
          inherited SpbExtra: TSpeedButton
            Left = 648
            ExplicitLeft = 638
          end
          inherited SpbProcurar: TSpeedButton
            OnClick = FrmFrameBotoes1SpbProcurarClick
          end
        end
      end
    end
  end
  object dbEditPesquisarProcessos: TIDBEditDialog
    Left = 517
    Top = 6
    Width = 75
    Height = 21
    Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
    HelpKeyWord = ''
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    ShowHint = True
    TabOrder = 4
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
      'SELECT * FROM CAD_PROCESSOS'
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
        FieldName = 'DESCRICAO'
        WhereSyntax = 'DESCRICAO'
        DisplayLabel = 'DESCRI'#199#195'O:'
        DisplayWidth = 60
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'TEMPO'
        WhereSyntax = 'TEMPO'
        DisplayLabel = 'TEMPO:'
        DisplayFormat = '0#:0#'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'CUSTO'
        WhereSyntax = 'CUSTO'
        DisplayLabel = 'CUSTO:'
        DisplayFormat = '###,##0.000'
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
