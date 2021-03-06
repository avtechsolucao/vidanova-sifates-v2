object FrmCrudSimples: TFrmCrudSimples
  Left = 241
  Top = 113
  Caption = 'Titulo da tela'
  ClientHeight = 438
  ClientWidth = 930
  Color = clBtnFace
  Constraints.MinHeight = 465
  Constraints.MinWidth = 940
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 930
    Height = 33
    Align = alTop
    Constraints.MinHeight = 33
    Color = 14120960
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    ExplicitWidth = 930
    ExplicitHeight = 33
    inherited Image3: TImage
      Width = 930
      Height = 33
      ExplicitTop = 33
      ExplicitWidth = 930
    end
    inherited pnTitulo: TPanel
      Width = 930
      Height = 33
      Constraints.MinHeight = 33
      ExplicitWidth = 930
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 787
        Height = 25
        Caption = 'Titulo'
        ExplicitWidth = 58
        ExplicitHeight = 33
      end
      inherited Image1: TImage
        Height = 31
        ExplicitLeft = 874
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 871
        Height = 25
        ExplicitLeft = 568
        ExplicitHeight = 31
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 378
    Width = 930
    Height = 60
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 378
    ExplicitWidth = 930
    inherited PanelBotoesBottom: TPanel
      Width = 920
      ExplicitWidth = 920
      inherited SpbAdicionar: TSpeedButton
        Left = 26
        OnClick = FrmFrameBotoes1SpbAdicionarClick
        ExplicitLeft = 26
      end
      inherited SpbEditar: TSpeedButton
        Left = 226
        OnClick = FrmFrameBotoes1SpbEditarClick
        ExplicitLeft = 226
      end
      inherited SpbCancelar: TSpeedButton
        Left = 326
        OnClick = FrmFrameBotoes1SpbCancelarClick
        ExplicitLeft = 326
      end
      inherited SpbSalvar: TSpeedButton
        Left = 126
        OnClick = FrmFrameBotoes1SpbSalvarClick
        ExplicitLeft = 126
      end
      inherited SpbExcluir: TSpeedButton
        Left = 426
        OnClick = FrmFrameBotoes1SpbExcluirClick
        ExplicitLeft = 426
      end
      inherited SpbImprimir: TSpeedButton
        Left = 626
        ExplicitLeft = 626
      end
      inherited SpbSair: TSpeedButton
        Left = 816
        OnClick = FrmFrameBotoes1SpbSairClick
        ExplicitLeft = 816
      end
      inherited SpbExtra: TSpeedButton
        Left = 726
        ExplicitLeft = 726
      end
      inherited SpbProcurar: TSpeedButton
        Left = 526
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 526
      end
    end
  end
  object dbEditPesquisar: TIDBEditDialog
    Left = 457
    Top = 6
    Width = 75
    Height = 23
    Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
    HelpKeyWord = ''
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    ShowHint = True
    TabOrder = 2
    Text = ''
    Visible = False
    EmptyText = 'Tecle F8'
    LabelCaption = 'Label'
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
    SQLdbRetornoVazio = '***'
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM <NOMETABELA>'
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
  object pgControl: TPageControl
    Left = 0
    Top = 33
    Width = 930
    Height = 345
    ActivePage = tabDetalhe
    Align = alClient
    TabOrder = 3
    OnChanging = pgControlChanging
    object tabPrincipal: TTabSheet
      Caption = 'Principal'
      OnShow = tabPrincipalShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 922
        Height = 315
        Align = alClient
        TabOrder = 0
        object cxGrid: TcxGrid
          Left = 2
          Top = 17
          Width = 918
          Height = 296
          Align = alClient
          TabOrder = 0
          object cxGridDados: TcxGridDBTableView
            OnDblClick = cxGridDadosDblClick
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxGridDadosCustomDrawCell
            DataController.DataSource = dsTabela
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
    end
    object tabDetalhe: TTabSheet
      Caption = 'Detalhes'
      ImageIndex = 1
      OnShow = tabDetalheShow
      object lblCodigo: TLabel
        Left = 13
        Top = 8
        Width = 38
        Height = 15
        Caption = 'C'#243'digo'
        FocusControl = EditCodigo
      end
      object lblNome: TLabel
        Left = 93
        Top = 8
        Width = 34
        Height = 15
        Caption = 'Nome:'
        FocusControl = EditNome
      end
      object EditCodigo: TDBEdit
        Left = 10
        Top = 24
        Width = 74
        Height = 23
        DataField = 'CODIGO'
        DataSource = dsTabela
        Enabled = False
        TabOrder = 0
      end
      object EditNome: TDBEdit
        Left = 93
        Top = 24
        Width = 500
        Height = 23
        CharCase = ecUpperCase
        DataField = 'NOME'
        DataSource = dsTabela
        TabOrder = 1
      end
      object rgStatus: TDBRadioGroup
        Left = 93
        Top = 51
        Width = 500
        Height = 38
        Caption = 'Status'
        Columns = 2
        DataField = 'STATUS'
        DataSource = dsTabela
        Items.Strings = (
          'Ativado'
          'Desativado')
        TabOrder = 2
        Values.Strings = (
          'S'
          'N')
      end
    end
  end
  object dbTabela: TFDQuery
    OnNewRecord = dbTabelaNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM _INFORMAR_TABELA')
    Left = 352
    Top = 240
  end
  object dsTabela: TDataSource
    AutoEdit = False
    DataSet = dbTabela
    Left = 352
    Top = 264
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
