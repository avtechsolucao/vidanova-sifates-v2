object FrmProcessos_Maquinas: TFrmProcessos_Maquinas
  Left = 277
  Top = 107
  Caption = 'Processos de M'#225'quinas'
  ClientHeight = 412
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
    Height = 283
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
    object DBEdit2: TDBEdit
      Left = 10
      Top = 30
      Width = 67
      Height = 21
      CharCase = ecUpperCase
      Color = clBtnFace
      DataField = 'CODIGO'
      DataSource = BaseDados_PCP.ds_VincMaquinas
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 84
      Width = 926
      Height = 197
      Align = alBottom
      Caption = 'Processos executados pela m'#225'quina'
      TabOrder = 3
      OnEnter = GroupBox2Enter
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 922
        Height = 180
        Align = alClient
        DataSource = BaseDados_PCP.ds_VincMaquinasDetalhes
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
            Width = 415
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'TEMPO'
            ReadOnly = True
            Title.Caption = 'Tempo:'
            Visible = True
          end>
      end
      object LocalizaProcessos: TIDBEditDialog
        Left = 330
        Top = 110
        Width = 65
        Height = 21
        HelpKeyWord = ''
        Color = clWindow
        Enabled = True
        TabOrder = 1
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
        DataField = 'CODIGO'
        DataSource = BaseDados_PCP.ds_maquinas
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
          end
          item
            FieldName = 'CUSTO'
            WhereSyntax = 'CUSTO'
            DisplayLabel = 'CUSTO'
            DisplayWidth = 10
            DisplayColumnWidth = 0
            FieldType = ftFloat
            Search = True
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
    object IDBEditDialog1: TIDBEditDialog
      Left = 80
      Top = 30
      Width = 65
      Height = 21
      HelpKeyWord = ''
      Color = clWindow
      Enabled = True
      TabOrder = 1
      Text = ''
      Visible = True
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
      DataField = 'MAQUINA'
      DataSource = BaseDados_PCP.ds_VincMaquinas
      ButtonKeyClickBtn = 119
      SQLdbFazBusca = True
      SQLdbFocusControl = Edit1
      SQLdbCampoRetorno = 'NOME'
      SQLdbRetornoVazio = ' *** '
      SQLdbCampoParametro = 'CODIGO'
      SQLdbSQL.Strings = (
        'SELECT * FROM CAD_MAQUINAS'
        'WHERE'
        'CODIGO=:CODIGO')
      SQLdbMaxLenght = 10
      SearchQuery.Strings = (
        'SELECT * FROM CAD_MAQUINAS'
        'WHERE'
        '%WHERE%'
        'ORDER BY NOME'
        '')
      CountQuery.Strings = (
        'SELECT COUNT(*) FROM CAD_MAQUINAS'
        'WHERE'
        '%WHERE%'
        'ORDER BY NOME')
      SearchDialogFieldList = <
        item
          FieldName = 'CODIGO'
          WhereSyntax = 'CODIGO'
          DisplayLabel = 'C'#211'DIGO:'
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
          DisplayLabel = 'NOME:'
          DisplayWidth = 65
          DisplayColumnWidth = 0
          FieldType = ftString
          Search = True
          EmptyOperation = eoNull
          DefaultComparison = scContains
          SearchCase = scUpper
        end
        item
          FieldName = 'NRO_AGULHAS'
          WhereSyntax = 'NRO_AGULHAS'
          DisplayLabel = 'AGULHAS:'
          DisplayWidth = 10
          DisplayColumnWidth = 0
          FieldType = ftInteger
          Search = False
          EmptyOperation = eoNull
          DefaultComparison = scEqual
          SearchCase = scMixed
        end
        item
          FieldName = 'NRO_FIOS'
          WhereSyntax = 'NRO_FIOS'
          DisplayLabel = 'FIOS:'
          DisplayWidth = 10
          DisplayColumnWidth = 0
          FieldType = ftInteger
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
    object Edit1: TEdit
      Left = 147
      Top = 30
      Width = 428
      Height = 21
      Color = clBtnFace
      TabOrder = 2
      Text = '***'
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 352
    Width = 930
    Height = 60
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 930
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 352
    ExplicitWidth = 930
    inherited PanelBotoesBottom: TPanel
      Width = 920
      ExplicitWidth = 920
      inherited SpbAdicionar: TSpeedButton
        Left = 26
        ExplicitLeft = 26
      end
      inherited SpbEditar: TSpeedButton
        Left = 226
        ExplicitLeft = 226
      end
      inherited SpbCancelar: TSpeedButton
        Left = 326
        ExplicitLeft = 326
      end
      inherited SpbSalvar: TSpeedButton
        Left = 126
        ExplicitLeft = 126
      end
      inherited SpbExcluir: TSpeedButton
        Left = 426
        ExplicitLeft = 426
      end
      inherited SpbImprimir: TSpeedButton
        Left = 626
        ExplicitLeft = 626
      end
      inherited SpbSair: TSpeedButton
        Left = 816
        ExplicitLeft = 816
      end
      inherited SpbExtra: TSpeedButton
        Left = 726
        ExplicitLeft = 726
      end
      inherited SpbProcurar: TSpeedButton
        Left = 526
        ExplicitLeft = 526
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
        Caption = 'Processos por Maquina'
        ExplicitWidth = 143
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
    DataSource = BaseDados_PCP.ds_VincMaquinas
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
