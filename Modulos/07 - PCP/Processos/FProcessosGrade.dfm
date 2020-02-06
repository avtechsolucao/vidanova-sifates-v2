object FrmProcessosGrade: TFrmProcessosGrade
  Left = 265
  Top = 167
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Processo de Produ'#231#227'o'
  ClientHeight = 431
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
    Height = 301
    Align = alClient
    TabOrder = 0
    object GroupBox3: TGroupBox
      Left = 2
      Top = 15
      Width = 926
      Height = 64
      Align = alTop
      TabOrder = 0
      object Label3: TLabel
        Left = 87
        Top = 15
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
      object EditNome: TDBEdit
        Left = 87
        Top = 30
        Width = 474
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOME'
        DataSource = BaseDados_PCP.ds_Cad_processosdGrade
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 10
        Top = 30
        Width = 67
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'CODIGO'
        DataSource = BaseDados_PCP.ds_Cad_processosdGrade
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object LocalizaProcessosGrade: TIDBEditDialog
        Left = 219
        Top = 3
        Width = 65
        Height = 21
        HelpKeyWord = ''
        Color = clWindow
        Enabled = True
        TabOrder = 2
        Text = ''
        Visible = False
        LabelCaption = 'C'#243'digo da M'#225'quina'
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
          'SELECT * FROM CAD_PROCESSOSGRADE'
          'WHERE'
          'CODIGO=:CODIGO')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_PROCESSOSGRADE'
          'WHERE'
          '%WHERE%'
          'ORDER BY NOME'
          '')
        CountQuery.Strings = (
          'SELECT COUNT(*) FROM CAD_PROCESSOSGRADE'
          'WHERE'
          '%WHERE%'
          'ORDER BY NOME')
        SearchDialogFieldList = <
          item
            FieldName = 'CODIGO'
            WhereSyntax = 'CODIGO'
            DisplayLabel = 'CODIGO:'
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
            DisplayWidth = 62
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'TEMPO_TOTAL'
            WhereSyntax = 'TEMPO_TOTAL'
            DisplayLabel = 'TEMPO TOTAL:'
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
            FieldName = 'CUSTO_TOTAL'
            WhereSyntax = 'CUSTO_TOTAL'
            DisplayLabel = 'CUSTO TOTAL:'
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
    object GroupBox4: TGroupBox
      Left = 2
      Top = 79
      Width = 926
      Height = 220
      Align = alClient
      Caption = 'Grade de Processos'
      TabOrder = 1
      OnEnter = GroupBox4Enter
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 922
        Height = 153
        Align = alClient
        DataSource = BaseDados_PCP.ds_Cad_processosdLista
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnEditButtonClick = DBGrid1EditButtonClick
        OnKeyDown = DBGrid1KeyDown
        Columns = <
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'PROCESSO'
            Title.Caption = 'Processo:'
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'NOME'
            ReadOnly = True
            Title.Caption = 'Nome:'
            Width = 311
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'TEMPO'
            ReadOnly = True
            Title.Caption = 'Tempo:'
            Width = 75
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'CUSTO'
            ReadOnly = True
            Title.Caption = 'Custo:'
            Width = 90
            Visible = True
          end>
      end
      object GroupBox2: TGroupBox
        Left = 2
        Top = 168
        Width = 922
        Height = 50
        Align = alBottom
        Enabled = False
        TabOrder = 1
        object DBEdit1: TDBEdit
          Left = 472
          Top = 16
          Width = 87
          Height = 21
          Color = clBtnFace
          DataField = 'CUSTO_TOTAL'
          DataSource = BaseDados_PCP.ds_Cad_processosdGrade
          TabOrder = 0
        end
        object DBEdit3: TDBEdit
          Left = 392
          Top = 16
          Width = 74
          Height = 21
          Color = clBtnFace
          DataField = 'TEMPO_TOTAL'
          DataSource = BaseDados_PCP.ds_Cad_processosdGrade
          TabOrder = 1
        end
      end
      object LocalizaProcessos: TIDBEditDialog
        Left = 12
        Top = 62
        Width = 65
        Height = 21
        HelpKeyWord = ''
        Color = clWindow
        Enabled = True
        TabOrder = 2
        Text = ''
        Visible = False
        LabelCaption = 'C'#243'digo da M'#225'quina'
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
        SQLdbCampoRetorno = 'DESCRICAO'
        SQLdbRetornoVazio = ' *** '
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT * FROM CAD_PROCESSOS'
          'WHERE'
          'CODIGO=:CODIGO')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_PROCESSOS'
          'WHERE'
          '%WHERE%'
          'ORDER BY DESCRICAO'
          '')
        CountQuery.Strings = (
          'SELECT COUNT(*) FROM CAD_PROCESSOS'
          'WHERE'
          '%WHERE%'
          'ORDER BY DESCRICAO')
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
            FieldName = 'DESCRICAO'
            WhereSyntax = 'DESCRICAO'
            DisplayLabel = 'DESCRI'#199#195'O:'
            DisplayWidth = 75
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
            DisplayWidth = 10
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
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 370
    Width = 930
    Height = 61
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 930
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 370
    ExplicitWidth = 930
    ExplicitHeight = 61
    inherited PanelBotoesBottom: TPanel
      Width = 920
      Height = 55
      ExplicitWidth = 920
      ExplicitHeight = 55
      inherited SpbAdicionar: TSpeedButton
        Left = 26
        Height = 51
        ExplicitLeft = 26
        ExplicitHeight = 51
      end
      inherited SpbEditar: TSpeedButton
        Left = 226
        Height = 51
        ExplicitLeft = 226
        ExplicitHeight = 51
      end
      inherited SpbCancelar: TSpeedButton
        Left = 326
        Height = 51
        ExplicitLeft = 326
        ExplicitHeight = 51
      end
      inherited SpbSalvar: TSpeedButton
        Left = 126
        Height = 51
        ExplicitLeft = 126
        ExplicitHeight = 51
      end
      inherited SpbExcluir: TSpeedButton
        Left = 426
        Height = 51
        ExplicitLeft = 426
        ExplicitHeight = 51
      end
      inherited SpbImprimir: TSpeedButton
        Left = 626
        Height = 51
        ExplicitLeft = 626
        ExplicitHeight = 51
      end
      inherited SpbSair: TSpeedButton
        Left = 816
        Height = 51
        ExplicitLeft = 816
        ExplicitHeight = 51
      end
      inherited SpbExtra: TSpeedButton
        Left = 726
        Height = 51
        ExplicitLeft = 726
        ExplicitHeight = 51
      end
      inherited SpbProcurar: TSpeedButton
        Left = 526
        Height = 51
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 526
        ExplicitHeight = 51
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
        Caption = 'Grade de Processo de Produ'#231#227'o'
        ExplicitWidth = 324
        ExplicitHeight = 37
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
    DataSource = BaseDados_PCP.ds_Cad_processosdGrade
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
end
