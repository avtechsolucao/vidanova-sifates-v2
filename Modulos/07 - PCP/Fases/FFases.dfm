object FrmFases: TFrmFases
  Left = 291
  Top = 230
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Fases'
  ClientHeight = 212
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
    Height = 83
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 8
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
      Left = 83
      Top = 8
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
    object DBEdit2: TDBEdit
      Left = 10
      Top = 23
      Width = 67
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CODIGO'
      DataSource = BaseDados_PCP.ds_fases
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
      Left = 83
      Top = 23
      Width = 433
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = BaseDados_PCP.ds_fases
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBCheckBox1: TDBCheckBox
      Left = 14
      Top = 61
      Width = 171
      Height = 17
      Hint = 'Imprimir na Ordem de Produ'#231#227'o'
      Caption = 'Imprimir na Ordem de Produ'#231#227'o'
      DataField = 'IMPRIMEOP'
      DataSource = BaseDados_PCP.ds_fases
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      ValueChecked = 'S'
      ValueUnchecked = 'N'
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
    Color = 16024898
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    ExplicitWidth = 860
    ExplicitHeight = 45
    inherited Image3: TImage
      Width = 860
      Height = 45
      ExplicitWidth = 567
      ExplicitHeight = 45
    end
    inherited pnTitulo: TPanel
      Width = 860
      Height = 45
      ExplicitWidth = 860
      ExplicitHeight = 45
      inherited LblBarraTitulo: TLabel
        Width = 717
        Height = 37
        Caption = 'Cadastro de Fases'
        ExplicitWidth = 184
        ExplicitHeight = 37
      end
      inherited Image1: TImage
        Height = 43
      end
      inherited Image2: TImage
        Left = 801
        Height = 37
        ExplicitLeft = 511
        ExplicitHeight = 37
      end
    end
  end
  object Navegador: TDBNavigator
    Left = 0
    Top = 45
    Width = 860
    Height = 24
    Cursor = crHandPoint
    DataSource = BaseDados_PCP.ds_fases
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
    Top = 152
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
    ExplicitTop = 152
    ExplicitWidth = 860
    inherited PanelBotoesBottom: TPanel
      Width = 850
      ExplicitWidth = 850
      inherited SpbAdicionar: TSpeedButton
        Left = -44
        ExplicitLeft = -44
      end
      inherited SpbEditar: TSpeedButton
        Left = 156
        ExplicitLeft = 156
      end
      inherited SpbCancelar: TSpeedButton
        Left = 256
        ExplicitLeft = 256
      end
      inherited SpbSalvar: TSpeedButton
        Left = 56
        ExplicitLeft = 56
      end
      inherited SpbExcluir: TSpeedButton
        Left = 356
        ExplicitLeft = 356
      end
      inherited SpbImprimir: TSpeedButton
        Left = 556
        ExplicitLeft = 556
      end
      inherited SpbSair: TSpeedButton
        Left = 746
        ExplicitLeft = 746
      end
      inherited SpbExtra: TSpeedButton
        Left = 656
        ExplicitLeft = 656
      end
      inherited SpbProcurar: TSpeedButton
        Left = 456
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 456
      end
    end
  end
  object dbEditPesquisar: TIDBEditDialog
    Left = 408
    Top = 8
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
      'SELECT * FROM CAD_FASES'
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
        DisplayWidth = 75
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'IMPRIMEOP'
        WhereSyntax = 'IMPRIMEOP'
        DisplayLabel = 'IMPRIMIR NA OP:'
        DisplayWidth = 16
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
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
end
