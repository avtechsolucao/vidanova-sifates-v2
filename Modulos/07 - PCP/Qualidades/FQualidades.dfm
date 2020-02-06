object FrmQualidades: TFrmQualidades
  Left = 1
  Top = 1
  Caption = 'Cadastro de Qualidades'
  ClientHeight = 254
  ClientWidth = 930
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
    Width = 930
    Height = 123
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
    object Label1: TLabel
      Left = 8
      Top = 15
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
    object Label3: TLabel
      Left = 79
      Top = 15
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
      Left = 8
      Top = 30
      Width = 67
      Height = 21
      CharCase = ecUpperCase
      Color = 14811135
      DataField = 'CODIGO'
      DataSource = BaseDados_PCP.ds_qualidades
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
      Left = 79
      Top = 30
      Width = 466
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCRICAO'
      DataSource = BaseDados_PCP.ds_qualidades
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 2
      Top = 55
      Width = 926
      Height = 66
      Align = alBottom
      Caption = 'Enviar para o estoque principal:'
      Columns = 2
      Items.Strings = (
        'SIM'
        'N'#194'O')
      TabOrder = 2
      Values.Strings = (
        'S'
        'N')
      Visible = False
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 192
    Width = 930
    Height = 62
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 930
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 192
    ExplicitWidth = 930
    ExplicitHeight = 62
    inherited PanelBotoesBottom: TPanel
      Width = 920
      Height = 56
      ExplicitWidth = 920
      ExplicitHeight = 56
      inherited SpbAdicionar: TSpeedButton
        Left = 26
        Height = 52
        ExplicitLeft = 26
        ExplicitHeight = 52
      end
      inherited SpbEditar: TSpeedButton
        Left = 226
        Height = 52
        ExplicitLeft = 226
        ExplicitHeight = 52
      end
      inherited SpbCancelar: TSpeedButton
        Left = 326
        Height = 52
        ExplicitLeft = 326
        ExplicitHeight = 52
      end
      inherited SpbSalvar: TSpeedButton
        Left = 126
        Height = 52
        ExplicitLeft = 126
        ExplicitHeight = 52
      end
      inherited SpbExcluir: TSpeedButton
        Left = 426
        Height = 52
        ExplicitLeft = 426
        ExplicitHeight = 52
      end
      inherited SpbImprimir: TSpeedButton
        Left = 626
        Height = 52
        ExplicitLeft = 626
        ExplicitHeight = 52
      end
      inherited SpbSair: TSpeedButton
        Left = 816
        Height = 52
        ExplicitLeft = 816
        ExplicitHeight = 52
      end
      inherited SpbExtra: TSpeedButton
        Left = 726
        Height = 52
        ExplicitLeft = 726
        ExplicitHeight = 52
      end
      inherited SpbProcurar: TSpeedButton
        Left = 526
        Height = 52
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 526
        ExplicitHeight = 52
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 930
    Height = 45
    Align = alTop
    AutoSize = True
    Constraints.MinHeight = 45
    Color = 16024898
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    ExplicitWidth = 930
    ExplicitHeight = 45
    inherited Image3: TImage
      Width = 930
      Height = 45
      ExplicitWidth = 930
      ExplicitHeight = 45
    end
    inherited pnTitulo: TPanel
      Width = 930
      Height = 45
      ExplicitWidth = 930
      ExplicitHeight = 45
      inherited LblBarraTitulo: TLabel
        Width = 787
        Height = 37
        Caption = 'Cadastro de Qualidades'
        ExplicitWidth = 146
        ExplicitHeight = 33
      end
      inherited Image1: TImage
        Height = 43
      end
      inherited Image2: TImage
        Left = 871
        Height = 37
        ExplicitLeft = 874
        ExplicitHeight = 37
      end
    end
  end
  object Navegador: TDBNavigator
    Left = 0
    Top = 45
    Width = 930
    Height = 24
    Cursor = crHandPoint
    DataSource = BaseDados_PCP.ds_qualidades
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
    TabOrder = 3
  end
  object EditDefeito: TIDBEditDialog
    Left = 51
    Top = 4
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
    TabOrder = 4
    Text = '0'
    Visible = False
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
    ButtonKeyClickBtn = 119
    SQLdbFazBusca = True
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
