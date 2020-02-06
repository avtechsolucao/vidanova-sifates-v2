object FrmGradeTamanhos: TFrmGradeTamanhos
  Left = 0
  Top = 1
  Caption = 'Grade'
  ClientHeight = 560
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
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 69
    Width = 860
    Height = 430
    Align = alClient
    TabOrder = 0
    object pgCtrlGradeTamanhos: TPageControl
      Left = 2
      Top = 15
      Width = 856
      Height = 413
      ActivePage = TabRegistros
      Align = alClient
      TabOrder = 0
      object TabRegistros: TTabSheet
        Caption = 'Registros'
        object cxGrid: TcxGrid
          Left = 0
          Top = 0
          Width = 848
          Height = 385
          Align = alClient
          TabOrder = 0
          object cxGridDados: TcxGridDBTableView
            OnDblClick = cxGridDadosDblClick
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = BaseDados_PCP.ds_Grade
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
              DataBinding.FieldName = 'DESCRICAO'
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
          Width = 848
          Height = 385
          Align = alClient
          TabOrder = 0
          object GroupBox4: TGroupBox
            Left = 2
            Top = 79
            Width = 844
            Height = 304
            Align = alClient
            Caption = 'Grade de Tamanhos'
            TabOrder = 0
            object DBGrid1: TDBGrid
              Left = 2
              Top = 15
              Width = 840
              Height = 287
              Align = alClient
              DataSource = BaseDados_PCP.ds_GradeLista
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
              OnKeyDown = DBGrid1KeyDown
              OnKeyPress = DBGrid1KeyPress
              Columns = <
                item
                  Expanded = False
                  FieldName = 'TAMANHO'
                  Title.Caption = 'Tamanho:'
                  Visible = True
                end
                item
                  Color = 14811135
                  Expanded = False
                  FieldName = 'Nometamanho'
                  Title.Caption = 'Descri'#231#227'o:'
                  Width = 434
                  Visible = True
                end>
            end
          end
          object GroupBox2: TGroupBox
            Left = 2
            Top = 15
            Width = 844
            Height = 64
            Align = alTop
            TabOrder = 1
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
              Width = 450
              Height = 21
              CharCase = ecUpperCase
              DataField = 'DESCRICAO'
              DataSource = BaseDados_PCP.ds_Grade
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
              DataSource = BaseDados_PCP.ds_Grade
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object DBCheckBox1: TDBCheckBox
              Left = 543
              Top = 30
              Width = 61
              Height = 17
              AllowGrayed = True
              Caption = 'Ativado'
              DataField = 'STATUS'
              DataSource = BaseDados_PCP.ds_Grade
              TabOrder = 2
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
        end
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 499
    Width = 860
    Height = 61
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 499
    ExplicitWidth = 860
    ExplicitHeight = 61
    inherited PanelBotoesBottom: TPanel
      Width = 850
      Height = 55
      ExplicitWidth = 850
      ExplicitHeight = 55
      inherited SpbAdicionar: TSpeedButton
        Left = -44
        Height = 51
        ExplicitLeft = -44
        ExplicitHeight = 51
      end
      inherited SpbEditar: TSpeedButton
        Left = 156
        Height = 51
        ExplicitLeft = 156
        ExplicitHeight = 51
      end
      inherited SpbCancelar: TSpeedButton
        Left = 256
        Height = 51
        ExplicitLeft = 256
        ExplicitHeight = 51
      end
      inherited SpbSalvar: TSpeedButton
        Left = 56
        Height = 51
        ExplicitLeft = 56
        ExplicitHeight = 51
      end
      inherited SpbExcluir: TSpeedButton
        Left = 356
        Height = 51
        ExplicitLeft = 356
        ExplicitHeight = 51
      end
      inherited SpbImprimir: TSpeedButton
        Left = 556
        Height = 51
        ExplicitLeft = 556
        ExplicitHeight = 51
      end
      inherited SpbSair: TSpeedButton
        Left = 746
        Height = 51
        ExplicitLeft = 746
        ExplicitHeight = 51
      end
      inherited SpbExtra: TSpeedButton
        Left = 656
        Height = 51
        ExplicitLeft = 656
        ExplicitHeight = 51
      end
      inherited SpbProcurar: TSpeedButton
        Left = 456
        Height = 51
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 456
        ExplicitHeight = 51
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
    Color = 14120960
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    ExplicitWidth = 860
    ExplicitHeight = 45
    inherited Image3: TImage
      Width = 860
      Height = 45
      ExplicitWidth = 669
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
        Caption = 'Montar Grade de Tamanhos'
        ExplicitWidth = 284
        ExplicitHeight = 33
      end
      inherited Image1: TImage
        Height = 43
      end
      inherited Image2: TImage
        Left = 801
        Height = 37
        ExplicitLeft = 613
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
    DataSource = BaseDados_PCP.ds_Grade
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
      'SELECT * FROM CAD_GRADE'
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
  object dbEditPesquisarTamanho: TIDBEditDialog
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
    TabOrder = 5
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
      'SELECT * FROM CAD_TAMANHOS'
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
        FieldName = 'TAMANHO'
        WhereSyntax = 'TAMANHO'
        DisplayLabel = 'TAMANHO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'DESCRICAO'
        WhereSyntax = 'DESCRICAO'
        DisplayLabel = 'DESCRI'#199#195'O:'
        DisplayWidth = 80
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
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 55293
      TextColor = clBlack
    end
  end
end
