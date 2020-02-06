object FrmEtiquetas: TFrmEtiquetas
  Left = 0
  Top = 1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Etiquetas'
  ClientHeight = 462
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
    Height = 331
    Align = alClient
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 2
      Top = 79
      Width = 856
      Height = 250
      Align = alClient
      Caption = '[ Instru'#231#245'es: ]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object DBMemo1: TDBMemo
        Left = 2
        Top = 15
        Width = 238
        Height = 192
        Align = alLeft
        DataField = 'COMPOSICAO'
        DataSource = BaseDados_PCP.ds_etiquetas
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object GroupBox4: TGroupBox
        Left = 240
        Top = 15
        Width = 614
        Height = 192
        Align = alClient
        Caption = 'Grade de Composi'#231#227'o'
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 610
          Height = 175
          Align = alClient
          DataSource = BaseDados_PCP.ds_etiquetasDetalhes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEnter = DBGrid1Enter
          OnKeyPress = DBGrid1KeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'COMPOSICAO'
              Title.Caption = 'Descri'#231#227'o:'
              Width = 478
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PERCENTUAL'
              Title.Caption = 'Percentual (%):'
              Width = 91
              Visible = True
            end>
        end
      end
      object Panel1: TPanel
        Left = 2
        Top = 207
        Width = 852
        Height = 41
        Align = alBottom
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 2
        object DBEdit1: TDBEdit
          Left = 463
          Top = 6
          Width = 65
          Height = 21
          CharCase = ecUpperCase
          Color = 14811135
          Ctl3D = True
          DataField = 'TOTAL'
          DataSource = BaseDados_PCP.ds_etiquetas
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object GroupBox3: TGroupBox
      Left = 2
      Top = 15
      Width = 856
      Height = 64
      Align = alTop
      TabOrder = 1
      object Label3: TLabel
        Left = 87
        Top = 15
        Width = 51
        Height = 13
        Caption = 'Descri'#231#227'o:'
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
        Width = 450
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOME'
        DataSource = BaseDados_PCP.ds_etiquetas
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
        Color = 14811135
        DataField = 'CODIGO'
        DataSource = BaseDados_PCP.ds_etiquetas
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 400
    Width = 860
    Height = 62
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 400
    ExplicitWidth = 860
    ExplicitHeight = 62
    inherited PanelBotoesBottom: TPanel
      Width = 850
      Height = 56
      ExplicitWidth = 850
      ExplicitHeight = 56
      inherited SpbAdicionar: TSpeedButton
        Left = -44
        Height = 52
        ExplicitLeft = -44
        ExplicitHeight = 52
      end
      inherited SpbEditar: TSpeedButton
        Left = 156
        Height = 52
        ExplicitLeft = 156
        ExplicitHeight = 52
      end
      inherited SpbCancelar: TSpeedButton
        Left = 256
        Height = 52
        ExplicitLeft = 256
        ExplicitHeight = 52
      end
      inherited SpbSalvar: TSpeedButton
        Left = 56
        Height = 52
        ExplicitLeft = 56
        ExplicitHeight = 52
      end
      inherited SpbExcluir: TSpeedButton
        Left = 356
        Height = 52
        ExplicitLeft = 356
        ExplicitHeight = 52
      end
      inherited SpbImprimir: TSpeedButton
        Left = 556
        Height = 52
        ExplicitLeft = 556
        ExplicitHeight = 52
      end
      inherited SpbSair: TSpeedButton
        Left = 746
        Height = 52
        ExplicitLeft = 746
        ExplicitHeight = 52
      end
      inherited SpbExtra: TSpeedButton
        Left = 656
        Height = 52
        ExplicitLeft = 656
        ExplicitHeight = 52
      end
      inherited SpbProcurar: TSpeedButton
        Left = 456
        Height = 52
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 456
        ExplicitHeight = 52
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
    Color = 16024898
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    ExplicitWidth = 860
    ExplicitHeight = 45
    inherited Image3: TImage
      Width = 860
      Height = 45
      ExplicitWidth = 570
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
        Caption = 'Configura'#231#227'o de Etiquetas de Produtos'
        ExplicitWidth = 399
        ExplicitHeight = 37
      end
      inherited Image1: TImage
        Height = 43
      end
      inherited Image2: TImage
        Left = 801
        Height = 37
        ExplicitLeft = 514
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
    DataSource = BaseDados_PCP.ds_etiquetas
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
  object dbEditPesquisar: TIDBEditDialog
    Left = 457
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
      'SELECT * FROM CAD_ETIQUETAS'
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
        DisplayWidth = 70
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'TOTAL'
        WhereSyntax = 'TOTAL'
        DisplayLabel = 'COMPOSI'#199#195'O:'
        DisplayFormat = '###,##0%'
        DisplayWidth = 20
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
