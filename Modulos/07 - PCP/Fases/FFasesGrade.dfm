object FrmFasesGrade: TFrmFasesGrade
  Left = 0
  Top = 1
  Caption = 'Montar Fases de Produ'#231#227'o'
  ClientHeight = 489
  ClientWidth = 918
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
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 45
    Width = 918
    Height = 383
    Align = alClient
    TabOrder = 0
    object GroupBox3: TGroupBox
      Left = 2
      Top = 33
      Width = 914
      Height = 55
      Align = alTop
      TabOrder = 0
      object Label3: TLabel
        Left = 87
        Top = 10
        Width = 31
        Height = 13
        Caption = 'Nome:'
        FocusControl = EditNome
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 10
        Top = 10
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
      object EditNome: TDBEdit
        Left = 87
        Top = 25
        Width = 412
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOME'
        DataSource = BaseDados_PCP.ds_FasesGrade
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 10
        Top = 25
        Width = 67
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'CODIGO'
        DataSource = BaseDados_PCP.ds_FasesGrade
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBCheckBox1: TDBCheckBox
        Left = 505
        Top = 27
        Width = 97
        Height = 17
        Hint = 'Imprimir na Ordem de Produ'#231#227'o'
        Caption = 'Imprimir na O.P.'
        DataField = 'IMPRIMEOP'
        DataSource = BaseDados_PCP.ds_FasesGrade
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object GroupBox4: TGroupBox
      Left = 2
      Top = 88
      Width = 914
      Height = 293
      Align = alClient
      Caption = 'Fases de Produ'#231#227'o'
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 2
        Top = 44
        Width = 910
        Height = 247
        Align = alClient
        DataSource = BaseDados_PCP.ds_FasesGradeLista
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Calibri'
        TitleFont.Style = []
        OnEnter = DBGrid1Enter
        OnKeyDown = DBGrid1KeyDown
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'FASE'
            Title.Caption = 'FASE:'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ORDEM'
            Title.Caption = 'ORDEM:'
            Width = 91
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'NOME'
            ReadOnly = True
            Title.Caption = 'NOME:'
            Width = 567
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPRIMEOP'
            PickList.Strings = (
              'S'
              'N')
            Title.Caption = 'IMPRIMIR:'
            Width = 62
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 2
        Top = 15
        Width = 910
        Height = 29
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 1
        object BtnCarregar: TSpeedButton
          Left = 8
          Top = 4
          Width = 85
          Height = 22
          Caption = 'Carregar fases'
          OnClick = BtnCarregarClick
        end
        object BtnDeletarLinha: TSpeedButton
          Left = 99
          Top = 4
          Width = 85
          Height = 22
          Caption = 'Deletar linha'
          OnClick = BtnDeletarLinhaClick
        end
        object BtnDeletarTudo: TSpeedButton
          Left = 190
          Top = 4
          Width = 85
          Height = 22
          Caption = 'Deletar tudo'
          OnClick = BtnDeletarTudoClick
        end
      end
    end
    object Navegador: TDBNavigator
      Left = 2
      Top = 15
      Width = 914
      Height = 18
      Cursor = crHandPoint
      DataSource = BaseDados_PCP.ds_FasesGrade
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
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 428
    Width = 918
    Height = 61
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 428
    ExplicitWidth = 918
    ExplicitHeight = 61
    inherited PanelBotoesBottom: TPanel
      Width = 908
      Height = 55
      ExplicitWidth = 908
      ExplicitHeight = 55
      inherited SpbAdicionar: TSpeedButton
        Left = 14
        Height = 51
        ExplicitLeft = 14
        ExplicitHeight = 51
      end
      inherited SpbEditar: TSpeedButton
        Left = 214
        Height = 51
        ExplicitLeft = 214
        ExplicitHeight = 51
      end
      inherited SpbCancelar: TSpeedButton
        Left = 314
        Height = 51
        ExplicitLeft = 314
        ExplicitHeight = 51
      end
      inherited SpbSalvar: TSpeedButton
        Left = 114
        Height = 51
        ExplicitLeft = 114
        ExplicitHeight = 51
      end
      inherited SpbExcluir: TSpeedButton
        Left = 414
        Height = 51
        ExplicitLeft = 414
        ExplicitHeight = 51
      end
      inherited SpbImprimir: TSpeedButton
        Left = 614
        Height = 51
        ExplicitLeft = 614
        ExplicitHeight = 51
      end
      inherited SpbSair: TSpeedButton
        Left = 804
        Height = 51
        ExplicitLeft = 804
        ExplicitHeight = 51
      end
      inherited SpbExtra: TSpeedButton
        Left = 714
        Height = 51
        ExplicitLeft = 714
        ExplicitHeight = 51
      end
      inherited SpbProcurar: TSpeedButton
        Left = 514
        Height = 51
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 514
        ExplicitHeight = 51
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 918
    Height = 45
    Align = alTop
    AutoSize = True
    Constraints.MinHeight = 45
    Color = 16024898
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    ExplicitWidth = 918
    ExplicitHeight = 45
    inherited Image3: TImage
      Width = 918
      Height = 45
      ExplicitWidth = 617
      ExplicitHeight = 45
    end
    inherited pnTitulo: TPanel
      Width = 918
      Height = 45
      ExplicitWidth = 918
      ExplicitHeight = 45
      inherited LblBarraTitulo: TLabel
        Width = 775
        Height = 37
        Caption = 'Montar Fases de Produ'#231#227'o'
        ExplicitWidth = 271
        ExplicitHeight = 37
      end
      inherited Image1: TImage
        Height = 43
      end
      inherited Image2: TImage
        Left = 859
        Height = 37
        ExplicitLeft = 561
        ExplicitHeight = 37
      end
    end
  end
  object dbEditPesquisarFasesGrade: TIDBEditDialog
    Left = 408
    Top = 6
    Width = 75
    Height = 21
    Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
    HelpKeyWord = ''
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    ShowHint = True
    TabOrder = 3
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
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = '***'
    SQLdbCampoParametro = 'CODIGO'
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM CAD_FASESGRADE'
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
        FieldName = 'NOME'
        WhereSyntax = 'NOME'
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
  object dbEditPesquisarFases: TIDBEditDialog
    Left = 272
    Top = 230
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
    LabelCaption = 'Fase:'
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
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = '***'
    SQLdbCampoParametro = 'CODIGO'
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
        DisplayWidth = 12
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
